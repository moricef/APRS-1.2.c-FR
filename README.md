# Référence du protocole APRS en français

Ce dépôt contient la traduction française en LaTeX de la spécification
APRS Protocol Reference.

## Sources anglaises de référence

- **Source de travail** : `prepa_aprs101/APRS12c.pdf` (dernière version non
  officielle, dans le dépôt).
- **Source historique** : `prepa_aprs101/APRS101.PDF` (APRS Protocol Reference
  version 1.0.1, 29 août 2000) — conservée pour archivage mais **obsolète**
  pour le travail de traduction.

La source de travail ne doit jamais être modifiée. Le texte, les tableaux, les
exemples, la structure et la mise en page doivent être contrôlés directement
dans ce PDF. Une extraction textuelle seule ne permet pas de reproduire
correctement la disposition des pages.

## Organisation

- `aprs101-fr.tex` : document principal ;
- `preamble-header.tex` : typographie, en-têtes et pieds de page ;
- `chapters/00-*.tex` : pages liminaires ;
- `chapters/01-*.tex` à `chapters/20-*.tex` : chapitres ;
- `chapters/21-appendices.tex` : annexes ;
- `figures/` : illustrations utilisées par la traduction ;
- `AGENTS.md` : règles impératives de travail ;
- `STATUS.md` : état de la reprise et défauts connus ;
- `CONVENTIONS.md` : conventions typographiques.

## Construction et contrôle

Depuis la racine du dépôt :

```sh
make
```

Le résultat est `aprs12c-fr.pdf`. Les fichiers auxiliaires et le PDF compilé
sont générés et ne doivent pas être modifiés directement.

Pour contrôler le contenu et la mise en page :

```sh
pdftotext -layout prepa_aprs101/APRS12c.pdf prepa_aprs101/aprs12c-layout.txt
pdftotext -layout aprs12c-fr.pdf prepa_aprs101/aprs101-fr.txt
pdftoppm -png -r 144 prepa_aprs101/APRS12c.pdf prepa_aprs101/aprs12c
pdftoppm -png -r 144 aprs12c-fr.pdf prepa_aprs101/aprs101-fr
```

Le contrôle doit porter sur les pages correspondantes, visuellement et phrase
par phrase. Une compilation réussie ne prouve ni la fidélité du texte ni celle
de la mise en page.

Les fichiers de contrôle temporaires ou intermédiaires doivent rester dans
l'arborescence du projet, typiquement `prepa_aprs101/`. Ne pas utiliser
`/tmp` pour les extractions, rendus PNG, scripts ou notes de reprise : ces
fichiers doivent survivre à un redémarrage.

## Reprise par un autre agent

Lire dans cet ordre :

1. `AGENTS.md` ;
2. `STATUS.md` ;
3. `CONVENTIONS.md` ;
4. les portions concernées dans `prepa_aprs101/APRS12c.pdf` ;
5. le fichier français correspondant.

Ne pas supposer que le contenu existant est fidèle. La traduction initiale a
été produite par un modèle qui a résumé ou altéré la source APRS101.PDF. La
nouvelle source APRS12c.pdf peut différer significativement de l'ancienne.
