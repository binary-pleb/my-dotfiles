#!/bin/bash

if ! command -v yay > /dev/null; then
	echo "Install yay first!"
    NEED_INSTALL=1
else 
    echo "Good to go. Execute install.sh"
    exit
fi

if [ "$NEED_INSTALL" = "1" ]; then
    echo "installing yay..."
    pushd /tmp > /dev/null
    if git clone https://aur.archlinux.org/yay; then
        cd yay && sudo pacman -S base-devel && makepkg -si
    else
        echo "Failed to clone yay repo"
    fi
    popd > /dev/null
fi
 

