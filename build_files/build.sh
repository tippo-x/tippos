#!/bin/bash
# Recette TippOS : ce qu'on ajoute (ou retire) par-dessus Bazzite.
# v0.1 = « squelette qui marche » : valider toute la chaîne (recette → build → registre → signature → démarrage).
# v0.2 = le PC vérifie lui-même la signature de chaque mise à jour TippOS.

set -ouex pipefail

# Copier les fichiers de system_files/ du dépôt dans l'image
# (dont la clé publique TippOS et la règle « signatures à côté de l'image »).
cp -avf "/ctx/system_files"/. /

# Politique de confiance des images : par défaut, Bazzite accepte n'importe quelle image
# venant d'un registre inconnu. On exige que ghcr.io/tippo-x/tippos soit signée par la clé TippOS,
# sinon le PC refuse la mise à jour (comme Bazzite le fait déjà pour ses propres images).
python3 - <<'PY'
import json
chemin = "/etc/containers/policy.json"
with open(chemin) as f:
    politique = json.load(f)
politique["transports"]["docker"]["ghcr.io/tippo-x/tippos"] = [{
    "type": "sigstoreSigned",
    "keyPath": "/etc/pki/containers/tippos.pub",
    "signedIdentity": {"type": "matchRepository"},
}]
with open(chemin, "w") as f:
    json.dump(politique, f, indent=4)
PY
