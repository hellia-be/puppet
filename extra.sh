#!/bin/bash

cd ~/git/aur/
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin/
makepkg -si

cd ~
yay -S hyprland-bin grimblast-git waybar-hyprland wlogout swaylock-effects sddm-git nwg-look-bin nordic-theme nvidia-vaapi-driver-git brave-bin xdg-desktop-portal-hyprland-git hyprpicker-git hyprpaper-git catppuccin-gtk-theme-mocha sddm-theme-catppuccin-git catppuccin-cursors-mocha nordvpn-bin libpdfium-nojs megasync miniongg spotify proton-ge-custom-bin vundle wineasio

sudo systemctl enable sddm

reboot