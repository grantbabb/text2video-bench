#!/bin/bash

if [ -z "$1" ]; then
    echo "Enter command to generate video."
    exit 1
fi

python -u "$1" < /dev/tty