
#include <md5/md5.h>

int sensorPin = A5;
int sensorPin2 = A1;

void setup() {
    Serial.begin(9600);
}

float media = 159;
float volumeMedia = 0;
float volumeMediaDasMedias = 0;
int counter = 0;

void loop() {
    float sensorValue = analogRead(sensorPin);

    media = (media * 20 + sensorValue) / 21.0f;
    float newVolume = abs(sensorValue - media) * 50;
    volumeMedia = (newVolume + volumeMedia * 5) / 6;
    volumeMediaDasMedias = (volumeMedia + volumeMediaDasMedias * 20) / 21;
    counter++;
    if (counter > 1000) {
        counter = 0;
        char buf[50];
        dtostrf(volumeMediaDasMedias, 2, 2, buf);
        strcat(buf, "|");
        dtostrf(max(0, analogRead(sensorPin2) - 430), 2, 2, &buf[strlen(buf)]);

        unsigned char *hash = MD5::make_hash(buf);
        char *md5str = MD5::make_digest(hash, 16);

        char buf2[50] = {0};
        sprintf(buf2, "%s#%s", buf, md5str);

        Serial.println(buf2);
        free(hash);
        free(md5str);
    }
}