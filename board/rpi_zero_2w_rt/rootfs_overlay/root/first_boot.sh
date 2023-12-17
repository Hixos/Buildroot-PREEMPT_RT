#!/bin/sh

set -e

# Resize partition to fill available space
echo "Resizing filesystem..."

parted -s /dev/mmcblk0 resizepart 2 100%
resize2fs /dev/mmcblk0p2

# Install oh my zsh
echo "Installig Oh My Zsh!..."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Append default configuration to .zshrc
echo "Appending .zshrc configuration..."

cat <<EOT >> /root/.zshrc
alias b="cd .."
alias z="cd -"
alias c="clear"

function mkc() {
	mkdir $1 && cd $1
}
EOT

echo "Done!"
