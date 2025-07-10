// The name of our exported RNBO patch
const patchExportURL = "export/random-pattern.export.json";
let note = undefined;

let device, context;
async function setupRNBO() {
    [device, context] = await createRNBODevice(patchExportURL);
    console.log("RNBO Device Created");

    // We can listen to MIDI events from the device, and use them to affect 
    // the sketch
    device.midiEvent.subscribe((event) => {

        let type = event.data[0] & 0xf0; // MIDI event type (three bytes to a MIDI event)
        if (type === 0x90) { // Note On event
            let pitch = event.data[1]; // MIDI pitch
            let velocity = event.data[2]; // MIDI velocity

            // Use the pitch and velocity to affect the sketch
            console.log(`Note On: Pitch ${pitch}, Velocity ${velocity}`);
            note = { pitch, velocity };
        }
    });
}

setupRNBO();

function setup() {
    createCanvas(800, 800);
    colorMode(HSB, 255);
}

function draw() {
    if (mouseIsPressed) {
        if (note) {


            // Use the note's pitch and velocity to set the fill color
            let hue = note.pitch % 12; // Get the pitch in the range of 0-11
            hue = hue * (255 / 12); // Scale to 0-255 for HSB
            fill (hue, 255, 255);
            note = undefined; // Reset note after using it
            ellipse(mouseX, mouseY, 80, 80);
        } 
    } else {
        fill(255, 0, 255, 20);
        rect(0, 0, width, height);
    }

}

function mousePressed() {
    if (device) {
        context.resume();
        const param = device.parametersById.get("run");
        param.value = 1;
    }
}

function mouseReleased() {
    if (device) {
        const param = device.parametersById.get("run");
        param.value = 0;
    }
}
