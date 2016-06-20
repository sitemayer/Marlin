#!/usr/bin/env bash

if [ $# -ne 1 ]; then
    echo "Error: Please input only one parameter as arduino install path!"
    echo "And then, you must excute this script like this: . setenv.sh"
else
    ARDUINO_PATH=$1
    AVR_GCC_PATH=${ARDUINO_PATH}/hardware/tools/avr/bin
    AVRDUDE_PATH=${ARDUINO_PATH}/hardware/tools/avr/bin
    AVRDUDE_CONF_PATH=${ARDUINO_PATH}/hardware/tools/avr/etc
    export AVRDUDE_CONF=${AVRDUDE_CONF_PATH}/avrdude.conf
    export PATH=${ARDUINO_PATH}:${AVR_GCC_PATH}:${AVRDUDE_PATH}:${AVRDUDE_CONF_PATH}:$PATH
fi

