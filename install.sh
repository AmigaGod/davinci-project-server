#!/bin/bash

echo "----------------------------------------"
echo " DaVinci Project Server - Auto Installer"
echo "----------------------------------------"

ZIPFILE="davinci-complete-deployable.zip"

if [ ! -f "$ZIPFILE" ]; then
    echo "ERROR: $ZIPFILE not found."
    exit 1
fi

echo "Unpacking $ZIPFILE ..."
unzip -o "$ZIPFILE"

echo "Checking for Docker..."
if ! command -v docker &> /dev/null
then
    echo "Installing Docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    rm get-docker.sh
else
    echo "Docker already installed."
fi

echo "Loading Docker images..."
docker load -i davinci-gui-image.tar
docker load -i davinci-postgre-image.tar

echo "Starting PostgreSQL container..."
docker rm -f davinci-postgre 2>/dev/null
docker run -d \
    --name davinci-postgre \
    -p 5432:5432 \
    davinci-postgre-image

echo "Starting GUI container..."
docker rm -f davinci-project-server-gui 2>/dev/null
docker run -d \
    --name davinci-project-server-gui \
    -p 8090:8090 \
    --link davinci-postgre \
    davinci-gui-image

echo "----------------------------------------"
echo " Installation Complete!"
echo "----------------------------------------"
echo "Access the server at:"
echo "  http://$(hostname -I | awk '{print $1}'):8090"
echo "----------------------------------------"
