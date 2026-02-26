#!/bin/bash

TARGET_DIR="$HOME/Desktop/slop land"
LOG_FILE="$HOME/Desktop/slop-land-deletions.log"
INTERVAL=$((3 * 60 * 60))  # 3 hours in seconds

echo "[deletion] Watching $TARGET_DIR"
echo "[deletion] Deleting every 3 hours"
echo "[deletion] Logging to $LOG_FILE"
echo "----------------------------------------"

while true; do
    if [ -d "$TARGET_DIR" ]; then
        for file in "$TARGET_DIR"/*; do
            [ -e "$file" ] || continue
            rm -rf "$file"
            echo "$(date '+%Y-%m-%d %H:%M:%S') Deleted: $file" >> "$LOG_FILE"
            echo "[deletion] Deleted $file"
        done
    else
        echo "[deletion] Folder not found: $TARGET_DIR"
    fi

    sleep "$INTERVAL"
done
# completley by copilot btw, i am testing it right now