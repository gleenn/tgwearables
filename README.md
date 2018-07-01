# TechnoGecko Wearables


### Compiling with Arduino IDE

Install Arduino IDE and required libraries (Unisparks, FastLED):

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

