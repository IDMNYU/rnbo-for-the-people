import liblo as OSC
from gpiozero import PWMLED
import sys

leds = [PWMLED(2), PWMLED(3), PWMLED(4)]

# set up OSC client - send all messages to port 1234 on the local machine (rnbo runner)
# we need to do this because we need to tell the RNBO patch where to send us messages
try:
    target = OSC.Address(1234)
except OSC.AddressError as err:
    print(err)
    sys.exit()

# set up OSC server - listening on port 4321
try:
    server = OSC.Server(4321)
    print(f"Listening for OSC messages on port {server.port}")
except OSC.ServerError as err:
    print(err)

def handle_light(path, args):
    """Handle incoming OSC messages to control the LEDs."""
    if len(args) != 2:
        print(f"Invalid message on {path}: {args}")
        return
    led_index, led_intensity = args[0], args[1]
    if led_index < 0 or led_index > 2:
        print(f"Invalid LED index: {led_index}")
        return
    leds[led_index].value = led_intensity

def fallback(path, args, types, src):
    print("got unknown message '%s' from '%s'" % (path, src.url))
    print("don't panic - probably just the runner echoing back your changes :)")
    for a, t in zip(args, types):
        print("argument of type '%s': %s" % (t, a))

server.add_method("/rnbo/inst/0/messages/out/light", 'if', handle_light)

# Finally add fallback method for unhandled OSC addrs
server.add_method(None, None, fallback)

# Set up RNBO OSC listener. This tells RNBO to send us messages
OSC.send(target, "/rnbo/listeners/add", f"127.0.0.1:4321")

try:
    while True:
        server.recv(100)        
        
except KeyboardInterrupt:
    print("exiting cleanly...")