Disposition de clavier BépoDev
==============================

Fichier xkb de la disposition Bépo modifié pour « améliorer » mon usage du Bépo dans le cadre de mon activité.

![Disposition BépoDev](bepoDev-simplifiee.png)

Modifications :
--------------

- Passage en accès direct des touches < >.
- Déplacement des { } pour les regroupés avec ( ) [ ].
- Création des raccourcis ^C, ^X, ^V sur les touches équivalentes aux raccourcis azerty mais sur le layer Altgr (YEAH).
- Déplacement de « » … pour ne pas les perdres suite au remapping de Contrôle-{X,C,V}.
- Remplacement de la touche Verr Maj. par Altgr.
- Transformation de la toucher Altgr en Verr Altgr (fonctionnement similaire à Verr Maj mais sur le layer Altgr).
- Ajout j k l m sur le layer altgr. 

Utilisation :
-------------

- Créer le chemin ~/.xkb/symbols/
- Déplacer le fichier bepoDev dans ~/.xkb/symbols/
- Appliquer la modification :

```
	setxkbmap -I ~/.xkb bepoDev -print | xkbcomp -I~/.xkb - $DISPLAY
```
