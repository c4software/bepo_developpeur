Disposition de clavier BépoDev
==============================

Fichier xkb de la disposition Bépo modifié pour « améliorer » mon usage du Bépo dans le cadre de mon activité.

![Disposition BépoDev](bepoDev-simplifiee.png)

Utilisation :
-------------

- Créer le chemin ~/.xkb/symbols/
- Déplacer le fichier bepoDev dans ~/.xkb/symbols/
- Appliquer la modification :

´´´
	setxkbmap -I ~/.xkb bepoDev -print | xkbcomp -I~/.xkb - $DISPLAY
´´´
