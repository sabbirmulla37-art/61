#!/bin/bash

# PrimeCloud 24/7 Bot Supervisor

cd "$(dirname "$0")" || exit 1

LOG_FILE="bot.log"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" >> "$LOG_FILE"
echo "☁️ PrimeCloud Supervisor Started" >> "$LOG_FILE"
echo "📅 $(date)" >> "$LOG_FILE"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" >> "$LOG_FILE"

while true; do
    echo "[$(date)] 🟢 Starting bot..." >> "$LOG_FILE"

    python3 -u bot.py >> "$LOG_FILE" 2>&1

    EXIT_CODE=$?

    echo "[$(date)] 🔴 Bot stopped. Exit code: $EXIT_CODE" >> "$LOG_FILE"
    echo "[$(date)] 🔄 Restarting in 5 seconds..." >> "$LOG_FILE"

    sleep 5
done
