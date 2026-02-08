#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./restore.sh <backup-folder>"
    exit 1
fi

BACKUP_DIR="$1"

echo "Stopping containers..."
docker rm -f davinci-project-server-gui 2>/dev/null
docker rm -f davinci-postgre 2>/dev/null

echo "Loading PostgreSQL backup..."
docker load -i "$BACKUP_DIR/postgre-backup.tar"

echo "Loading GUI backup..."
docker load -i "$BACKUP_DIR/gui-backup.tar"

echo "Restoring project folder..."
unzip -o "$BACKUP_DIR/project.zip"

echo "Starting PostgreSQL..."
docker run -d \
    --name davinci-postgre \
    -p 5432:5432 \
    davinci-postgre-backup

echo "Starting GUI..."
docker run -d \
    --name davinci-project-server-gui \
    -p 8090:8090 \
    --link davinci-postgre \
    davinci-gui-backup

echo "Restore complete."
