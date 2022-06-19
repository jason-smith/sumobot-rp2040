# Mini Sumobot based on the rp2040

Fun, friendly sumobot challenge with family and friends.

## Parts List
**NANO RP2040 CONNECT**
  
  Cheatsheet - https://docs.arduino.cc/tutorials/nano-rp2040-connect/rp2040-01-technical-reference

**Built-in Bluetooth**
  
  Getting started tutorial - https://docs.arduino.cc/tutorials/nano-rp2040-connect/rp2040-ble-device-to-device
  Requires the Arduino BLE Library - https://www.arduino.cc/reference/en/libraries/arduinoble/

**Accelerometer and gyroscope**
  
  Getting started with the LSM6DSOX - https://www.arduino.cc/reference/en/libraries/arduino_lsm6dsox/

**H-Bridge**
  
  DRV8833 Dual H-Bridge Motor Driver by TI - https://www.ti.com/lit/ds/symlink/drv8833.pdf?ts=1655513069854
  uxcell Micro Speed Reduction Motor DC 6V 50RPM
  https://www.amazon.com/gp/product/B0798DFJQC/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1

**Display** 

  MakerFocus 2pcs I2C OLED Display Module 0.91 Inch I2C SSD1306 OLED Display Module
  https://www.amazon.com/dp/B0761LV1SD?ref=ppx_yo2ov_dt_b_product_details&th=1

**Line Tracker**

  OSOYOO Infrared Line Tracking Sensor Module + 7 Pin 25cm Female to Female Jumper Wire, 5-Channel Infrared IR Line Reflection Tracker Sensor 3.3V
  https://www.amazon.com/gp/product/B091BRVBXD/ref=ppx_yo_dt_b_asin_title_o01_s02?ie=UTF8&psc=1

**Battery**

  7.4v 1000mah 2S RC Lipo Battery - https://www.amazon.com/gp/product/B07WFWTCLY/ref=ppx_yo_dt_b_asin_title_o01_s00?ie=UTF8&psc=1

# Setting up the project for VSCode

Helpful Guide: https://medium.com/home-wireless/use-visual-studio-code-for-arduino-2d0cf4c1760b

Extensions required: C/C++, Arduino

In the bottom navigation bar -> select Arduino Nano RP2040 Connect
Select the COM Port
Baudrate to 115200 or 9600
Programmer to CMSIS-DAP

Modify these configs appropiately in -> .vscode.arduino.json
{
    "board": "arduino:mbed_nano:nanorp2040connect",
    "port": "COM6",
    "programmer": "arduino:cmsis-dap",
    "sketch": "rp2040-sumobot\\Sumobot\\Source\\Sumobot.ino",
    "output": "../build"
}

Change VSCode Settings -> c_cpp.intellisenseengine
C_Cpp: Intelli Sense Engine = Tag Parser
C_Cpp: Intelli Sense Engine Fallback = disabled