# TippOS

Une distribution Linux de bureau pensée pour **remplacer Windows sur un PC de joueur** :
les jeux, les périphériques et le son doivent marcher du premier coup.

- **Base** : [Bazzite](https://bazzite.gg) (version KDE pour cartes NVIDIA récentes), elle-même construite sur Fedora atomique.
- **Principe** : TippOS ne réinvente pas ce qui marche. Elle part de la base la plus compatible pour le jeu et ajoute sa propre couche.
- **Construction** : l'image est construite et signée automatiquement par GitHub Actions, à partir du modèle [Universal Blue image-template](https://github.com/ublue-os/image-template).

> État : **v0.2.** Encore très proche de Bazzite. Nouveauté : un système TippOS vérifie la signature de chaque mise à jour TippOS et refuse une image non signée par la clé du projet.

## Installer TippOS

Il n'y a pas encore d'ISO TippOS. Installer Bazzite avec son ISO officielle (variante NVIDIA, KDE), puis basculer sur TippOS :

```bash
sudo bootc switch ghcr.io/tippo-x/tippos:latest
```

## Vérifier la signature d'une image

```bash
cosign verify --key cosign.pub ghcr.io/tippo-x/tippos
```

Licence : Apache-2.0 (voir `LICENSE`).
