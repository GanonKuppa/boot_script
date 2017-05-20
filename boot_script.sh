#!/bin/bash

source /home/pi/.nvm/nvm.sh

forever start -c python3  /home/pi/BTtoMQTT_python/BTtoMQTT_GAMEPADtoBT.py
forever start /home/pi/umouse_webapp/app.js
forever start /home/pi/gamepad2MQTT-python/gamepad2MQTT.py

