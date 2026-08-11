# Règles impératives du projet

Avant toute intervention, lire également `README.md`, `STATUS.md` et
`CONVENTIONS.md`. Le premier décrit les sources et la construction du
document ; le deuxième indique ce qui a été contrôlé, les défauts connus et le
point exact de reprise ; le troisième fixe les conventions typographiques
relevées dans les chapitres validés (filets, fonds gris, alignements,
surlignage, environnements) et la liste des motifs interdits.

Ce fichier fixe la méthode, `CONVENTIONS.md` fixe la matière. Un chapitre qui
réinvente ses propres réglages de tableau est un chapitre à refaire.

## Source de référence

- Le document de référence est `prepa_aprs101/APRS12c.pdf` (dernière version
  non officielle). L'ancien `APRS101.PDF` (version 1.0.1, 2000) est obsolète.
- Le projet français est `/home/fab2/Developpement/LoRa_APRS/aprs101-fr`.
- Le PDF original ne doit jamais être modifié.
- En cas de doute, vérifier directement le texte et la page correspondante dans l'original. Ne jamais compléter de mémoire.

## Autorisation de modification

- Ne modifier aucun fichier et n'appliquer aucun correctif sans l'aval explicite de l'utilisateur.
- Une demande impérative de modification constitue un aval pour cette modification seulement.
- Le mot `validé` signifie que la proposition qui le précède doit être appliquée immédiatement. Ce n'est pas un simple accusé de réception.
- Ne jamais étendre l'aval à d'autres chapitres, fichiers, corrections ou refactorisations.
- Ne jamais retoucher une partie déjà validée sauf demande explicite.

## Fidélité du contenu

- Traduire phrase par phrase et paragraphe par paragraphe depuis l'anglais original.
- Interdiction absolue de résumer, condenser, raccourcir, élaguer, fusionner, réorganiser ou omettre du contenu.
- Interdiction d'ajouter une explication, une interprétation ou une information absente de l'original.
- Chaque phrase, liste, note, exemple, légende, renvoi, avertissement et élément de tableau de l'original doit avoir son équivalent français.
- Conserver strictement les indicatifs, trames APRS, valeurs, formules, identifiants, caractères ASCII littéraux et exemples de protocole.
- Conserver les termes techniques anglais lorsqu'une traduction française serait impropre ou modifierait leur sens.
- Une demande de formatage ne donne jamais l'autorisation de modifier, raccourcir ou reformuler le texte.

## Fidélité de la structure et de la mise en page

- Reproduire la structure de l'original : ordre, niveaux de titres, paragraphes, listes, tableaux, colonnes, filets, fonds, légendes, notes et sauts de page.
- Ne pas transformer un paragraphe en liste, une liste en paragraphe, plusieurs tableaux en un seul, ni un tableau en texte libre.
- Respecter la casse, l'alignement, les marges, les espacements, les polices, les tailles relatives, les en-têtes, les pieds de page et la pagination demandés.
- Chaque chapitre et chaque annexe commence sur la page correspondant à la structure de l'original.
- Ne jamais inventer une mise en page plus moderne, plus compacte ou jugée plus lisible.
- Si le français occupe davantage de place, ajuster uniquement les paramètres typographiques conformes au modèle ; ne jamais gagner de la place en supprimant du texte.

## Méthode obligatoire

1. Lire la portion anglaise originale et la portion LaTeX française correspondante.
2. Comparer leur contenu complet avant toute proposition de correction.
3. Distinguer explicitement omission, traduction incorrecte et écart de mise en page.
4. Attendre l'aval de l'utilisateur si la modification n'a pas déjà été demandée explicitement.
5. Appliquer uniquement la correction autorisée, avec un diff aussi limité que possible.
6. Compiler avec `make` depuis la racine du projet.
7. Rendre les pages originales et françaises correspondantes en images et les examiner visuellement.
8. Vérifier qu'aucun texte ne manque, ne se chevauche, ne déborde et qu'aucun changement collatéral n'a été introduit.

## Validation

- Une compilation réussie ne suffit pas.
- Ne jamais annoncer une reproduction fidèle sans comparaison textuelle et visuelle avec l'original.
- Ne jamais présenter comme terminé un correctif que l'agent juge lui-même
  insatisfaisant, fragile, bricolé ou seulement provisoire. Si le contrôle
  visuel ou technique montre qu'un rendu reste approximatif, l'agent doit soit
  le corriger avant de conclure, soit déclarer explicitement que le travail
  n'est pas terminé et expliquer le défaut restant. Un état seulement
  compilable ne constitue jamais une validation.
- Signaler exactement ce qui a été vérifié et ce qui ne l'a pas encore été.
- Ne jamais certifier l'ensemble du document après n'avoir contrôlé qu'un chapitre ou quelques pages.
- Les avertissements LaTeX concernant la zone modifiée doivent être examinés ; ne pas les masquer.

## Outils et Git

- Utiliser `pdftotext` pour le contrôle du contenu et `pdftoppm` pour le contrôle visuel.
- Ne pas utiliser `/tmp` pour les extractions, rendus PNG, scripts, notes ou
  fichiers intermédiaires du travail APRS101. Tous les artefacts de contrôle
  doivent rester dans l'arborescence du projet, typiquement dans
  `prepa_aprs101/`, afin de survivre à un redémarrage.
- Éviter les scripts de réécriture globale. Toute transformation mécanique étendue exige un aval explicite.
- Ne pas modifier les fichiers générés par LuaLaTeX.
- Examiner `git diff` avant de conclure une modification.
- Ne pas committer sans demande explicite de l'utilisateur.
- Ne jamais annuler ou réécrire une modification de l'utilisateur.

## Communication

- Rester factuel et concis.
- Ne pas remplacer l'action demandée par une liste de ce qu'il faudrait faire.
- Après aval, agir puis rendre compte du résultat concret.
- Ne pas ajouter de commentaires sur les détails internes sans utilité pour l'utilisateur.
