#!/bin/bash

ZIPFILE="davinci-complete-deployable.zip"

if [ ! -f "$ZIPFILE" ]; then
    echo "ERROR: $ZIPFILE not found."
    exit 1
fi

echo "Unpacking update..."
unzip -o "$ZIPFILE"

echo "Stopping GUI container..."
docker rm -f davinci-project-server-gui 2>/dev/null

echo "Loading new GUI image..."
docker load -i davinci-gui-image.tar

echo "Restarting GUI container..."
docker run -d \
    --name davinci-project-server-gui \
    -p 8090:8090 \
    --link davinci-postgre \
    davinci-gui-image

echo "Update complete."
