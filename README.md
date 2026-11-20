# TippOS

Une distribution Linux de bureau pensée pour **remplacer Windows sur un PC de joueur** :
les jeux, les périphériques et le son doivent marcher du premier coup.

- **Base** : [Bazzite](https://bazzite.gg) (version KDE pour cartes NVIDIA récentes), elle-même construite sur Fedora atomique.
- **Principe** : TippOS ne réinvente pas ce qui marche. Elle part de la base la plus compatible pour le jeu et ajoute sa propre couche.
- **Construction** : l'image est construite et signée automatiquement par GitHub Actions, à partir du modèle [Universal Blue image-template](https://github.com/ublue-os/image-template).

> État : **v0.1, squelette.** L'image ne fait encore presque rien de plus que Bazzite ; elle sert à valider toute la chaîne de fabrication.

## Passer une installation Bazzite existante à TippOS

```bash
sudo bootc switch ghcr.io/tippo-x/tippos:latest
```

## Vérifier la signature d'une image

```bash
cosign verify --key cosign.pub ghcr.io/tippo-x/tippos
```

Licence : Apache-2.0 (voir `LICENSE`).
