# État de la traduction et point de reprise

## ⚠ Nouvelle source — 9 août 2026

La source de référence passe de `APRS101.PDF` (APRS Protocol Reference 1.0.1,
29 août 2000) à **`prepa_aprs101/APRS12c.pdf`** (dernière version non
officielle).

**Tout le travail antérieur est à revérifier.** Les chapitres 1 à 10 avaient
été restaurés phrase par phrase contre APRS101.PDF ; ils doivent être
recontrôlés contre APRS12c.pdf. Les chapitres 11 à 21 et les annexes
n'avaient pas encore été audités.

L'historique détaillé ci-dessous (sections « Travail déjà effectué »,
« Chapitre 5 », « Chapitre 6 », « Point de reprise », « Carte des dégâts »)
documente ce qui a été fait sur l'ancienne source et reste valable comme
référence de méthode. Le contenu lui-même doit être revérifié.

Avant toute reprise :
1. Extraire `prepa_aprs101/APRS12c.pdf` avec `pdftotext -layout` dans
   `prepa_aprs101/aprs12c-layout.txt`.
2. Relever la structure : nombre de chapitres, pagination, table des matières.
3. Comparer avec `prepa_aprs101/APRS101-layout.txt` (ancienne source).

---

## Historique (source APRS101.PDF, août 2026)

## État général

Le projet compile et contient une traduction de toutes les parties du document,
mais cette présence ne signifie pas que la traduction est complète ou fidèle.
Une partie du contenu hérité a été condensée, reformulée ou mise en page sans
respecter l'original. Aucun chapitre non contrôlé phrase par phrase ne doit être
considéré comme validé.

Le dépôt Git a été initialisé sur la branche `main`. Le commit de référence
actuel est :

`627a4be Initial import of French APRS protocol reference`

`AGENTS.md`, `README.md` et ce fichier décrivent la reprise, mais ne doivent pas
être commités sans demande explicite de l'utilisateur.

## Travail déjà effectué

Les éléments suivants ont été travaillés au cours de la session précédente :

- pages liminaires, pagination romaine et début de la pagination arabe ;
- en-têtes et pieds de page alternés, logo APRS et typographie générale ;
- table des matières et casse de son titre ;
- démarrage des chapitres et annexes sur une nouvelle page ;
- chapitres 1 à 4, avec reprises de contenu et de mise en page ;
- tableau du format de trame AX.25 au chapitre 3 ;
- tableaux SSID du chapitre 4 ;
- plusieurs tableaux et exemples des chapitres suivants ;
- annexe 7 répartie sur trois tableaux/pages ;
- chapitre 5, restauré intégralement (voir ci-dessous) ;
- chapitre 6, restauré intégralement (voir ci-dessous).

Les chapitres 4, 5 et 6 ont fait l'objet d'une comparaison textuelle
complète avec l'original et d'une restauration phrase par phrase. Les autres
éléments de la liste ont été travaillés, mais ne doivent pas être déclarés
intégralement conformes sans un nouveau contrôle systématique.

## Chapitre 5 : restauré et contrôlé

Fichier français : `chapters/05-info-field.tex`. Pages imprimées de
l'original : 17 à 21.

Corrections appliquées lors de cette session :

- passage de `\section*{}` à la structure `aprssideblock`/`aprsbodyblock`
  utilisée dans les chapitres 3 et 4, pour restituer les six libellés en
  marge (`Generic Data Format`, `APRS Data Type Identifier`, `APRS Data and
  Data Extension`, `Comment Field`, `Base-91 Notation`, `APRS Data Units`),
  conformes à la table des matières originale ;
- ajout du tableau encadré `Generic APRS Information Field` (absent) ;
- correction de l'identifiant littéral `|` (codé à tort `\|`) dans le tableau
  des DTI, et correction de la note TM-D700 tronquée ;
- séparation des deux notes DTI en deux paragraphes distincts (elles étaient
  fusionnées en une liste à tirets) ;
- restauration intégrale du tableau `Possible APRS Data` /
  `Possible APRS Data Extension` : suppression de `Wind Direction and Speed`
  attribué à tort à `Objects and Items`, retrait des extensions parasites de
  la ligne `Weather`, restauration des six extensions de `Responses`
  (supprimées et remplacées par `---`), et dénominations complètes au lieu
  des abréviations (`PHG`, `PCR Range`, etc.) ;
- restauration des titres complets de chapitre dans les renvois du
  `Comment Field` (au lieu du seul numéro) ;
- ajout de la phrase finale manquante de `Base-91 Notation` (calcul des
  quatre codes ASCII) ;
- restitution intégrale et non condensée de `Comment Field`, `Base-91
  Notation` et `APRS Data Units`.

Compilé avec `make`, contrôlé phrase par phrase par comparaison avec
`pdftotext -layout` et visuellement par rendu `pdftoppm` des pages
correspondantes. Le chapitre occupe désormais 6 pages imprimées (17 à 22)
contre 5 dans l'original ; le contenu de chaque page correspond à son
équivalent anglais (le texte français est structurellement plus long, ce que
`AGENTS.md` autorise explicitement). Aucun avertissement LaTeX significatif
(overfull/underfull) ne subsiste dans la zone du chapitre.

## Chapitre 6 : restauré et contrôlé

Fichier français : `chapters/06-time-position.tex`. Pages imprimées de
l'original : 22 à 26.

Erreurs techniques corrigées :

- le caractère d'ambiguïté de position était la **lettre `V`** (`4903.5VN`,
  `49VV.VVN`…) alors que l'original transmet un **espace** (glyphe espace
  surligné) ; remplacé par `\lit{~}` ;
- exemple Maidenhead corrompu : `IO91SX/(` → `IO91SX/-` ;
- « generally (but not necessarily) fixed stations » : la nuance
  « (mais pas nécessairement) » avait été supprimée.

Omissions restaurées : phrase « Times can be expressed in zulu (UTC/GMT) or
local time », phrase d'introduction du rectangle englobant, les trois
marqueurs « Note : », les gloses parenthétiques (« i.e. degrees, minutes and
hundredths of a minute north/west », « i.e. reports that do not contain
station position information », « as above », « in this case indicating use
of the Primary Symbol Table »), les qualificatifs perdus (« fixed
8-character / 9-character field », « stand-alone », « display Symbol Table
Identifier », « navigation equipment such as », « in the location field »,
« if required », « indeterminate »), et les titres de chapitres dans les
renvois (chapitre 20 : Symboles APRS, chapitre 10 : Format de données Mic-E).

Reformulations corrigées : la paraphrase inventée « la vision "émission =
maintenant" côté récepteur », la notation `JJHHMM` inventée, les heures
reformatées (« 2345 hours » → « 23:45 »), l'ajout « différé » dans le tableau
des DTI.

Mise en page rétablie : les dix intertitres passent de `\section{}` aux
libellés en marge `aprssideblock` conformes à l'original et aux chapitres 1
à 5 ; les paragraphes convertis en listes à puces sont redevenus des
paragraphes ; le rectangle englobant retrouve ses quatre lignes alignées ; la
section Altitude retrouve sa liste de deux puces suivie de deux paragraphes
distincts ; l'en-tête inventé `Sentence | Signification` du tableau NMEA est
supprimé (simple liste indentée comme l'original) ; le filet décoratif final,
absent de l'original, est retiré.

Environnement `aprsexample` et macro `\exgap` ajoutés dans `aprs101-fr.tex`
pour les blocs d'exemples indentés de l'original.

Compilé avec `make`, contrôlé phrase par phrase (`pdftotext -layout`) et
visuellement page par page (`pdftoppm`). Le chapitre occupe 4 pages imprimées
(20 à 23) contre 5 dans l'original, sans perte de contenu.

## Travail restant

1. Auditer chaque chapitre 7 à 20, puis toutes les annexes, sans faire
   confiance au seul fait que du texte français existe déjà.
2. Pour chaque chapitre, relever séparément les omissions, les traductions
   incorrectes, les erreurs techniques et les écarts de mise en page.
3. Obtenir l'aval de l'utilisateur avant chaque correction qui n'a pas déjà été
   explicitement demandée.
4. Compiler, rendre les pages originales et françaises en images, puis vérifier
   visuellement tableaux, filets, fonds, marges, débordements et pagination.
5. Effectuer à la fin un contrôle global de complétude et de cohérence de la
   table des matières, des renvois, des en-têtes, des pieds de page et des pages.

## Problèmes rencontrés à ne pas reproduire

- Résumer un texte technique au lieu de le traduire.
- Présenter une reformulation comme une traduction fidèle.
- Supprimer du contenu pour faire tenir la traduction dans moins de pages.
- Modifier une partie déjà validée pendant une correction locale.
- Transformer la structure originale d'un tableau pour faciliter le LaTeX.
- Déduire la mise en page depuis `pdftotext` sans regarder les pages originales.
- Déclarer un chapitre conforme après une simple compilation.
- Appliquer une correction supplémentaire sans aval.

Les règles détaillées et impératives figurent dans `AGENTS.md`.

## Point de reprise au 9 août 2026

État réel, vérifié :

- **Chapitre 5 — NON terminé.** Le grand tableau `Possible APRS Data` a ses
  trois colonnes en `m{}` : les libellés de gauche sont bien centrés, mais les
  colonnes de données sont centrées verticalement alors que l'original les cale
  en haut. Pistes déjà écartées par la mesure : `m{}` avec colonnes `p{}` (les
  `p{}` calent la 1re ligne sur la ligne de base, le surplus part en profondeur,
  `m{}` centre sur l'axe → le libellé remonte en haut) ; `tabularray` en
  `Q[m]`, `valign=m` et `\SetCell{m}` (trois variantes testées, aucune ne
  centre). Piste non testée : table imbriquée (colonnes 2+3 dans un `tabular`
  interne non aligné, donc centré comme boîte et remplissant la ligne).
- **Chapitre 6 — terminé et contrôlé.**
- **Chapitre 7 — restauré**, contenu vérifié phrase par phrase contre les pages
  27 à 31 de l'original. Restent :
  - `VVV/VVV` en lettres littérales (3 occurrences) — l'original transmet des
    **espaces surlignés** ; à remplacer par `\lit{~~~/~~~}` ;
  - surlignage `\lit` manquant : `000/000`, `.../...`, le `/` de `CSE/SPD` et
    `DIR/SPD` (liste à puces et corps), les préfixes `PHG`/`RNG`/`DFS`, les
    codes `p h g d` et les exposants des formules, les `/` de `/BRG/NRQ` ;
  - 4 `\newpage` forcés qui figent la pagination.
  - Tableaux Q : filets portés à 1 pt le 9 août (bord gauche invisible avant,
    `\cellcolor` remplacé par `\columncolor`). `phgd`/`shgd` volontairement
    laissés à 0,60 pt.
- **Chapitres 8 à 20 et annexes : non audités.**

Rappels de méthode coûteux à réapprendre :

- Fichiers de travail dans `prepa_aprs101/`, jamais `/tmp` (règle `CLAUDE.md`) —
  les rendus y sont déjà, les réutiliser au lieu de régénérer.
- Pour juger un filet ou un fond, mesurer les pixels du filet lui-même, pas des
  abscisses déduites de `pdftotext`. Vérifier avant d'annoncer.

## Carte des dégâts restants (relevé du 9 août 2026)

Relevé par grep des signatures pandoc. Colonnes : occurrences de
`\real{0.` ou `minipage}[b]` (= longtable pandoc brut), `\section*`,
`\rule{0.5\linewidth}` (filet décoratif absent de l'original), `VVV`,
`\lit{`, `aprssideblock`.

- **Aucun `aprssideblock` des chapitres 08 à 21** : la structure en libellés
  de marge reste entièrement à faire sur 14 fichiers.
- **Encore en sortie pandoc brute** : `08-position-df-reports` (50 occurrences
  + 7 `\section*`, le plus abîmé), `09-compressed-position` (32 + 11),
  `10-mic-e` (16, et zéro `\lit` sur 341 lignes — suspect pour un chapitre
  plein de caractères de protocole). Plus marginalement `15-queries` (10) et
  `20-symbols` (4).
- **Filet décoratif final dans 14 fichiers**, dont `01-introduction` et
  `00-front-matter` pourtant réputés repris. Correction triviale en batch.
- **`VVV` résiduels** : `12-weather` (1), `21-appendices` (2). Le chapitre 7
  est propre.

Ordre d'attaque suggéré :

1. Batch : les 14 `\rule{0.5\linewidth}` + les 3 `VVV` restants.
2. Les courts, presque gratuits : `16-status` (69 l.), `17-tunneling` (94),
   `18-user-defined` (38), `19-other-packets` (28).
3. Le gros œuvre : chapitres 08, 09, 10.
4. `21-appendices` (888 lignes) en dernier.

Méthode retenue pour la suite : **séparer les passes**. Fidélité du texte sur
tous les chapitres d'abord ; typographie fine (surlignages, filets,
alignements verticaux) en une seule passe finale sur tout le document. C'est
le mélange des deux qui a fait dérailler la session du 9 août.

## Audit APRS12c — 11 août 2026

Comparaison systématique de `APRS12c.pdf` (157 pages) avec les fichiers
français actuels. Colonnes : pages dans la VO, lignes dans le `.tex`,
occurrences de motifs pandoc (`\real{}`, `minipage[b]`), nombre de libellés
en marge (`aprssideblock`).

| Fichier | Pages VO | Lignes | Pandoc | Sideblk | Statut |
|---|---|---|---|---|---|
| `00-front-matter` | 1–4 | 315 | 0 | 14 | **Revu 11/08** |
| `00-foreword` | 3–5 | 47 | 0 | — | **Revu 11/08** |
| `01-introduction` | 6–7 | 119 | 0 | 4 | À vérifier |
| `02-design-philosophy` | 8–11 | 165 | 0 | 8 | À vérifier |
| `03-aprs-and-ax25` | 12–14 | 76 | 0 | 6 | À vérifier |
| `04-dest-source` | 15–19 | 266 | 0 | 18 | **Revu 13/08** |
| `05-info-field` | 17–23 | 398 | 0 | 12 | **Revu 13/08** |
| `06-time-position` | 22–27 | 310 | 0 | 20 | **Revu 13/08** |
| `07-data-extensions` | 27–31 | 362 | 0 | 16 | **Revu 13/08** |
| `08-position-df-reports` | 32–35 | 380 | 0 | 4 | **Revu 13/08** |
| `09-compressed-position` | 36–41 | 517 | 0 | 22 | **Revu 13/08** |
| `10-mic-e` | 42–56 | 1015 | 0 | 48 | À vérifier |
| `11-objects-items` | 57–61 | 212 | 0 | 0 | **Non audité** |
| `12-weather` | 62–67 | 235 | 0 | 0 | **Non audité** |
| `13-telemetry` | 68–70 | 152 | 0 | 0 | **Non audité** |
| `14-messages` | 71–76 | 171 | 0 | 0 | **Non audité** |
| `15-queries` | 77–79 | 138 | 10 | 0 | **Non audité** |
| `16-status` | 80–82 | 68 | 0 | 0 | **Non audité** |
| `17-tunneling` | 83–86 | 93 | 0 | 0 | **Non audité** |
| `18-user-defined` | — | 37 | 0 | 0 | À remplacer (ch18 APRS12c) |
| `19-other-packets` | 99 | 27 | 0 | 0 | À vérifier |
| `20-symbols` | 100–103 | 139 | 4 | 0 | **Non audité** |
| `21-appendices` | 105–127 | 889 | 0 | 0 | **À réécrire** |

### Vérification APRS12c — 13 août 2026

Chapitres 4, 5, 6, 7, 8 et 9 revérifiés contre APRS12c, section par section.

- **Ch4** : ajout de la section « Alternate Nets », note d'obsolescence de
  l'adresse « APRS », et les deux notes d'édition APRS12c (« Peut-on supprimer
  ceci… », « Hein ? Peut-on développer ou simplifier ? ») rendues en rouge
  comme l'original.
- **Ch5** : ajout de la section « APRS Precision and Datum Option » (`!DAO!`),
  compléments au Comment Field et aux APRS Data Units, simplification du
  premier tableau (libellé « Octets : » sorti du tableau).
- **Ch6** : ajout des trois sous-sections d'ambiguïté, correction WPT→WPL,
  altitude « exactement 6 chiffres » + valeurs négatives, et filet supérieur
  du tableau DTI restauré (`\cline` → `\hhline{~--}`, sinon masqué par
  `\cellcolor`).
- **Ch7** : ajout de la section « Sondes PHGR » (`PHGR "probes"`), ligne
  « meters » et unité « dBi » dans le tableau PHG, exemple de hauteur en km,
  « Pour plus de détails : The Importance of PHG Range Circles & APRS Mobile
  Range », et compléments Bearing/NRQ (zone d'intérêt, QUALITÉ/BEAMWIDTH,
  renvoi DF.TXT/PROTOCOL.TXT).
- **Ch8** : ajout des deux notes d'édition APRS12c : « Pourquoi ? D'où vient
  cette limite de 43 caractères… » (après la limite de 43 caractères) et
  « L'envoi de données GPS brutes est déconseillé… » (avant le format NMEA
  brut).
- **Ch9** : section « Trackers » rétablie (au lieu de « Nouveaux trackers »),
  et suppression de la section « Anciens trackers » (supprimée dans APRS12c).

### Nouvelles sections APRS12c dans des chapitres existants

| Chapitre | Section | Page VO |
|---|---|---|
| Ch2 | **APRS Voice Alert** | 11 |
| Ch3 | **Channel Access** | 13 |
| Ch5 | **APRS Precision** | 21 |
| Ch5 | **Datum Option** | 21 |
| Ch7 | **PHGR "probes"** | 28 |

### Chapitre 18 — APRS Frequency Specification

Pages 87–96 de la VO. **N'existe pas** dans la version française. Fichier
actuel `18-user-defined.tex` correspond à l'ancien chapitre 18 de
APRS101, devenu chapitre 19 dans APRS12c.

### Annexes

APRS12c compte 7 annexes (pages 105–127). Contenu différent de APRS101,
notamment l'annexe 1 (`APRS Data Formats`). À réécrire intégralement.

### Ordre de travail

1. Créer `chapters/18-frequency-spec.tex` (p. 87–96)
2. Vérifier chapitres 1–10 + 19 contre APRS12c section par section
3. Ajouter les 5 nouvelles sections dans les chapitres 2, 3, 5, 7
4. Auditer + restaurer chapitres 11–17, 20
5. Réécrire les annexes
