# Référence du protocole APRS en français

Ce dépôt contient la traduction française en LaTeX de la spécification
`APRS Protocol Reference — Protocol Version 1.0`, document version 1.0.1 du
29 août 2000.

## Source anglaise de référence

La source normative unique est :

`/home/fab2/Developpement/LoRa_APRS/APRS101.PDF`

Elle se trouve hors de ce dépôt et ne doit jamais être modifiée. Le texte, les
tableaux, les exemples, la structure et la mise en page doivent être contrôlés
directement dans ce PDF. Une extraction textuelle seule ne permet pas de
reproduire correctement la disposition des pages.

## Organisation

- `aprs101-fr.tex` : document principal ;
- `preamble-header.tex` : typographie, en-têtes et pieds de page ;
- `chapters/00-*.tex` : pages liminaires ;
- `chapters/01-*.tex` à `chapters/20-*.tex` : chapitres ;
- `chapters/21-appendices.tex` : annexes ;
- `figures/` : illustrations utilisées par la traduction ;
- `AGENTS.md` : règles impératives de travail ;
- `STATUS.md` : état de la reprise et défauts connus.

## Construction et contrôle

Depuis la racine du dépôt :

```sh
make
```

Le résultat est `aprs101-fr.pdf`. Les fichiers auxiliaires et le PDF compilé
sont générés et ne doivent pas être modifiés directement.

Pour contrôler le contenu et la mise en page :

```sh
pdftotext -layout ../APRS101.PDF prepa_aprs101/aprs101-original.txt
pdftotext -layout aprs101-fr.pdf prepa_aprs101/aprs101-fr.txt
pdftoppm -png -r 144 ../APRS101.PDF prepa_aprs101/aprs101-original
pdftoppm -png -r 144 aprs101-fr.pdf prepa_aprs101/aprs101-fr
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
3. la portion anglaise concernée dans `APRS101.PDF` ;
4. le fichier français correspondant.

Ne pas supposer que le contenu existant est fidèle. Plusieurs chapitres ont été
produits par un modèle qui a résumé ou altéré la source malgré les consignes.
