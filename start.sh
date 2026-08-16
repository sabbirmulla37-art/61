cat > start.sh <<'EOF'
#!/bin/bash

cd "$(dirname "$0")" || exit 1

echo "☁️ PrimeCloud 24/7 Supervisor Started"

while true; do
    echo "🟢 Starting PrimeCloud Bot..."
    python3 bot.py

    EXIT_CODE=$?
    echo "🔴 Bot stopped with code: $EXIT_CODE"
    echo "🔄 Restarting in 5 seconds..."
    sleep 5
done
EOF

chmod +x start.sh
