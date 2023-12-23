#!/bin/sh

set -e

# Resize partition to fill available space
echo "Resizing filesystem..."

parted /dev/mmcblk0 resizepart 2 100%
resize2fs /dev/mmcblk0p2

# Install oh my zsh
echo "Installig Oh My Zsh!..."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Append default configuration to .zshrc
echo "Appending .zshrc configuration..."

cat .zshrc_fragment >> .zshrc
rm .zshrc_fragment

echo "Done!"
