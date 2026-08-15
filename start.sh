#!/bin/bash

while true; do
    cd Paid-Docker-Bot || exit
    echo "Starting bot..."
    timeout 55m python3 bot.py
    echo "Restarting bot..."
    cd ..
    sleep 3
done
