# DiscoFish Wearables

[![build status](https://gitlab.com/discofish/dfwearables/badges/master/build.svg)](https://gitlab.com/discofish/dfwearables/commits/master)


### Compiling with Arduino IDE

Install Arduino IDE and required libraries (Unisparks, FastLED, Adafruit_NeoPixel):

    Download latest software from https://www.arduino.cc/en/Main/Softwarea
      https://www.arduino.cc/download_handler.php?f=/arduino-1.6.10-linux64.tar.xz
    cd ~
    mv Downloads/arduino-1.6.10-linux64.tar.xz ./
    tar -xf arduino-1.6.10-linux64.tar.xz
    mkdir -p ~/Arduino/libraries
    cd ~/Arduino/libraries
    git clone https://igor_c@bitbucket.org/discofish/dfsparks.git DFSparks
    git clone https://github.com/FastLED/FastLED
    ~/arduino-1.6.10/arduino &
    Open File/Preferences, and add to Additional Boards:
        http://arduino.esp8266.com/stable/package_esp8266com_index.json
    Open Tools/Boards/BoardsManager, search for esp8266, install
    Select Tools/Boards/NodeMCU1.0
    Add yourself to dialout group:
        sudo usermod -a -G dialout igor


To compile:

    ~/arduino-1.6.10/arduino &
    Click menu option: File/Examples/DFSparks/Vest
    Click on the checkmark button to verify
    Select Tools/Ports/ttyUSB0
    Click the Upload button

You can use extras/test-server.py to test how your device
synchronizes with the server.


## Uploading sketches on OSX

(this is generic stuff not specific to DFSparks library)

To upload sketches to ESP8266 board from Arduino IDE on OSX:

	1. Install ESP8266 board. Go to Arduino->Preferences->Settings; Additional board manager URLs
	2. Add http://arduino.esp8266.com/stable/package_esp8266com_index.json
	3. Install ESP8266 board
	4. Install USB to UART drivers. Required drivers seem to be different for different 
	   board flavours. 
	   - For LoLin boards this worked: 
			http://www.codenuke.net/2015/01/nodemcu-install-ch340-usb-to-serial-for-yosemite.html
	   - For noname board I got from Amazon this worked: 
			https://www.silabs.com/products/mcu/Pages/USBtoUARTBridgeVCPDrivers.aspx (/dev/cu.SLAB_USBtoUART)
	5. Use NodeMCU 1.0 (ESP-12E) board and port corresponding to USB driver
	6. Set serial monitor to 115200 baud


### Testing

(use Unisparks demo or test server)