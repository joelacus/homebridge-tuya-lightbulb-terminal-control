# homebridge-tuya-lightbulb-terminal-control
These scripts allow you to control a preconfigured Tuya smart light with the Homebridge API via a Linux terminal.

INSTALL

1) Make sure Homebridge is running in Insecure mode "homebridge -I", and that the light is already connected and working.

2) Run 'get_devices.sh' script to get the 'id' and 'iid's of the smart light.

3) Toggle the light on and off and compare the outputs. Look for 'true' when on, and 'false' when off. The 'iid' on those lines represents power on and off.

4) Do the same for brightness, but this will be an integer (0-100). Take note of the iid.

5) Same again for the hue (0-360) and saturation (0-100). Take note of both iids.

6) Change the id and iids in the scripts accordingly, as well as the IP, PORT, and authorization (homekit number) of your homebridge in the scripts.

7) Copy the scipts into /usr/bin/ to run as a command from the terminal.

8) Done! :D

USAGE

lighton #turns the light on

lightoff #turns the light off

lightbrightness 100 #changes the brightness to 100%, etc

lightcolour 1 100 #changes the colour to red (1) max saturation (100)

lightcolour red #human colour input. red, green, blue, white, orange, yellow, pink, purple

I hope this is useful :)
