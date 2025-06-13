#!/bin/bash

sudo dnf update -y

mkdir ~/.config
mkdir ~/.ayt
curl -O https://<my-forgejo-instance>.ca/<name>/<repo>/releases/v1.1.0/myapplication.zip
mv myapplication.zip ~/.ayt
mv ./bg.jpg ~/.config

sudo dnf install -y sddm bspwm sxhkd kitty rofi polybar picom thunar nitrogen lxpolkit
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo dnf install -y ./rpm-packages/ocs-url-3.1.0-1.fc20.x86_64.rpm

sudo dnf install -y fontawesome-fonts fontawesome-fonts-web
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip -d /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
unzip Meslo.zip -d /usr/share/fonts

fc-cache -vf
rm ./FiraCode.zip ./Meslo.zip

sudo systemctl enable sddm
sudo systemctl set-default graphical.target
