#!/bin/bash

# etc-backup.sh
# Backs up /etc into a timestamped archive, keeps only the last 7 backups.

SOURCE_DIR="/etc"
BACKUP_DIR="/root/etc-backups"
KEEP_COUNT=7

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/etc-backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Backup created: $BACKUP_FILE"
else
    echo "Backup failed"
    exit 1
fi

# Keep only the most recent $KEEP_COUNT backups, delete the rest
cd "$BACKUP_DIR" || exit 1
ls -1t etc-backup_*.tar.gz | tail -n +$((KEEP_COUNT + 1)) | xargs -r rm --

echo "Backup complete: $(date)"
