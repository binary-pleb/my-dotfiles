#!/bin/bash

set -e

echo "Installing required packages..."
yay -S --needed hyprland kitty noctalia

CONFIG_SRC="./hypr"
CONFIG_DEST="$HOME/.config"


echo "Copying dotfiles..."
rm -rf "$CONFIG_DEST/hypr"
cp "hypr"/* "$CONFIG_DEST/"

echo "Done! Log out and select Hyprland from your display manager or run start-hyprland if you're not using one."
