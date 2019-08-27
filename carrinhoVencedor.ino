
#include <HardwareSerial.h>
#include <USBAPI.h>
#include <pins_arduino.h>

#define DISTANCE_PER_STEP 0.2f * 0.05f
#define ENCODER_PIN 2
#define MOTORLF_PIN 3
#define MOTORLB_PIN 9
#define MOTORRF_PIN 10
#define MOTORRB_PIN 11

volatile unsigned int steps = 0;
volatile float speed = 0;
float lastSteps = 0;
unsigned long lastSpeedCalcTime = 0;
long totalStepsInput;

float calcSpeed(volatile unsigned long lastTime);

void step();

void setup() {
    Serial.begin(9600);
    while (!Serial) {
        ; // wait for serial port to connect. Needed for native USB port only
    }
    //while (Serial.available() == 0);
    //totalStepsInput = Serial.parseInt();
    totalStepsInput = 1000;

    attachInterrupt(digitalPinToInterrupt(ENCODER_PIN), step, RISING);
    pinMode(MOTORLB_PIN, OUTPUT);
    pinMode(MOTORRB_PIN, OUTPUT);
    pinMode(MOTORLF_PIN, OUTPUT);
    pinMode(MOTORRF_PIN, OUTPUT);
}

float help = 0;

void loop() {
    float force;

    if (steps < 100)
        help += 0.001;
    if (steps < totalStepsInput*.6)
        force = steps / (totalStepsInput*.6) + help;
    else if (steps < totalStepsInput*.7)
        force = 1;
    else if (steps < totalStepsInput*1) {
        force = 1 - (steps - totalStepsInput*.7) / (totalStepsInput*.3);
        if (speed < 0.01)
            force = 0;
    }
    else
        force = 0;

    int iForce = min(255, (int) (force * 255));
    analogWrite(MOTORLF_PIN, iForce);

    digitalWrite(MOTORLB_PIN, 0);
    digitalWrite(MOTORRF_PIN, 0);
    digitalWrite(MOTORRB_PIN, 0);

    Serial.print(steps);
    Serial.print(',');
    Serial.print(iForce * 4);
    Serial.print(',');
    Serial.println(speed);


    if (millis() - lastSpeedCalcTime > 150)
    {
        speed = 1000 * (steps - lastSteps) / (millis() - lastSpeedCalcTime) / 2 + speed / 2;
        lastSteps = steps;
        lastSpeedCalcTime = millis();
    }
    delay(50);
}


void step() {
    steps++;
}
