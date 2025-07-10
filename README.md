# rnbo-for-the-people
All-day RNBO crash course, exporting and so much more

## Outline

- RNBO Fundamentals
- Building a synth
- WASM and p5.js
- Raspberry Pi
- VST and Unreal

## RNBO Knowledge

- Parameters
- MIDI input/output
- Polyphony
- The `set` object

## Web Export

- Export using the web template
- Minimal example using just a slider
- Example using p5
- Example using three.js

The very most basic note playing code:

```js
function mousePressed() {
    if (device) {
        context.resume();
        note = Math.floor(Math.random() * 20) + 50;
        noteOn(device, context, note, 100);
    }
}

function mouseReleased() {
    if (device) {
        noteOff(device, context, note);
    }
}
```

## Raspberry Pi

- OSC and parameter messages
- How to access all of the different parameter paths