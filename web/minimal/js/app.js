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

// Here is where we connect the slider to the RNBO device
document.addEventListener("DOMContentLoaded", () => {
    const slider = document.getElementById("slider");
    if (slider) {
        slider.addEventListener("input", () => {
            if (!device) { return; }

            // Ensure the context is resumed before setting parameters
            if (context.state === "suspended") {
                context.resume().then(() => {
                    console.log("AudioContext resumed");
                });
            }

            // Fetch the parameter using its id
            const param = device.parametersById.get("level");
            if (param) {
                param.value = parseFloat(slider.value);
            }
        });
    } else {
        console.error("Slider or device not found");
    }
});
