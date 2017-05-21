#!/bin/bash

source /home/pi/.nvm/nvm.sh
export NODE_PATH=/home/pi/.nvm/versions/node/v6.10.0/lib/node_modules

forever start -c python3  /home/pi/BTtoMQTT_python/BTtoMQTT_GAMEPADtoBT.py
forever start /home/pi/umouse_webapp/app.js
forever start -c python /home/pi/gamepad2MQTT-python/gamepad2MQTT.py

