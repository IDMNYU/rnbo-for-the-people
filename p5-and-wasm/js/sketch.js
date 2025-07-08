// The name of our exported RNBO patch
const patchExportURL = "export/noise-machine.export.json";
let note = undefined;

let device, context;
async function setupRNBO() {
    [device, context] = await createRNBODevice(patchExportURL);
    console.log("RNBO Device Created");
}

// We can't await here because it's top level, so we have to check later
// if device and context have been assigned
setupRNBO();

function setup() {
    colorMode(HSB, 255);
    createCanvas(800, 800);
}

function draw() {
    if (mouseIsPressed) {
        fill (255);
        ellipse(mouseX, mouseY, 80, 80);
    } else {
        fill(255, 255, 255, 20);
        rect(0, 0, width, height);
    }

}

function mousePressed() {
    if (device) {
        context.resume();
        const param = device.parametersById.get("engaged");
        param.value = 1;
    }
}

function mouseReleased() {
    if (device) {
        const param = device.parametersById.get("engaged");
        param.value = 0;
    }
}
