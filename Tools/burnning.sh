#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo "Please excute this script like this:"
    echo "  |\$./burnning.sh mcu upload_port    | entry commandline mode"
    echo "  |\$./burnning.sh hex mcu upload_port| entry burnning mode"
elif [ $# -eq 2 ]; then
    MCU=$1
    PORT=$2
    avrdude -C $AVRDUDE_CONF -P${PORT} -p${MCU} -c stk500v2 -t
elif [ $# -eq 3 ]; then
    HEX=$1
    MCU=$2
    PORT=$3
    avrdude -D -C $AVRDUDE_CONF -p${MCU} -P${PORT} -c stk500v2 -b115200 -Uflash:w:${HEX}:i
fi
