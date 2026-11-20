#!/bin/bash
# Recette TippOS : ce qu'on ajoute (ou retire) par-dessus Bazzite.
# v0.1 = « squelette qui marche » : on ne change presque rien, on valide d'abord
# toute la chaîne (recette → build GitHub → registre → signature → démarrage).

set -ouex pipefail

# Copier les fichiers de system_files/ du dépôt dans l'image
cp -avf "/ctx/system_files"/. /

# Rien d'autre pour l'instant : les ajouts et retraits viendront avec le MVP (phase 3).
