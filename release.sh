#!/bin/bash

echo "----------------------------------------"
echo " DaVinci Project Server - Release Builder"
echo "----------------------------------------"

# Load version
VERSION=$(cat VERSION | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')

RELEASE_DIR="release_$VERSION"
mkdir -p "$RELEASE_DIR"

echo "Creating project source archive..."
zip -r "$RELEASE_DIR/davinci-project-folder.zip" davinci-project-server/

echo "Exporting GUI Docker image..."
docker save -o "$RELEASE_DIR/davinci-gui-image.tar" davinci-gui-image

echo "Exporting PostgreSQL Docker image..."
docker save -o "$RELEASE_DIR/davinci-postgre-image.tar" davinci-postgre-image

echo "Copying scripts..."
cp deploy/install.sh "$RELEASE_DIR/"
cp deploy/update.sh "$RELEASE_DIR/"
cp deploy/uninstall.sh "$RELEASE_DIR/"
cp deploy/backup.sh "$RELEASE_DIR/"
cp deploy/restore.sh "$RELEASE_DIR/"
cp deploy/docker-compose.yml "$RELEASE_DIR/"

echo "Copying documentation..."
cp README.md "$RELEASE_DIR/"
cp LICENSE "$RELEASE_DIR/"
cp COPYRIGHT "$RELEASE_DIR/"
cp docs/setup.txt "$RELEASE_DIR/"
cp docs/troubleshooting.txt "$RELEASE_DIR/"
cp docs/architecture.txt "$RELEASE_DIR/"
cp docs/changelog.txt "$RELEASE_DIR/"
cp CONTRIBUTING "$RELEASE_DIR/"
cp NOTICE "$RELEASE_DIR/"
cp VERSION "$RELEASE_DIR/"

echo "Packaging final deployable ZIP..."
cd "$RELEASE_DIR"
zip -r "../davinci-complete-deployable.zip" .
cd ..

echo "----------------------------------------"
echo " Release package created:"
echo "   davinci-complete-deployable.zip"
echo " Version: $VERSION"
echo "----------------------------------------"
