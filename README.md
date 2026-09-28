# Le projet de documentation APRS

Il est difficile de trouver de bonnes informations sur l’APRS. Une recherche
sur le Web renvoie principalement des informations erronées et obsolètes, et
peu de contenu utile. Ce projet constitue le début d’un recueil de la
documentation essentielle.

## Qu’est-ce que l’APRS ?

Selon les mots de son créateur :

> « **L’APRS n’est pas un système de suivi de véhicules**. C’est un système de
> communications numériques tactiques, bidirectionnelles et en temps réel,
> entre tous les moyens d’un réseau partageant des informations sur tout ce qui
> se passe dans la zone locale. En radioamateur, cela signifie que, si quelque
> chose se produit maintenant ou qu’une information peut vous être utile, cette
> information doit apparaître sur votre radio APRS dans votre véhicule. »

— WB4APR (SK)

Pour en savoir plus :
[What-is-APRS.pdf](https://github.com/wb2osz/aprsspec/raw/main/What-is-APRS.pdf)

## Les meilleures présentations sur l’APRS

Les réunions de clubs et les conventions radioamateurs recherchent toujours
des intervenants. Aucun forum de Dayton en 2024 n’était consacré à l’APRS.

Supposons que vous souhaitiez présenter l’APRS lors d’une réunion de club ou
d’une convention radioamateur. Mais… c’est un travail considérable. Vous ne
savez pas vraiment par où commencer et préféreriez utiliser ou adapter un
travail existant plutôt que de partir de zéro.

Où trouver des présentations adaptées ? J’ai effectué des recherches et n’ai
pas trouvé grand-chose qui en vaille la peine.

Je lance donc un défi à la communauté APRS. Aidez-nous à dresser une liste des
meilleures présentations que d’autres pourront utiliser.

[The-Best-APRS-Presentations.pdf](https://github.com/wb2osz/aprsspec/raw/main/The-Best-APRS-Presentations.pdf)

## Comment débuter en APRS

Comment un débutant peut-il se lancer dans l’APRS ?

Une recherche sur le Web renvoie principalement :

- des informations très spécialisées, comme la configuration d’une radio
  particulière ;
- des informations obsolètes, affirmant par exemple qu’il faut acheter un TNC
  hérité des années 1980, ou renvoyant vers des applications abandonnées depuis
  des décennies ;
- des contenus qui ne parlent que des trackers et d’aprs.fi ;
- des contenus laissant croire que l’achat d’une radio très coûteuse est le
  seul moyen de débuter ;
- des informations excessivement techniques, comme la spécification du
  protocole ;
- une description très sommaire accompagnée d’un lien vers
  [aprs.org](http://www.aprs.org/), de quoi décourager un débutant.

Sur YouTube, le premier résultat est « APRS The Most Worthless Mode in Ham
Radio », illustré par l’APRS sous la forme d’un tas d’excréments. Ce n’est pas
une bonne première impression.

Il existe d’excellentes ressources, mais comment un débutant peut-il les
trouver au milieu de tout ce fatras ?

[How-to-Get-Started-in-APRS.pdf](https://github.com/wb2osz/aprsspec/raw/main/How-to-Get-Started-in-APRS.pdf)

Cette liste collaborative rassemble les meilleures ressources destinées aux
débutants. J’ai besoin de **VOTRE** aide pour trouver les meilleures.

## *** Lecture recommandée à tous les utilisateurs de l’APRS ***

Que signifie ceci ?

```text
N83MZ>T2TQ5U,WA1PLE-4*:`c.l+@&'/'"G:} KJ6TMS|!:&0'p|!w#f!|3
```

Quel est le problème dans ce paquet ?

```text
WA2GUG-15>TQ0V4V,TCPIP,WA2GUG-15,K1EQX-7,N3LLO-3,WIDE2*,RFONLY,NOGATE:}KB1CRN-14>TQ0V4V,WIDE1-1,WIDE2-1,WB2ZII-13,TCPIP,WA2GUG-15*:`e4Tp,Pu/`"4/}Keep on truckin`_1<0x20>
```

Vous pourriez tenter de digérer la spécification du protocole APRS, mais elle
risquerait de vous donner mal à l’estomac — et à la tête. Une introduction plus
progressive est disponible ici :
[Understanding-APRS-Packets.pdf](https://github.com/wb2osz/aprsspec/raw/main/Understanding-APRS-Packets.pdf)

Lisez bien la partie consacrée aux erreurs commises par les utilisateurs.
Étudiez-la attentivement si vous ne voulez pas devenir vous-même un exemple de
ce qu’il ne faut pas faire.

## Symboles APRS

Table de référence des icônes et de leur encodage sur l’air :
[APRS-Symbols.pdf](https://github.com/wb2osz/aprsspec/raw/main/APRS-Symbols.pdf)

## APRS Thursday

APRS Thursday est un réseau dirigé par Michael KC8OWL, organisé chaque jeudi
afin de développer l’activité de messagerie APRS dans le monde entier. De
nombreux fabricants intègrent désormais les fonctions APRS en standard, ce qui
rend l’APRS plus accessible et, espérons-le, plus populaire que jamais.

Le réseau APRS Thursday se tient chaque semaine, le jeudi, de 00:00:00 UTC à
23:59:59 UTC. En fonction des paramètres régionaux de votre navigateur, vous
pouvez vous y enregistrer chaque semaine à n’importe quel moment de cet
intervalle, exprimé dans votre fuseau horaire local.

Pour plus d’informations, consultez
[aprsph.net/aprsthursday](https://aprsph.net/aprsthursday/) ou
[aprs.to/events/aprs_thursday/about](https://aprs.to/events/aprs_thursday/about/).

## Contacter la Station spatiale internationale (ISS) avec l’APRS

Saviez-vous que la Station spatiale internationale (ISS) et certains satellites
radioamateurs embarquent des digipeaters APRS ? Aucun équipement sophistiqué
n’est nécessaire pour utiliser le digipeater de l’ISS. J’ai vu une vidéo dans
laquelle quelqu’un y parvenait avec un portatif et une antenne fouet quart
d’onde. Une meilleure antenne augmentera bien entendu vos chances de réussite.

Détails :
[APRS-Digpeaters-in-Space.pdf](https://github.com/wb2osz/aprsspec/raw/main/APRS-Digpeaters-in-Space.pdf)

## Spécification du protocole APRS 1.2

L’APRS Protocol Reference 1.0.1 a été élaborée par l’APRS Working Group et
publiée en 2000. **APRS101.PDF est obsolète** et ne doit pas servir à une
implémentation.

En 2004, le groupe de travail a approuvé une liste de corrections, de
clarifications et de nouvelles fonctions, résumée ici :
[aprs.org/aprs11.html](http://www.aprs.org/aprs11.html). Malheureusement, ces
modifications n’ont jamais été réintégrées au document d’origine.

Depuis lors, nous ne disposons que d’un ensemble de « propositions » de Bob
WB4APR (SK), disponibles à l’adresse
[aprs.org/aprs12.html](http://www.aprs.org/aprs12.html). Certaines fonctions ont
été largement implémentées ; d’autres ne sont que des idées proposées à la
discussion et n’ont jamais abouti. Aucune limite claire ne les sépare. Certains
liens pointent vers des emplacements qui n’existent plus.

Un quart de siècle plus tard, l’APRS est toujours bien vivant, avec de nombreux
nouveaux produits, de nouvelles applications informatiques et des usages
créatifs. La dispersion et le caractère incomplet des informations rendent les
implémentations plus difficiles et plus sujettes aux erreurs. Certaines
personnes qui tentent d’implémenter l’APRS peuvent même ignorer que le document
d’origine a été mis à jour.

Il s’agit d’une compilation indépendante de la spécification d’origine et de
toutes les mises à jour pertinentes publiées depuis 2000. Elle n’est pas
approuvée par l’APRS Working Group. La position du groupe de travail est que la
version « officielle » reste le document d’origine, accompagné de la version
des errata publiée par Bob sur son site.

Vos retours sont les bienvenus.

Convention de nommage :

- [APRS12b.pdf](https://github.com/wb2osz/aprsspec/raw/main/APRS12b.pdf) est le
  brouillon b de la version 1.2 ;
- [APRS12c.pdf](https://github.com/wb2osz/aprsspec/raw/main/APRS12c.pdf) est le
  brouillon c de la version 1.2, et ainsi de suite.

La lettre finale disparaîtra dans une version publiée.

## Spécification du protocole AX.25 2.2, quatrième édition

L’APRS est généralement transmis dans des trames AX.25 Unnumbered Information
(UI).

[AX.25 Link Access Protocol for Amateur Packet Radio](https://www.ax25.net/AX25.2.2-Jul%2098-2.pdf)

LoRa APRS utilise du texte brut au format de supervision TNC-2.

## Réduction des collisions APRS

Le document « Minimizing APRS Collisions » présente des stratégies permettant
de réduire les collisions dans les réseaux Automatic Packet Reporting System
(APRS). Leur mise en œuvre permet d’améliorer le débit des réseaux APRS et de
réduire les collisions.

## Algorithme d’un digipeater APRS

L’APRS Working Group n’a jamais produit de spécification pour les digipeaters
APRS, probablement parce que les TNC packet radio existants, conçus dans le
style des années 1980, étaient alors réaffectés à cet usage. Pour implémenter un
digipeater, il fallait rassembler des indices provenant de sources diverses et
imiter des TNC hérités du XXe siècle, mal documentés et conçus bien avant
l’apparition du
[paradigme WIDEn-N](http://www.aprs.org/fix14439.html). Il en résulte des
implémentations incohérentes et parfois gravement erronées.

Voici ma tentative pour dissiper cette confusion :
[APRS-Digipeater-Algorithm.pdf](https://github.com/wb2osz/aprsspec/raw/main/APRS-Digipeater-Algorithm.pdf)

## Description d’une IGate APRS

Il existe des informations sur le développement d’une passerelle Internet APRS
(« IGate »), mais elles sont assez sommaires. Pour l’instant, consultez
[Successful-APRS-IGate-Operation.pdf](https://github.com/wb2osz/direwolf-doc/raw/main/Successful-APRS-IGate-Operation.pdf)
pour obtenir des informations complémentaires. Ignorez simplement les parties
qui mentionnent Dire Wolf. Je devrais finir par produire une version plus
générique, qui ne soit pas centrée sur une implémentation particulière.

## Retours

La compilation **NON OFFICIELLE** de la spécification du protocole est un
**BROUILLON** qui comporte des problèmes connus. Vos retours sont les bienvenus.
Les erreurs et suggestions d’amélioration doivent être signalées dans le
[suivi des problèmes du projet aprsspec](https://github.com/wb2osz/aprsspec/issues).

Les discussions générales sur le protocole APRS doivent être publiées sur le
[forum APRS de groups.io](https://groups.io/g/APRS).

73, John WB2OSZ

## Traduction française de la spécification APRS 1.2c

Ce dépôt contient la traduction française en LaTeX de la compilation non
officielle APRS Protocol Reference 1.2c.

La source anglaise de référence est
[APRS12c.pdf](https://github.com/wb2osz/aprsspec/raw/main/APRS12c.pdf). L’ancien
`APRS101.PDF`, version 1.0.1 publiée en 2000, est obsolète et ne doit pas être
utilisé comme référence pour cette traduction.

### Organisation du dépôt

- `aprs12c-fr.tex` : document principal ;
- `preamble-header.tex` : typographie, en-têtes et pieds de page ;
- `chapters/00-*.tex` : pages liminaires ;
- `chapters/01-*.tex` à `chapters/20-*.tex` : chapitres ;
- `chapters/21-appendices.tex` : annexes ;
- `figures/` : illustrations utilisées par la traduction.

### Génération du PDF français

La construction nécessite LuaLaTeX et les polices Times New Roman, Arial et
Courier New. Depuis la racine du dépôt :

```sh
make
```

Le document produit est `aprs12c-fr.pdf`. Le PDF et les fichiers auxiliaires
sont générés localement et ne sont pas suivis par Git.

Pour forcer une reconstruction complète :

```sh
make -B
```
