#!/bin/bash

# Run ./install.sh
# Disposition disponible dans  Settings -> Keyboard -> Keyboard Layouts 

if [[ $EUID -ne 0 ]]; then
   echo "Vous devez être root pour lancer l'installation" 
   exit 1
fi

echo "Installation du bepoDev."
cp bepoDev /usr/share/X11/xkb/symbols/

echo ""
echo "Backup de l'ancien evdev."
cp /usr/share/X11/xkb/rules/evdev.xml evdev.orig.xml

if grep -Fxq "bepoDev" /usr/share/X11/xkb/rules/evdev.xml
then
    echo ""
    echo "Disposition bepoDev déjà installé."
else
    echo ""
    echo "Ajout de la configuration bepoDev dans le fichier de définition des dispositions."
    sed -i 's_<\/layoutList>_<layout>\
        <configItem>\
        <name>bepoDev</name>\
        <shortDescription>bp</shortDescription>\
        <description>BepoDev</description>\
        <languageList>\
            <iso639Id>fra</iso639Id>\
        </languageList>\
        </configItem>\
        <variantList>\
        </variantList>\
    </layout>\
    </layoutList>_g' /usr/share/X11/xkb/rules/evdev.xml
fi
