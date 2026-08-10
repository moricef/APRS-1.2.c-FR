# Conventions typographiques du projet

Fiche de référence pour toute personne ou agent qui reprend un chapitre.
Les valeurs ci-dessous sont **relevées dans les chapitres déjà validés**
(3 à 7), pas inventées. Les reprendre telles quelles : un chapitre qui
réinvente ses propres réglages est un chapitre à refaire.

`AGENTS.md` fixe la méthode (ne pas résumer, obtenir l'aval, vérifier).
Ce fichier-ci fixe la matière. Les deux s'appliquent.

---

## 1. Structure d'un chapitre

L'original place les intertitres **dans la marge gauche**, pas dans le flux.
Trois environnements sont définis dans `aprs101-fr.tex` :

| Environnement | Usage |
|---|---|
| `aprssideblock{Libellé}` | Bloc de texte avec libellé en marge. C'est le cas normal. |
| `aprsbodyblock` | Bloc de texte **sans** libellé, aligné sur la même colonne. |
| `aprsexample` | Bloc d'exemples indenté (lignes `092345z   correspond à…`). |

Squelette type :

```latex
\begin{aprssideblock}{Libellé en\\deux lignes}
\phantomsection\addcontentsline{toc}{section}{Libellé en deux lignes}\label{ancre}
Texte du paragraphe, qui commence immédiatement après le \label.
\end{aprssideblock}
```

**Pas de ligne vide entre le `\label{}` et la première ligne de texte.** Une
ligne vide y crée un saut de paragraphe : le libellé se retrouve seul dans son
propre paragraphe et ne s'aligne plus sur la première ligne du corps. Ce défaut
a été corrigé dans les chapitres 1, 2, 3 et les pages liminaires.

Le libellé se coupe avec `\\`, en respectant la coupure de l'original.

Dans `aprsexample`, la macro `\exgap` (= `\hspace{1.4em}`) sépare l'exemple
littéral de sa description.

## 2. Interdits

Ces motifs sont des résidus de la conversion pandoc initiale ou des inventions
du modèle précédent. Aucun ne figure dans l'original :

- `\section*{}` et `\section{}` — remplacer par `aprssideblock` ;
- `longtable` généré par pandoc, reconnaissable à `\real{0.0833}` dans les
  largeurs et à `\begin{minipage}[b]` dans les en-têtes ;
- `\rule{0.5\linewidth}{0.5pt}` en fin de chapitre (filet décoratif) ;
- `\newpage` forcé — il fige la pagination et casse tout en amont ;
- en-têtes de colonnes inventés (par ex. `Sentence | Signification` ajouté à
  une simple liste indentée) ;
- listes à puces fabriquées à partir de paragraphes de l'original.

## 3. Surlignage `\lit{}`

L'original surligne en jaune les caractères littéraux du protocole. La macro
est `\lit{...}` (définie dans `aprs101-fr.tex`, jaune `RGB 255,255,0`, police
à chasse fixe).

Sont surlignés : les identifiants de type de données (`!`, `=`, `/`, `@`, `|`,
`~`…), les préfixes de format (`PHG`, `RNG`, `DFS`), les séparateurs
significatifs (le `/` de `CSE/SPD`, `DIR/SPD`, `/BRG/NRQ`), les valeurs
littérales citées (`000/000`, `.../...`), les lettres de champ (`N`, `S`,
`E`, `W`), les codes (`p`, `h`, `g`, `d`) et les exposants correspondants.

**Cas particulier de l'espace.** Là où l'original montre un espace transmis
(ambiguïté de position, course/speed inconnus), il affiche un **glyphe espace
surligné**, pas la lettre `V`. L'extraction `pdftotext` le rend en `V`, ce qui
a déjà produit deux erreurs de protocole dans le document. Écrire `\lit{~}`
pour un espace, `\lit{~~~/~~~}` pour trois espaces / trois espaces.

Ordre de grandeur constaté : 27 à 35 `\lit` par chapitre dense en protocole.
Un chapitre de ce type avec zéro `\lit` est suspect.

## 4. Tableaux

### Réglages selon le type

| Type de tableau | Police | `tabcolsep` | `arraystretch` | `arrayrulewidth` |
|---|---|---|---|---|
| Grand tableau de données | `\small` | 4 pt | 1,3 à 1,4 | 0,75 pt |
| Tableau dense (codes, identifiants) | `\footnotesize` | 4 pt | 1,75 | 0,75 pt |
| Tableau de codes en `\sffamily` | `\fontsize{8.5}{10}` | 3,5–4 pt | 1,40–1,70 | 0,60–1 pt |
| Diagramme de trame | `\scriptsize` | 2 pt | 1,75 | défaut |

`\arrayrulewidth` de référence : **0,75 pt**, mesuré à ~0,72 pt dans
l'original. Éviter 0,60 pt : à cette valeur le filet tombe exactement entre
deux largeurs de pixel et bascule de 2 à 3 px selon la position et le zoom.

### Fonds gris

Le gris est `gray!20`. Trois usages, dans cet ordre de préférence :

- `>{\columncolor{gray!20}}` dans le préambule de colonne — **à privilégier**
  pour une colonne entière (colonne d'identifiants, colonne de libellés) ;
- `\rowcolor{gray!20}` pour la ligne d'en-tête ;
- `\cellcolor{gray!20}` seulement pour une cellule isolée.

**Ne pas utiliser `\cellcolor` sur la première colonne.** Le panneau de couleur
déborde de `\tabcolsep` vers la gauche et recouvre le filet de bord : le
tableau perd son trait vertical gauche. C'est arrivé sur les tableaux Q du
chapitre 7. Utiliser `\columncolor`, et si le filet doit être garanti,
`!{\vrule width 1pt}` au lieu de `|`.

Ce que l'original grise, à reproduire : la ligne d'en-tête, la première colonne
sur **toute** sa hauteur (pas en alternance), et la colonne `Units`.

### Alignements

- Colonne d'identifiants : centrée, `>{\columncolor{gray!20}\centering\arraybackslash}`.
- Colonne de libellés de ligne : alignée **à droite**, en gras, centrée
  verticalement — `>{\columncolor{gray!20}\raggedleft\arraybackslash\bfseries}m{...}`.
- Colonnes de données : alignées à gauche et **calées en haut** dans l'original.
- En-têtes de colonnes : centrés, `\bfseries\itshape`.

**Piège connu, non résolu.** `m{}` ne centre pas verticalement quand les autres
colonnes sont en `p{}` : une colonne `p{}` cale sa première ligne sur la ligne
de base et envoie tout le surplus en profondeur, si bien que `m{}`, qui centre
sur l'axe, remonte en haut. Passer les trois colonnes en `m{}` centre le
libellé mais centre aussi les données, ce qui n'est pas conforme.
`tabularray` en `Q[m]`, `valign=m` et `\SetCell{m}` a été testé : aucune des
trois variantes ne centre. Le grand tableau du chapitre 5 est dans cet état
non conforme. Piste non testée : imbriquer les colonnes 2 et 3 dans un
`tabular` interne non aligné.

### Cellules sur deux lignes

Utiliser `\shortstack{45\\NE}` — l'original empile la valeur et la lettre dans
une même cellule (ligne `Directivity` des tableaux PHG et DFS).

## 5. Mise en page globale

Réglée une fois pour toutes dans `aprs101-fr.tex`, à ne pas retoucher par
chapitre :

- classe `extreport` en **10 pt**. Ne pas descendre en dessous : mesure du
  9 août sur la page 43, identique dans les deux documents — l'original place
  268 mots et un interligne de 19 pt, la version française à 9 pt en plaçait
  411 avec un interligne de 17 pt, soit 53 % de contenu en plus par page. Le
  chapitre 10 passait alors en 12 pages au lieu de 15. À 10 pt il retombe
  exactement sur les 15 pages de l'original. Si un chapitre repris compte
  moins de pages que son équivalent anglais, la cause est presque toujours là.
  (`report` ignore silencieusement une option de taille autre que 10/11/12 pt,
  d'où `extreport`.)
- `\RaggedRight` — l'original n'est pas justifié ;
- `\raggedbottom` — l'original ne justifie pas verticalement ; sans cela LaTeX
  étire les blancs entre paragraphes pour remplir la page ;
- `footskip=56pt`, `headsep=28pt` ;
- titre de chapitre : `\huge`, format `[hang]`, `\raggedright`, césure désactivée ;
- `\tightlist` redéfini avec `itemsep = 0.6\baselineskip`.

**Ne jamais poser un `\titlespacing*{\chapter}` local dans un fichier de
chapitre.** Un réglage de ce type laissé au chapitre 4 s'appliquait
silencieusement à tous les chapitres suivants.

## 6. Contrôle avant de déclarer un chapitre fait

1. `make` depuis la racine, zéro erreur.
2. Compter les avertissements overfull/underfull dans la zone du chapitre.
3. Comparer le nombre de pages au chapitre original.
4. Rendre les pages originales et françaises et les regarder **côte à côte**.
5. Vérifier la première et la dernière phrase du chapitre contre l'original.

Fichiers de travail dans `prepa_aprs101/`, jamais `/tmp` (règle `CLAUDE.md`).
Les extractions `APRS101-layout.txt` et `aprs101-original-full.txt` y sont
déjà : les réutiliser au lieu de relancer `pdftotext`.

Pour juger un filet ou un fond, mesurer les pixels du filet lui-même. Des
abscisses déduites de `pdftotext` donnent des conclusions fausses.
