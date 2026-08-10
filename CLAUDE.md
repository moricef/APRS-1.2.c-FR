# Règles impératives pour Claude

Ce projet suit les règles de `AGENTS.md`, `README.md` et `STATUS.md`.

Objectif indépassable :

- Le but du travail est la fidélité au PDF original
  `/home/fab2/Developpement/LoRa_APRS/APRS101.PDF`.
- Le résultat attendu n'est pas un LaTeX simplement compilable, ni un code
  plus propre, ni une amélioration approximative : c'est une reproduction
  française fidèle du contenu, de la structure et de la mise en page de
  l'original.
- Toute modification doit être évaluée d'après son effet réel sur le PDF rendu,
  comparé visuellement et textuellement à l'original. Si le défaut signalé est
  visuel, une modification sans différence visible pertinente ne résout pas le
  problème.

Règle indépassable de validation :

- Ne jamais présenter comme terminé un correctif que l'agent juge lui-même
  insatisfaisant, fragile, bricolé ou seulement provisoire.
- Si le contrôle visuel ou technique montre qu'un rendu reste approximatif,
  l'agent doit soit le corriger avant de conclure, soit déclarer explicitement
  que le travail n'est pas terminé et expliquer le défaut restant.
- Une compilation réussie ou une amélioration partielle ne constitue jamais
  une validation.
- Pour les tableaux et autres éléments typographiques, ne pas livrer un
  compromis local (`raisebox`, règle invisible, ajustement ponctuel, etc.)
  comme solution finale si le rendu n'est pas fidèle à l'original.

Règle de persistance des fichiers de travail :

- Ne pas utiliser `/tmp` pour ce projet.
- Les extractions `pdftotext`, rendus `pdftoppm`, scripts de contrôle, notes
  et fichiers intermédiaires doivent être créés dans l'arborescence du projet,
  typiquement dans `prepa_aprs101/`, afin de rester disponibles après reboot.
