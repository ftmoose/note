#!/bin/bash

# Deploy script for note CLI tool

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_DIR="/usr/local/bin"
SOURCE_FILE="$SCRIPT_DIR/note"
TARGET_FILE="$INSTALL_DIR/note"

# Copy the note script to the installation directory (requires sudo)
sudo cp "$SOURCE_FILE" "$TARGET_FILE"
sudo chmod +x "$TARGET_FILE"

echo "✓ note installed to $TARGET_FILE"
echo ""
echo "You can now use 'note' from anywhere!"
