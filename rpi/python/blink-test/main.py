from time import sleep
from gpiozero import LED

[led0, led1, led2] = [LED(2), LED(3), LED(4)]

# led0.on()

counter = 0

while True:

    if counter & 1:
        led0.on()
    else:
        led0.off()
    if counter & 2:
        led1.on()
    else:
        led1.off()
    if counter & 4:
        led2.on()
    else:
        led2.off()

    sleep(0.5)

    counter += 1
    counter %= 8
