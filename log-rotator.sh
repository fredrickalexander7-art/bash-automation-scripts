#!/bin/bash

# log-rotator.sh
# Compresses log files older than $ROTATE_DAYS, archives them,
# and deletes archives older than $DELETE_DAYS.

LOG_DIR="$HOME/test-logs"
ARCHIVE_DIR="$HOME/test-logs/archive"
ROTATE_DAYS=7
DELETE_DAYS=30

mkdir -p "$ARCHIVE_DIR"

# Step 1: Find and compress log files older than ROTATE_DAYS
find "$LOG_DIR" -maxdepth 1 -name "*.log" -mtime +$ROTATE_DAYS -type f | while read -r logfile; do
    filename=$(basename "$logfile")
    timestamp=$(date +%Y%m%d)
    tar -czf "$ARCHIVE_DIR/${filename}_${timestamp}.tar.gz" -C "$LOG_DIR" "$filename"

    if [ $? -eq 0 ]; then
        echo "Archived: $filename"
        rm "$logfile"
    else
        echo "Failed to archive: $filename"
    fi
done

# Step 2: Delete archives older than DELETE_DAYS
find "$ARCHIVE_DIR" -name "*.tar.gz" -mtime +$DELETE_DAYS -type f -delete

echo "Log rotation complete: $(date)"
