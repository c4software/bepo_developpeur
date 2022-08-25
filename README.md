# Disposition de clavier Bépo Dev

Fichier xkb et keylayout de la disposition Bépo modifié pour « optimiser » mon usage du Bépo dans le cadre de mon activité le développement.

![Disposition BépoDev](bepoDev-simplifiee.png)

## Modifications apportées

- Passage en accès direct des touches < >.
- ~Déplacement de … pour ne pas les perdres suite au remapping.~ (Suppression dans la version 1.1, réalignement avec le Bépo)
- Remplacement de la touche Verr Maj. par Altgr.
- Déplacement des symboles plus lié au développement ({}, (), []) en accès sur la main droite sur le layer Altgr.
- Inversion du W et du Ç.
- ~Ajout d'un pavé numérique sous la main gauche avec Maj + Altgr (main droite)~ (Suppression dans la version 1.1)
- ~Ajout du point médian (·) sur Altgr + .~ (Suppression sur la version 1.1, réalignement avec le Bépo)

## Utilisation

### X11

#### Installation root

### Automatique

Via le script d'installation disponible dans `linux/install.sh`

### Manuellement

```sh
cd /usr/share/X11/xkb/symbols
sudo wget https://raw.githubusercontent.com/c4software/bepo_developpeur/master/linux/bepoDev
setxkbmap -v bepoDev
```

Pour que la disposition soit disponible dans Gnome (et dans les différents DE). Ajouter dans le fichier `/usr/share/X11/xkb/rules/evdev.xml`

```sudo gedit /usr/share/X11/xkb/rules/evdev.xml```

```xml
<layout>
    <configItem>
        <name>bepoDev</name>
        <shortDescription>bp</shortDescription>
        <description>BepoDev</description>
        <languageList>
            <iso639Id>fra</iso639Id>
        </languageList>
    </configItem>
    <variantList>
    </variantList>
</layout>
```

! Attention une modification incorrecte dans ce fichier entrainera un plantage de Gnome-Shell !

#### Installation non root

```sh
mkdir -p ~/.xkb/symbols/
cd ~/.xkb/symbols/
wget https://github.com/c4software/gnome-shell-xkbswitcher/archive/master.zip
```

### X11, utilisation sans droit root

- Créer le chemin ~/.xkb/symbols/
- Déplacer le fichier bepoDev dans ~/.xkb/symbols/
- Appliquer la modification :

```sh
setxkbmap -I ~/.xkb bepoDev -print | xkbcomp -I$HOME/.xkb - $DISPLAY
```

Ou via l'extension Gnome : [https://github.com/c4software/xkbswitcher](https://github.com/c4software/xkbswitcher)

### OSX

Déplacer le fichier .keylayout dans le dossier `/Library/Keyboard Layouts/`. Déposer dans la disposition dans le dossier global permet de l'avoir des l'écran de login, ainsi que dans les champs de saisie de mot de passe.

⚠️ Attention Safari à l'air de corrompre le fichier .keylayout « le plus simple » c'est de récupérer le fichier avec wget :

```sh
cd /Library/Keyboard\ Layouts
sudo wget https://raw.githubusercontent.com/c4software/bepo_developpeur/master/osx/bepoDev11.keylayout
```
