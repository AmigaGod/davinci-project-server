#!/bin/bash

echo "Stopping containers..."
docker rm -f davinci-project-server-gui 2>/dev/null
docker rm -f davinci-postgre 2>/dev/null

echo "Removing images..."
docker rmi davinci-gui-image 2>/dev/null
docker rmi davinci-postgre-image 2>/dev/null

echo "Cleanup complete."
