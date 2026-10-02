---
marp: true
theme: backrooms
paginate: true
footer: 'Dossier Professionnel SPV · *NoClip* · Etienne Baron'
lang: fr
title: 'Soutenance SPV — NoClip'
description: 'Support de soutenance orale (15 minutes) du Dossier Professionnel de Superviseur de Production Virtuelle (Etienne Baron, École Georges Méliès, 2026).'
---

<!-- _class: titre -->
<!-- _paginate: false -->
<!-- _footer: '' -->

<h2>Dossier Professionnel · Superviseur de Production Virtuelle</h2>

# NoClip

<h2>Quand le décor n'a plus de sortie.</h2>

<p style="margin-top:38px">
Etienne Baron · 2<sup>ème</sup> année SPV · École Georges Méliès (Orly, Grand Paris)<br>
Soutenance orale · 15 minutes · octobre 2026
</p>

<!--
15 s. Je me présente et j'annonce le fil : un projet supervisé, ce qui a mal tourné,
ce que j'en retiens de concret (régie, équipe, chiffres), puis mon année sans entreprise.
Je ne défends pas une réussite : je montre un diagnostic.
-->

---

<!-- header: 'I · Le projet supervisé' -->

## *NoClip* et le dispositif retenu

<div class="cols" style="display:grid;grid-template-columns:1fr 1.1fr;gap:34px;margin-top:14px">
<div>

Court-métrage de fin d'études, **≈ 5 min**, thriller psychologique, scénario de **Charlotte Strauch**.
Ryan est piégé dans les ***Backrooms*** : bureaux abandonnés, jaune monochrome, néons, moquette humide.

**Ma mission :** concevoir, préparer et superviser sur le plateau **toutes les séquences Backrooms**.

<div class="infobox">
<span class="t">Règle d'arbitrage du dossier</span>
Décor réel au skatepark (début, fin) · <strong>mur LED</strong> pour les Backrooms, là où la lumière jaune baigne
l'acteur. Le fond vert, envisagé pour les inserts, <strong>n'a pas été utilisé</strong>.
</div>

</div>
<div>

<div class="techbox">
<span class="t">Plateau de l'école (mur LED)</span>
Sony <strong>Crystal LED VERONA</strong>, pas 1,56 mm<br>
Sony <strong>VENICE 2</strong> · Zeiss 24/35/50/85<br>
Tracking <strong>Zeiss CinCraft Scenario</strong><br>
Rendu <strong>RTX A6000</strong> (+ 2080 supervision)<br>
Lumière LED <strong>figée</strong> au pré-light, sol en <strong>drap noir</strong>
</div>

<p class="legende">Deux simplifications décidées en amont : plan de feu fixe (pas de DMX / Art-Net) et drap noir
plutôt que moquette (une moquette claire renvoie le jaune du mur).</p>

</div>
</div>

<!--
50 s. Poser le projet vite : le jury a lu le dossier. Insister sur la règle d'arbitrage (décor réel au début et à la fin,
mur LED pour les Backrooms ; pas de fond vert au tournage) et sur le fait que le matériel appartient à l'école. Les deux simplifications sont les décisions amont
que le tournage a validées.
-->

---

## La préparation : prévu contre réel

| Phase | Prévu | Réel |
|-------|-------|------|
| Découpage VP · Blockout | Janv. · Fév. | <span class="tag ko">non formalisés</span> raccord d'échelle jamais validé |
| Modélisation, optimisation | Mars–avril | Mars–juin, **sans revue d'asset** de ma part |
| Tests plateau | Mai | <span class="tag ko">aucun</span> première mise en œuvre = matin du tournage |
| **Répétition technique** | **23 juin** | <span class="tag ko">n'a pas eu lieu</span> |
| Tournage | 24 juin | <span class="tag ok">tenu</span> et bouclé légèrement en avance |

<div class="infobox">
<span class="t">Un jalon imposé n'est pas un jalon tenu : c'est un mur</span>
Toutes les phases amont ont absorbé le retard. <strong>Le seul jalon qui protège une journée de plateau
est la répétition technique de la veille</strong> — celui que j'ai sacrifié.
</div>

<!--
45 s. Énoncer sans s'excuser. Cette diapo explique tout ce qui suit : le tracking découvert en panne
le jour J, et pourquoi il faut un brief la veille (diapo 5).
-->

---

<!-- header: 'II · Le jour J et la régie' -->

## 24 juin : 40 °C et un tracker hors service

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:34px;margin-top:10px">
<div>

### Ce qui s'est passé
**40 °C à l'ombre.** Ventilation active sur le mur LED et sur les stations. Le **Zeiss CinCraft** présente des
dysfonctionnements : laissé **désactivé toute la journée**.

Hypothèse : **une chance sur deux** que l'usage répété et la montée en température l'aient rendu inutilisable.
**Cause jamais établie.**

Repli : frustum recalé à la main, caméra sur pied, **plans fixes à légèrement panoramiques**. Journée bouclée sans temps mort.

</div>
<div>

### Ce que je mettrais en place
- Une **check-list de diagnostic** à dérouler en cas de panne : le stress d'une préparation tardive réduit le discernement.
- Un **second tracker** prêt à être monté.
- Une **liaison étroite avec le fabricant** jusqu'au jour J, avec retours d'expérience bons comme mauvais.

<div class="notebox">
<span class="t">Un angle mort du marché</span>
Zeiss ne publie pas de données de tenue thermique ou environnementale du tracker.
</div>

</div>
</div>

<!--
70 s. Les faits en 20 s, les mesures en 40 s. La phrase à faire passer : « J'ai été chanceux, pas
prévoyant » : le découpage se prêtait aux plans fixes. Avec des travellings, la journée sautait.
Un dispositif dont un maillon annule la valeur ajoutée doit avoir un mode dégradé écrit, testé, chiffré.
-->

---

## La feuille de route de la régie

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:30px;margin-top:10px">
<div>

### La veille, après les répétitions lumière
**Brief général** à toute l'équipe :
- **distance minimale** au mur LED, pour ne pas l'endommager ;
- **ne jamais passer devant la caméra** ;
- ne pas demander une tâche à un autre corps de métier que celui qui en a la charge.

### Binômes
machinos ↔ électros · moi ↔ réalisation, DoP, technicien 3D · assistant caméra ↔ DoP

</div>
<div>

### Le jour J, dans l'ordre
<div class="techbox">
<strong>1</strong> · Allumage<br>
<strong>2</strong> · Calibration<br>
<strong>3</strong> · Tests du tracking caméra et des optiques<br>
<strong>4</strong> · Raccords lumière<br>
<span style="color:#8C8C7D">→ en cas d'anomalie : check-list de diagnostic</span>
</div>

<div class="infobox">
<span class="t">Qui touche à quoi</span>
L'<strong>opérateur 3D</strong> agit sur les ordinateurs uniquement. <strong>Je gère le plateau</strong> et ne reprends
la main sur l'ordinateur que sur retour de la réalisation ou de l'image.
</div>

</div>
</div>

<!--
60 s. C'est la réponse à « que faire à l'arrivée des équipes extérieures ? ». Elles connaissent la VP
mais ne l'ont pas éprouvée : le brief de la veille est le document qui m'a manqué.
-->

---

## Mobiliser l'équipe : quatre étapes

<div class="kpi" style="grid-template-columns:repeat(4,1fr);gap:18px;margin-top:16px">
<div><div class="n">0</div><div class="l"><strong style="color:#F4EDC0">Donner du sens</strong><br>On n'a ni les mêmes attentes ni les mêmes vies : sortir du « film d'exercice » et partir du plaisir de faire ensemble.</div></div>
<div><div class="n">1</div><div class="l"><strong style="color:#F4EDC0">Identifier les leads</strong><br>La réalisation d'abord, et une personne de planification interne, type chargé de production.</div></div>
<div><div class="n">2</div><div class="l"><strong style="color:#F4EDC0">Fixer le cadre</strong><br>Le rôle de chacun. Le mien : trancher tôt pour que la réalisation ne se disperse pas.</div></div>
<div><div class="n">3</div><div class="l"><strong style="color:#F4EDC0">Valider au fil de l'eau</strong><br>Des réunions régulières, avec compte rendu écrit.</div></div>
</div>

<div class="infobox" style="margin-top:26px">
<span class="t">D'où la double casquette</span>
Sur un projet de cette taille, il faut quelqu'un qui décide du découpage <strong>en connaissant le coût de fabrication
de chaque plan</strong>. Ce n'est pourtant pas le poste que je vise : je vais plutôt vers un <strong>profil freelance solo,
plus versatile</strong> (diapo 18).
</div>

<!--
55 s. Le grand silence de production est ma faute, mais il est aussi structurel : personne n'avait de raison
de se parler. L'étape 0 est la plus importante et la plus oubliée.
-->

---

<!-- header: 'III · Les images' -->

## Ce que le dispositif a produit

<div class="cols" style="display:grid;grid-template-columns:672px 1fr;gap:32px;margin-top:6px">
<div>

<div class="grille2">
<img src="sources_latex/img/noclip_bureau_large.png" alt="Plan d'ensemble du bureau">
<img src="sources_latex/img/noclip_ryan_gp.png" alt="Gros plan sur Ryan">
<img src="sources_latex/img/noclip_bureau_assis.png" alt="Plan d'ensemble, Ryan assis">
<img src="sources_latex/img/noclip_ecran_insert.png" alt="Insert écran">
</div>

</div>
<div>

<p class="legende" style="margin-top:0">Images du montage final, non des prévisualisations.</p>

<div class="infobox">
<span class="t">Acquis</span>
Le jaune du décor <strong>baigne réellement le visage</strong> de Ryan, capté <em>in-camera</em> ; le drap noir tient les
noirs ; prises superposables.
</div>

<div class="notebox">
<span class="t">Perdu</span>
<strong>Quatre plans, aucun mouvement d'appareil, aucune parallaxe</strong> : sans tracking, le mur n'est plus qu'un grand fond lumineux.
</div>

</div>
</div>

<!--
30 s. Montrer avant de commenter. L'acquis est réel : le raccord lumière. La perte est nette : la parallaxe.
-->

---

## Les choix de tournage ont décidé de la direction artistique

| Choix | Ce qu'il a donné | Ce qu'il a coûté à l'image |
|-------|------------------|----------------------------|
| **Plan fixe** (tracking HS) | Davantage d'itérations de cadrage, qui n'était qu'ébauché | Aucun mouvement pour « creuser » le décor |
| **Drap noir** au sol | Noirs tenus, pas de retour du jaune | **A coupé une scène** en plan large et cadrage général |
| **Plan de feu fixe** | Prises superposables, étalonnage sans dérive | **Pas de flicker** : un manque conséquent pour le rendu final |
| **Idée du skateboard** devant le mur | Rien : non retenue | Trop de temps investi sur un thème pourtant évident : la transgression, les limites |

<div class="notebox">
<span class="t">Jugement affiné depuis la rédaction du dossier</span>
Le dossier juge l'absence de flicker sans conséquence. Avec le recul, je la compte comme un vrai manque : un flicker
aurait pu <strong>interagir avec le raccord lumière</strong> et nourrir l'oppression voulue par la note d'intention.
</div>

<!--
70 s. Une ligne par choix, jamais plus de 15 s chacune. Je signale moi-même l'écart avec le dossier sur le
flicker : mieux vaut le dire que se le faire opposer. Le skateboard : une leçon de gestion du temps, pas de technique.
-->

---

## Le reproche technique le plus précis : le point nodal

<div class="techbox">
<span class="t">Pourquoi cela compte sur un mur LED</span>
Le <strong>point nodal</strong> est le point autour duquel la caméra pivote pour que la perspective du fond reste juste.
<strong>Mal renseigné</strong>, nDisplay affiche une géométrie légèrement fausse, et la distance caméra → mur, qui fixe
le plan de netteté, devient approximative.
</div>

Faute de relevé, l'ouverture a été choisie **à vue** : arrière-plan trop net, texture du mur qui remonte.

<div class="notebox">
<span class="t">Conséquence visible : un moiré</span>
La trame du mur est trop nette pour la caméra : un <strong>moiré apparaît sur l'écran LED</strong> à l'image.
</div>

<div class="infobox">
<span class="t">Ma règle</span>
<strong>Aucun plan LED sans relevé écrit</strong> du point nodal de l'optique montée, de la distance au mur et de l'ouverture.
Trois valeurs, une ligne dans le rapport image.
</div>

<!--
30 s. Slide technique : point nodal, frustum, nDisplay, profondeur de champ. Annoncer la conséquence visible : le moiré
sur l'écran, à l'image. Finir sur la règle.
-->

---

<!-- header: 'III bis · Le fond vert' -->

## Le fond vert : bonnes pratiques, et pourquoi pas pour *NoClip*

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:34px;margin-top:10px">
<div>

### Bonnes pratiques
- **Éclairer l'arrière-plan et le premier plan séparément** : le fond vert uniforme, le sujet pour lui-même.
- **Mise au point et ouverture sur le sujet** : le fond n'est pas la référence de netteté.
- **Distance sujet–fond** suffisante pour limiter le *spill* vert, corrigé ensuite par le *despill* au compositing.

<p class="legende">Prévu au dossier pour les <strong>inserts et gros plans</strong> (dispositif B, cyclo vert de l'école),
<strong>mais non utilisé au tournage</strong> : ces pratiques sont celles que j'appliquerais.</p>

</div>
<div>

### Pourquoi pas pour tout *NoClip*
<div class="infobox">
<span class="t">On perd l'éclairage ambiant global</span>
Devant un fond vert, il n'y a plus la lumière diffuse du décor qui donne aux Backrooms leur atmosphère :
<strong>un mélange de poisseux et de mort</strong>. Le mur LED, lui, la fabrique et la fait tomber sur le visage.
</div>

</div>
</div>

<!--
60 s. Deux pratiques centrales (éclairage séparé, netteté sur le sujet), une limite de fond. Dire d'emblée que le fond vert n'a pas été utilisé sur NoClip. Ne pas parler de
NATION ici : réservé aux questions.
-->

---

<!-- header: 'IV · Budget et carbone' -->

## Budget de la partie VP

<div class="kpi" style="grid-template-columns:repeat(3,1fr);gap:24px">
<div><div class="n">≈ 25 k€</div><div class="l">location VP, 1,5 jour<br>test lumière inclus</div></div>
<div><div class="n">≈ 6,2 k€</div><div class="l">masse salariale VP<br>minima PAV 2026</div></div>
<div><div class="n">≈ 31 k€</div><div class="l">budget estimé<br>de la partie VP</div></div>
</div>

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:30px;margin-top:6px">
<div>

<div class="notebox">
<span class="t">La location : un ordre de grandeur</span>
Tarif moyen constaté, <strong>à discuter en amont avec la production</strong>. Les méthodes de devis varient selon les
prestataires. On négocie une <strong>prestation avec retour sur investissement du matériel</strong>, pas un prix cassé.
</div>

</div>
<div>

<div class="infobox">
<span class="t">La masse salariale : l'autorité des grilles</span>
Je n'ai chiffré que les <strong>minima syndicaux</strong>, qui font autorité. Sans alternance, je n'ai pas de tarifs
de marché de première main.
</div>

</div>
</div>

<!--
50 s. Dire la limite avant qu'on me la fasse : le 25 k€ est un ordre de grandeur indicatif, pas une grille.
La masse salariale est calculée sur les lignes du devis du dossier, hors décor réel (hypothèses en annexe).
-->

---

## Bilan carbone d'une journée de plateau VP (8 h)

| Poste | Hypothèse | Énergie |
|-------|-----------|---------|
| **Mur LED** | 26,7 m² × 292 W/m² (moy.) × 8 h, +10 % d'auxiliaires | **68,7 kWh** |
| Stations | 2 stations × 1 kWh | 2,0 kWh |
| Éclairage | panneau 229 W + tube 36 W × 8 h | 2,1 kWh |
| **Total** | | **≈ 72,8 kWh** |

<div class="kpi" style="grid-template-columns:repeat(3,1fr);gap:24px;margin-top:6px">
<div><div class="n">≈ 3,8 kg</div><div class="l">CO₂e à 0,052 kg/kWh<br>(ADEME, base de Carbon'Clap)</div></div>
<div><div class="n">94 %</div><div class="l">de l'énergie part<br>dans le mur LED</div></div>
<div><div class="n">≤ 7,3 kg</div><div class="l">borne haute, mur à<br>sa puissance maximale</div></div>
</div>

<p class="legende">Dimensions du dossier (centre + deux volets) · fiche Sony ZRD-VP15EB · méthode Sightled · référence Ecoprod. Hypothèses détaillées en annexe.</p>

<!--
50 s. Un chiffre, un levier : le mur LED pèse 94 % de la consommation. Donc le levier de sobriété du
superviseur est de dimensionner le mur au strict nécessaire et d'éteindre ce qui ne tourne pas.
Le chiffre officiel se ferait dans Carbon'Clap ; ici c'est la même logique (donnée d'activité × facteur ADEME).
-->

---

<!-- header: 'V · Quel projet pour la VP ?' -->

## Le dispositif ne convenait pas à *NoClip*

| *NoClip* demandait | Un plateau VP avec régie suppose |
|--------------------|----------------------------------|
| Plans fixes, cadres symétriques, séquences truquées courtes | Mouvements d'appareil, parallaxe, interaction acteur / décor |
| Petite équipe polyvalente | Équipe étoffée : LED, tracking, régie |
| Charge concentrée en post-production | Charge concentrée sur le plateau |

<div class="infobox">
<span class="t">Mon arbitrage manqué</span>
Un surcoût d'équipe inutile, et <strong>c'est précisément le genre de décision qu'un superviseur doit rendre avant
qu'elle ne coûte</strong>. Le dispositif D (décor neutre + fabrication hybride) aurait été le bon choix : il est en annexe.
</div>

<!--
45 s. La conclusion centrale du chapitre 4. La valeur d'un superviseur : savoir dire quel dispositif ne pas utiliser.
Transition : alors, pour quel projet la VP est-elle le bon choix ?
-->

---

## Quand la production virtuelle est le bon choix

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:30px;margin-top:8px">
<div>

### Ce qu'elle fait mieux que tout
**Reflets** · **optiques non conventionnelles** · **lumières dynamiques** · effets **SFX** (fumée, projections d'eau) captés *in-camera*.

<div class="notebox">
<span class="t">La condition</span>
Des <strong>équipes bien rodées</strong> : cela limite le terrain d'expérience de nombreux jeunes réalisateurs.
</div>

</div>
<div>

### Un autre usage : le plateau interactif
L'Allemagne a davantage exploré la VP du côté du **jeu télévisé et de l'interactivité** que la France, plus centrée
sur le média linéaire.

<div class="techbox">
<span class="t">Repère : SWR, <em>Fehler im System</em></span>
Studio 6, Baden-Baden · 24–25 oct. 2025<br>
Mur Sony VERONA 10 × 4 m · 3 caméras trackées
</div>

</div>
</div>

<!--
45 s. Atouts puis condition. Le repère SWR est vérifiable (Sony, TVBEurope). Si on me demande la technique de
multi-caméras (ghost frame, mur à cadence double), je dis ce que j'ai lu : SWR a fait tourner le mur au double de la
cadence de production ; je ne détaille pas plus loin que mes sources.
-->

---

## Cinq questions avant de choisir la production virtuelle

<div class="techbox" style="font-size:20px;line-height:1.6">
<strong>1</strong> · Le décor est-il réel ou non ?<br>
<strong>2</strong> · S'il est réel, existe-t-il un moyen de le rendre tangible, sans artifice ?<br>
<strong>3</strong> · Quelle place a le décor dans la mise en scène (hors champ, arrière-plan…) ?<br>
<strong>4</strong> · Y a-t-il plusieurs décors très différents à enchaîner dans la production ?<br>
<strong>5</strong> · Quel coût y consacrer, <em>en rapport à son importance</em> (un rapport, pas un prix) ?
</div>

<div class="infobox">
<span class="t">Une grille codépendante</span>
Elle se remplit <strong>avec la réalisation et la production, dès le début de l'écriture</strong> : c'est là que se décide
la faisabilité de chaque plan.
</div>

<!--
65 s au total pour les deux dernières diapos (35 s ici). Lire les cinq questions sans les commenter toutes :
insister sur la 1 (réel ou non) et la 5 (un rapport, pas un prix). Ne pas dire que la grille est « de moi seul ».
-->

---

<!-- header: "VI · L'année sans entreprise" -->

## Une année sans entreprise : veille et réseau

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:30px;margin-top:8px">
<div>

### Ce que j'ai construit
Une **veille soutenue sur l'IA** appliquée aux industries créatives, sur trois fronts : **outils**, **économie des métiers**,
**cadre normatif** (AI Act, souveraineté).

<div class="infobox">
<span class="t">Creative Machines · jam de Rennes (4–6 avril 2026)</span>
Le goulot d'étranglement n'est presque jamais la génération : il est dans la <strong>direction</strong>, la
<strong>cohérence</strong> et l'<strong>assemblage</strong>. Les équipes qui livrent ont <strong>tranché leur intention tôt</strong>.
</div>

</div>
<div>

### Ce que cela n'a pas apporté
<div class="notebox">
Pas de plateau professionnel, pas de pipeline éprouvé, pas de hiérarchie technique pour corriger un geste.
Mon ingénierie plateau (calibration, signaux, <code>nDisplay</code>) reste <strong>théorique et peu pratiquée</strong>.<br><br>
<strong>C'est le premier écart à combler, et il ne se comble qu'en studio.</strong>
</div>

</div>
</div>

<!--
50 s. La jam et NoClip racontent la même chose : ce qui manquait n'était pas de la technique mais de la décision
rendue en temps utile. Dire clairement le manque.
-->

---

## Veille outillée : le CLI, mon harnais, une méthode

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:30px;margin-top:8px">
<div>

### Les outils deviennent adressables
Les logiciels se pilotent de plus en plus **en ligne de commande et par script** : c'est ce qui les rend adressables par
un agent (cas d'Unreal Engine 6 et de Verse). Concrètement, un superviseur qui sait scripter <strong>automatise ses propres
tâches</strong> (relevés, rapports, préparation de scène) et <strong>branche un agent sur l'éditeur</strong> depuis un terminal.

<div class="infobox">
<span class="t">Mon garde-fou</span>
Tout outil qui ne sait pas répondre à <strong>« comment versionne-t-on ce résultat ? »</strong> reste hors pipeline.
</div>

</div>
<div>

### Ce dossier est un prototype
Méthode **ICM** (Jake Van Clief) : la structure de dossiers est l'architecture de l'agent. Cinq couches, une
source unique de vérité, le contexte minimal.

<div class="notebox">
<span class="t">Où s'exécute le modèle est une décision de supervision</span>
<strong>Modèle frontière</strong> pour la méthode et les documents publiables ; <strong>inférence locale</strong> dès que
la donnée est critique (rushes, scénario non déposé).
</div>

</div>
</div>

<!--
50 s. Ne pas faire un catalogue. Réponse anticipée à « vous défendez l'open source mais utilisez un modèle
propriétaire » : la ligne de partage porte sur la nature de la donnée, pas sur la commodité. Détail en annexe.
-->

---

## Projet professionnel

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr 1fr;gap:26px;margin-top:10px">
<div>

### Court terme
**Continuer à fabriquer mes outils** en codage agentique supervisé.

**Hacker les principes de la VP** pour en faire un outil **low-cost et open source**.

</div>
<div>

### Moyen terme
**Creative technologist** dans le champ des **arts plastiques**.

<p class="legende">Mes ambitions techniques y sont plus envisageables que dans l'audiovisuel, beaucoup plus formaté.
Et pourquoi pas investir l'<strong>interactif</strong>, l'<strong>électronique</strong>, la <strong>robotique</strong>.</p>

</div>
<div>

### En parallèle
Le **framework personnalisé** de **documents et logiciels** de travail pour le suivi audiovisuel : notes de supervision,
rapports image, comptes rendus de test.

</div>
</div>

<div class="infobox" style="margin-top:22px">
<span class="t">Ce que NoClip m'a appris</span>
Décider tôt, écrire ce que je décide, et savoir refuser un dispositif que le projet ne justifie pas. D'où un cap
<strong>freelance solo, plus versatile</strong>, plutôt qu'un poste de superviseur à double casquette.
</div>

<!--
40 s. Trois horizons, puis la phrase de clôture. Dire que je n'ai pas trouvé mon cap dans la double casquette
mais dans un profil freelance solo, versatile : le PDF (ch. 5) formule un autre projet, ce sont mes choix post-formation.
-->

---

<!-- _class: fin -->
<!-- _footer: '' -->
<!-- header: '' -->

# Merci

<p style="font-size:22px;color:#8C8C7D;line-height:1.7;margin-top:26px">
<strong style="color:#F4EDC0">Etienne Baron</strong> · 2<sup>ème</sup> année Superviseur de Production Virtuelle<br>
École Georges Méliès — Orly, Grand Paris<br><br>
Dossier complet : <code>Dossier_Professionnel_SPV_NoClip_BARON.pdf</code>
</p>

<div class="notebox" style="max-width:44em;margin:26px auto 0;text-align:left">
<span class="t">Transparence — usage de l'intelligence artificielle (AI Act, Règlement (UE) 2024/1689)</span>
La mise en forme du dossier et de ce support a bénéficié d'outils d'IA générative et agentique. L'analyse, les choix
techniques, les arbitrages de supervision et la responsabilité du contenu restent ceux de l'auteur.
</div>

<!--
Fin de l'exposé. Rester sur cette diapo pendant les questions. Les annexes suivantes ne sont pas projetées :
elles servent à répondre (NATION, dispositif D, hypothèses de calcul, harnais).
-->

---

<!-- _class: partie -->
<!-- _footer: '' -->
<!-- header: 'Annexes · Q&A' -->

<div class="num">A</div>

# Annexes

<h2>Hors exposé — pour répondre aux questions</h2>

---

## A1 · Dispositif D : tournage hybride assisté par IA générative

<div class="techbox">
<span class="t">Principe</span>
Tourner l'acteur en <strong>décor neutre maîtrisé</strong> (fond vert, ou mur sombre + sol traité), en petite équipe, avec un
<strong>relevé rigoureux</strong> de la caméra et de l'optique. Fabriquer l'environnement en post par un pipeline <strong>hybride</strong> :
génération assistée pour matte paintings, textures, variations ; outils classiques pour l'assemblage et le contrôle. Le
décor n'est jamais « généré » d'un bloc : il est <strong>fabriqué</strong>.
</div>

| Avantages | Limites |
|---|---|
| Sur 3 min d'effets, l'immobilisation d'un plateau ne s'amortit pas ; la fabrication, oui | S'effondre dès que la durée truquée augmente |
| Plans fixes : ce que ce pipeline traite le mieux | Interdit de fait la mise en scène ample |
| Petite équipe, budget étalé et pilotable | **Perte du retour *in-camera*** |
| Itérable sans rappeler l'équipe | Cohérence, traçabilité, cadre AI Act |

---

## A2 · Hypothèses du budget et du carbone

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:26px;margin-top:6px">
<div>

### Masse salariale VP : 6 177 €
Lignes du devis du dossier, **minima PAV 01/01/2026**, **un jour de plateau VP** par poste (réalisation 300 · superviseur 239 ·
DoP 395 · chef électricien 225 · tracking 220 · scripte 219 · machiniste 184 · son 272 · behind the shot 184 · acteur 412),
plus **fabrication 3D** (graphiste 5 j 1 195 · opératrice 5 j 1 115), **compositing** (3 j 717) et **assets** (500).
Exclus : le décor réel (skatepark, skateboard, stockshot).

<p class="legende">Découpage jour VP / jour décor réel : estimation de l'auteur, le devis ne le ventile pas.</p>

</div>
<div>

### Énergie : 72,8 kWh
- **Surface** : centre 4,88 × 2,74 m + 2 volets 2,44 × 2,74 m = **26,74 m²** (plafond non compté : +11,9 m² si allumé).
- **Puissance** : Sony ZRD-VP15EB, 1,56 mm : **< 292 W/m² moyen**, < 580 W/m² maximum ; méthode **Sightled** (P × heures, +10 %).
- **Stations** : 1 kWh chacune, 2 stations.
- **Éclairage** : références représentatives, modèles non précisés dans le dossier : 229 W (panneau bicolore) et 36 W (tube).
- **Facteur** : ADEME Base Empreinte **0,052 kgCO₂e/kWh** ; mix RTE 2024 à 22 g : 1,6 kg.

</div>
</div>

---

## A3 · Ma ligne de partage : modèle frontière ou local

| Critère | Modèle frontière (retenu) | Modèle *open weight* local |
|---|---|---|
| Efficacité | Tient un document long sans perdre la cohérence | Découpage fin, beaucoup de reprises |
| Simplicité | Un harnais, une clé, aucune infrastructure | Quantification, VRAM, mises à jour |
| Souveraineté | <span class="tag ko">point faible</span> données chez un tiers | <span class="tag ok">point fort</span> rien ne sort |
| Pérennité | Dépendance au fournisseur | Poids archivables, rejouables |

<div class="infobox">
<span class="t">La règle</span>
Frontière pour la méthode et les documents publiables ; local dès que la donnée est critique. Architecture portable :
des fichiers texte versionnés, lisibles par n'importe quel modèle.
</div>

---

<!-- _class: media -->
<!-- _footer: '' -->

<div class="cadre">
<img src="sources_slides/media/nation_titre.jpg" alt="NATION — Désert & Gardes, du rush au composite">
<div class="sur">
<h2>A4 · NATION : le corpus produit pendant l'année</h2>
<p>Projet personnel mené de mars à septembre 2026, hors cadre scolaire : décor de désert et séquence de gardes, entièrement
fabriqués en post-production. Trois montages de démonstration, ajoutés au dossier de travail le <strong>8 septembre 2026</strong>.</p>
</div>
</div>

---

<!-- _class: media -->
<!-- _footer: '' -->

<div class="cadre">
<img src="sources_slides/media/nation_neuf_rushs.jpg" alt="Neuf rushs sur fond vert et maquette">
<div class="sur">
<h2>A5 · Le plateau : neuf rushs, aucun désert</h2>
<p>La tour est une <strong>maquette posée sur un tas de sable</strong>, filmée en intérieur. Les comédiens sont tournés
<strong>sur fond vert</strong>. <strong>Aucun désert n'a été filmé</strong> : c'est le décor neutre maîtrisé du dispositif D.</p>
</div>
</div>

---

<!-- _class: media -->
<!-- _footer: '' -->

<div class="cadre">
<video src="NATION_Desert_Gardes_Chaine_Complete.mp4" controls preload="metadata"
       poster="sources_slides/media/nation_rush_masque_base.jpg"></video>
<div class="sur">
<h2>A6 · Du rush au composite — cinq couches croisées</h2>
<p><strong>Rush</strong> (fond vert) · <strong>masque</strong> · <strong>base</strong> · <strong>rendu</strong> · <strong>retenu</strong>, appariés au photogramme.
<em>5 min 00 · six actes.</em></p>
</div>
</div>

---

<!-- _class: media -->
<!-- _footer: '' -->

<div class="cadre">
<video src="NATION_Desert_Chaine_Fabrication.mp4" controls preload="metadata"
       poster="sources_slides/media/nation_quatre_etats.jpg"></video>
<div class="sur">
<h2>A7 · La chaîne de fabrication — même image, même seconde</h2>
<p>Quatre états d'un même plan lus en synchrone. <strong>Seul l'état du décor change.</strong> <em>3 min 00.</em></p>
</div>
</div>

---

<!-- _class: media -->
<!-- _footer: '' -->

<div class="cadre">
<video src="NATION_Desert_Evolution_Retakes.mp4" controls preload="metadata"
       poster="sources_slides/media/nation_lecture_synchrone.jpg"></video>
<div class="sur">
<h2>A8 · L'évolution par retakes — six versions, un seul timecode</h2>
<p>Le plan du monolithe traverse <strong>six rendus en une journée</strong> : densité atmosphérique poussée, puis redescendue. <em>2 min 00.</em></p>
</div>
</div>

---

<!-- _class: deux -->

## A9 · Fabriquer, ce n'est pas générer

<div class="cols">
<div>

<img src="sources_slides/media/nation_decor_neuf_essais.jpg" alt="Neuf essais du décor seul" style="width:100%">
<p class="legende"><strong>Neuf essais du décor seul.</strong> L'heure dorée explorée pendant cinq heures : <strong>elle ne sera pas retenue</strong>.</p>

</div>
<div>

<img src="sources_slides/media/nation_choix_final.jpg" alt="Écarté contre retenu" style="width:100%">
<p class="legende"><strong>Écarté / retenu.</strong> Le plan le plus spectaculaire est abandonné au profit d'un plan délavé, qui raccorde.</p>

</div>
</div>

<div class="infobox" style="margin-top:12px">
<span class="t">C'est là que se joue le métier</span>
La génération produit des options en quelques minutes ; <strong>le travail consiste à en refuser huit sur neuf</strong>, pour une raison de raccord.
</div>

---

## A10 · NATION en chiffres, et en regard de *NoClip*

<div class="kpi" style="grid-template-columns:repeat(4,1fr);gap:20px">
<div><div class="n">654</div><div class="l">clips, conduite Premiere Pro</div></div>
<div><div class="n">10</div><div class="l">plans traités</div></div>
<div><div class="n">16</div><div class="l">rendus VFX, 18 juil. → 4 sept.</div></div>
<div><div class="n">5</div><div class="l">couches croisées</div></div>
</div>

| | ***NoClip*** (juin 2026) | ***NATION*** (mars → sept. 2026) |
|---|---|---|
| Dispositif | Plateau LED complet, régie, équipe étoffée | Décor neutre + fabrication en post |
| Traçabilité | Aucun compte rendu, aucun relevé écrit | Conduite XML, appariement par durée, contrôle au photogramme |
| Retour *in-camera* | <span class="tag ok">acquis</span> | <span class="tag ko">perdu</span> |
| Résultat | 4 plans, aucune parallaxe | 10 plans, aucun désert filmé |
