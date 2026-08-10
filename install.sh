#!/bin/bash

set -e

echo "Installing required packages..."
sudo pacman -S --needed grim slurp satty nemo ttf-jetbrains-mono-nerd base-devel kitty firefox hyprland && yay -S --needed noctalia

CONFIG_SRC="./hypr"
CONFIG_DEST="$HOME/.config"


echo "Copying dotfiles..."
rm -rf "$CONFIG_DEST/hypr"
mkdir -p "$CONFIG_DEST/hypr"
cp "hypr"/* "$CONFIG_DEST/hypr"

if [ ! -d "$CONFIG_DEST/kitty" ]; then
    mkdir -p "$CONFIG_DEST/kitty"
fi

rm -rf "$CONFIG_DEST/kitty"
mkdir -p "$CONFIG_DEST/kitty"
cp "kitty"/* "$CONFIG_DEST/kitty"

rm -rf "$CONFIG_DEST/noctalia"
mv "noctalia" "$CONFIG_DEST/"

echo "Done! Log out and select Hyprland from your display manager or run start-hyprland if you're not using one."
