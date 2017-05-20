#!/bin/bash

rfcomm bind /dev/rfcomm1 00:80:E1:B2:C0:BB

mosquitto -d -c /etc/mosquitto/mosquitto.conf



