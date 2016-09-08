#! /bin/bash

ARDUINO_PORT=/dev/ttyACM0
ARDUINO_SPEED=9600

# Set speed for usb
stty -F $ARDUINO_PORT ispeed $ARDUINO_SPEED ospeed $ARDUINO_SPEED raw
exec 6<$ARDUINO_PORT

# Read data from Arduino
while read -u 6 f ;do

     # Remove trailing carriage return character added
     # by println to satisfy stupid MS-DOS Computers
     f=${f:0:${#f} - 1}
     if [ $f == "1" ]; then
      echo "Button Pressed" | sendmail [ recipient email address ]
      echo "Button pressed, sending email."
     fi
done