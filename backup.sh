#!/bin/bash

BACKUP_DIR="backup_$(date +%Y-%m-%d_%H-%M-%S)"
mkdir "$BACKUP_DIR"

echo "Saving PostgreSQL container..."
docker commit davinci-postgre davinci-postgre-backup
docker save -o "$BACKUP_DIR/postgre-backup.tar" davinci-postgre-backup

echo "Saving GUI container..."
docker commit davinci-project-server-gui davinci-gui-backup
docker save -o "$BACKUP_DIR/gui-backup.tar" davinci-gui-backup

echo "Saving project folder..."
zip -r "$BACKUP_DIR/project.zip" davinci-project-server/

echo "Backup created in $BACKUP_DIR"
