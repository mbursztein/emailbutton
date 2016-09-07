# Email Button
A Raspberry Pi + Arduino system that sends an email when a button on the Arduino is pressed.
A shell script listens for Arduino's button over USB (Serial) and sends an email when the button is pressed.

### What you'll need
- An Arduino board, bread board, LED, button
- A Raspberry Pi connected to the Internet
- A Gmail account

### How to build it
1. Wire Arduino with a button connected to digital pin 2, and an LED on digital pin 3 ([See a picture](https://github.com/mbursztein/emailbutton/blob/master/arduino-emailbutton.jpg))
2. Connect Arduino to Raspberry Pi via USB
3. Install the Arduino IDE on the Raspberry Pi ([Video instructions](https://www.youtube.com/watch?v=mfIacE-SPvg))
4. Install ssmtp on Raspberry Pi to send email
```sh
$ sudo apt-get install ssmtp
```
5. Configure ssmtp to use a Gmail account by adding [these settings](https://github.com/mbursztein/emailbutton/blob/master/ssmtp.conf) to ssmtp.conf
```sh
$ sudo nano /etc/ssmtp/ssmtp.conf
```
5. Load [emailbutton.ino](https://github.com/mbursztein/emailbutton/blob/master/emailbutton.ino) (this is the Arduino program or "Sketch") onto the Arduino
6. Save the Shell Script [emailbutton.sh](https://github.com/mbursztein/emailbutton/blob/master/emailbutton.sh) to the /bin/ directory on the Raspberry Pi
7. Change permissions on emailbutton.sh with:
```sh
$ sudo chmod 755 emailbutton.sh
```
8. Run the program:
```sh
$ emailbutton.sh
```
9. Push the button on the Arduino and check your email!