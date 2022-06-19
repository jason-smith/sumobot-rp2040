#include <DRV8833.h>
#include <ArduinoBLE.h>
#include <Arduino_LSM6DSOX.h>

DRV8833 driver = DRV8833();

// Set DC motor pinout
const int inputA1 = 5, inputA2 = 6, inputB1 = 9, inputB2 = 10;


void setup() 
{
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(115200);
  while (!Serial);
  
  // initialize the BLE hardware
  BLE.begin();
  Serial.println("BLE Central - LED control");

  // start scanning for Button Device BLE peripherals
  BLE.scanForUuid("19b10000-e8f2-537e-4f6c-d104768a1214");

  // Attach the motors to the input pins:
  driver.attachMotorA(inputA1, inputA2);
  driver.attachMotorB(inputB1, inputB2);
  Serial.println("Ready!");
}

void loop() 
{
  // Motor Test Code!
  Serial.println("Forward:");
  // Put the motors in forward:
  driver.motorAForward();
  driver.motorBForward();
  // Wait to see the effect:
  delay(2000);
  
  // Pause the motors for stability:
  driver.motorAStop();
  driver.motorBStop();
  
  Serial.println("Reverse:");
  // Put the motors in reverse:
  driver.motorAReverse();
  driver.motorBReverse();
  // Wait to see the effect:
  delay(2000);
  
  Serial.println("Stop:");
  // Stop the motors:
  driver.motorAStop();
  driver.motorBStop();
  // Wait to see the effect:
  delay(2000);
  Serial.println("Done!");

  while (1);
}
