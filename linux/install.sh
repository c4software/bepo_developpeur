#!/bin/bash

mkdir -p ~/.config/xkb/symbols
mkdir -p ~/.config/xkb/rules

cd ~/.config/xkb/symbols
wget https://raw.githubusercontent.com/c4software/bepo_developpeur/master/linux/bepoDev

cd ~/.config/xkb/rules
wget https://raw.githubusercontent.com/c4software/bepo_developpeur/master/linux/evdev.lst
wget https://raw.githubusercontent.com/c4software/bepo_developpeur/master/linux/evdev.xml

cd ~/.config/xkb/rules
ln -s evdev.lst base.lst
ln -s evdev.xml base.xml

echo "Pour finaliser l'installation, déconnectez-vous puis reconnectez-vous."