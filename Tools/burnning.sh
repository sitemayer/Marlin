#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo "Please excute this script like this:"
    echo "  \$./burnning.sh hex mcu upload_port"
else
    HEX=$1
    MCU=$2
    PORT=$3
    avrdude -D -C $AVRDUDE_CONF -p${MCU} -P${PORT} -cwiring -b115200 -Uflash:w:${HEX}:i
fi

