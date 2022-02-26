# X52 slider has a bit of jiggle from a low quality component
# this is essentially a debounce script that maps the slider to a virtual joystick

range = 1000  # maximum range of input
deadzone = 16  # deadzone relative to "range" above. With my X-52 slider, the granularity was 8, so at 16 this gives 2 units of deadzone.
input = joystick[0].sliders[0]  # Change this to whatever joystick and axis is your slider

if starting:
	deadzone_start = 0
	
if input > (deadzone_start + deadzone):
	deadzone_start = input - deadzone
elif input < deadzone_start:
	deadzone_start = input
	
output = (deadzone_start + deadzone / 2)

vJoy[0].slider = output

diagnostics.watch(deadzone_start)
diagnostics.watch(output)
diagnostics.watch(input)
