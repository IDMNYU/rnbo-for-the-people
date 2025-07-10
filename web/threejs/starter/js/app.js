// Scene setup
const scene = new THREE.Scene();
const camera = new THREE.OrthographicCamera(-1, 1, 1, -1, 0, 1);
const renderer = new THREE.WebGLRenderer();
renderer.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderer.domElement);

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

// Interaction
renderer.domElement.addEventListener('pointermove', (event) => {
    const mouseX = (event.clientX / window.innerWidth) * 2 - 1;
    const mouseY = -(event.clientY / window.innerHeight) * 2 + 1;
    material.uniforms.u_m1.value = mouseX;
    material.uniforms.u_m2.value = mouseY;
});

// Animation loop
function animate() {
    requestAnimationFrame(animate);
    
    // Update time uniform
    material.uniforms.u_time.value = performance.now() * 0.001;
    
    renderer.render(scene, camera);
}

animate();

// Handle window resize
window.addEventListener('resize', () => {
    renderer.setSize(window.innerWidth, window.innerHeight);
    material.uniforms.u_resolution.value.set(window.innerWidth, window.innerHeight);
});