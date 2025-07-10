// Scene setup
const scene = new THREE.Scene();
const camera = new THREE.OrthographicCamera(-1, 1, 1, -1, 0, 1);
const renderer = new THREE.WebGLRenderer();
renderer.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderer.domElement);

// Setup RNBO
// The name of our exported RNBO patch
const patchExportURL = "export/simple-looper.export.json";
let note = undefined;
let time_scale = 0.2;

let device, context;
async function setupRNBO() {
    [device, context] = await createRNBODevice(patchExportURL);
    console.log("RNBO Device Created");

    // Load any dependencies we might have
    const dependenciesResponse = await fetch("export/dependencies.json");
    dependencies = await dependenciesResponse.json();

    // Prepend "export" to any file dependenciies
    dependencies = dependencies.map(d => d.file ? Object.assign({}, d, { file: "export/" + d.file }) : d);

    // Load the dependencies into the RNBO device if we have them
    if (dependencies.length) {
        await device.loadDataBufferDependencies(dependencies);
    }

    // Add some interaction—listen to RNBO parameter changes and adjust shader uniforms accordingly
    // here, the type of the value is dependent on the type of the parameter
    const param = device.parametersById.get("envelope");
    param.changeEvent.subscribe((value) => {
        material.uniforms.u_m1.value = value; 
    });
}

setupRNBO();

// Shader material
const material = new THREE.ShaderMaterial({
    uniforms: {
        u_time: { value: 0.0 },
        u_m1: { value: 0.0 }, // Mouse X position
        u_m2: { value: 0.0 }, // Mouse Y position
        u_resolution: { value: new THREE.Vector2(window.innerWidth, window.innerHeight) }
    },
    vertexShader: `
        void main() {
            gl_Position = vec4(position, 1.0);
        }
    `,
    fragmentShader: `
        /* This animation is the material of my first youtube tutorial about creative 
            coding, which is a video in which I try to introduce programmers to GLSL 
            and to the wonderful world of shaders, while also trying to share my recent 
            passion for this community.
                                                Video URL: https://youtu.be/f4s1h2YETNY
        */

        uniform float u_time;
        uniform float u_m1;
        uniform float u_m2;
        uniform vec2 u_resolution;

        //https://iquilezles.org/articles/palettes/
        vec3 palette( float t ) {
            vec3 a = vec3(0.5, 0.5, 0.5);
            vec3 b = vec3(0.5, 0.5, 0.5);
            vec3 c = vec3(1.0, 1.0, 1.0);
            vec3 d = vec3(0.263,0.416,0.557);

            return a + b*cos( 6.28318*(c*t+d) );
        }

        //https://www.shadertoy.com/view/mtyGWy
        void main( ) {
            vec2 uv = (gl_FragCoord.xy * 2.0 - u_resolution.xy) / u_resolution.y;
            vec2 uv0 = uv;
            vec3 finalColor = vec3(0.0);
            
            for (float i = 0.0; i < 4.0; i++) {
                uv = fract(uv * 1.5 * (u_m1 + 1.0)) - 0.5;

                float d = length(uv) * exp(-length(uv0));

                vec3 col = palette(length(uv0) + i*.4 + u_time*.4);

                d = sin(d*14. * (u_m2 + 1.0) + u_time)/8.;
                d = abs(d);

                d = pow(0.01 / d, 1.2);

                finalColor += col * d;
            }
                
            gl_FragColor = vec4(finalColor, 1.0);
        }
    `
});

// Fullscreen quad
const geometry = new THREE.PlaneGeometry(2, 2);
const mesh = new THREE.Mesh(geometry, material);
scene.add(mesh);

renderer.domElement.addEventListener('pointerdown', (event) => {
    if (device) {
        context.resume();
        const param = device.parametersById.get("run");
        param.value = 1; // Start the RNBO patch
    }
});

renderer.domElement.addEventListener('pointerup', (event) => {
    if (device) {
        const param = device.parametersById.get("run");
        param.value = 0; // Stop the RNBO patch
    }
});

// Animation loop
function animate() {
    requestAnimationFrame(animate);
    
    // Update time uniform
    material.uniforms.u_time.value += 0.02 * time_scale;
    
    renderer.render(scene, camera);
}

animate();

// Handle window resize
window.addEventListener('resize', () => {
    renderer.setSize(window.innerWidth, window.innerHeight);
    material.uniforms.u_resolution.value.set(window.innerWidth, window.innerHeight);
});