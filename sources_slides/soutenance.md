---
marp: true
theme: backrooms
paginate: true
footer: 'Dossier Professionnel SPV · *NoClip* · Etienne Baron'
lang: fr
title: 'Soutenance SPV — NoClip'
description: 'Support de soutenance orale du Dossier Professionnel de Superviseur de Production Virtuelle (Etienne Baron, École Georges Méliès, 2026).'
---

<!-- _class: titre -->
<!-- _paginate: false -->
<!-- _footer: '' -->

<h2>Dossier Professionnel · Superviseur de Production Virtuelle</h2>

# NoClip

<h2>Quand le décor n'a plus de sortie.</h2>

<p style="margin-top:38px">
Etienne Baron · 2<sup>ème</sup> année SPV · École Georges Méliès (Orly, Grand Paris)<br>
Soutenance orale · septembre 2026
</p>

<!--
Ouverture (30 s). Je me présente, j'annonce le format : 20 min, six parties,
puis questions. Je précise d'emblée les deux temps du dossier : un projet supervisé
(NoClip) et une année d'alternance non réalisée que j'ai transformée en veille et en
travail personnel. Je ne cache ni l'un ni l'autre.
-->

---

## Plan de la soutenance

| # | Partie | Ce que j'y démontre |
|---|--------|---------------------|
| I | Le projet supervisé | Ce que *NoClip* demandait, ce que j'ai proposé |
| II | Le jour J | L'incident du tracking et l'arbitrage rendu |
| III | Les images | Ce que le dispositif a produit, et ce qu'il a perdu |
| IV | L'auto-critique | La question que j'aurais dû poser en amont |
| V | L'année sans entreprise | Veille, réseau, et un corpus fabriqué |
| VI | Veille & projet | Où va le métier, où je vais |

<div class="notebox">
<span class="t">Parti pris de cette soutenance</span>
Le dossier assume un ton d'auto-critique sévère (chapitre 4). Je ne viens pas défendre
une réussite technique : je viens montrer <strong>ce que j'ai compris de mes propres
manquements</strong>, et ce que j'en ai fait pendant l'année.
</div>

<!--
30 s. Annoncer la structure. Insister sur le parti pris : la valeur de ce dossier
n'est pas dans le résultat plateau, elle est dans la qualité du diagnostic.
-->

---

<!-- _class: partie -->
<!-- _footer: '' -->

<div class="num">I</div>

# Le projet supervisé

<h2>Ce que <em>NoClip</em> demandait, ce que j'ai proposé</h2>

---

## *NoClip* en bref

<div class="cols" style="display:grid;grid-template-columns:1.15fr 1fr;gap:34px;margin-top:16px">
<div>

Court-métrage de fin d'études, **≈ 5 minutes**, thriller psychologique.
Scénario original de **Charlotte Strauch** (2<sup>ème</sup> année SPV, 2026).

Ryan, le protagoniste, se retrouve piégé dans les ***Backrooms*** : un labyrinthe
de bureaux abandonnés, jaune monochrome, néons bourdonnants, moquette humide.

**Ma mission :** concevoir, préparer et superviser sur le plateau **l'ensemble des
séquences se déroulant dans les Backrooms**.

</div>
<div>

<div class="techbox">
<span class="t">Parti pris visuel</span>
Deux mondes opposés :<br>
« Outside » — gris, froid, pluvieux<br>
« Backrooms » — jaune, clos, infini<br><br>
L'opposition chromatique fonde
la calibration du décor virtuel.
</div>

<div class="infobox">
<span class="t">Accès au film</span>
Montage final visible en ligne<br>
(lien non répertorié, sans mot de passe).
</div>

</div>
</div>

<!--
45 s. Poser le projet et l'univers. Ne pas s'étendre : le jury a lu le dossier.
Insister sur le périmètre exact de ma mission — les séquences Backrooms, pas le film.
-->

---

## Le dispositif retenu — plateau LED (dispositif A)

| Poste | Matériel | Origine |
|-------|----------|---------|
| Mur LED | Sony **Crystal LED VERONA**, pas 1,56 mm — 3 faces + plafond, centre 3072 px (≈ 4,88 m) | École Méliès |
| Caméra | Sony **VENICE 2** (CineAlta), S-Log3, genlock | École Méliès |
| Optiques | Zeiss fixes **24 / 35 / 50 / 85 mm** | École Méliès |
| Tracking | **Zeiss CinCraft Scenario** | École Méliès |
| Rendu | **RTX A6000 (48 Go)** mur LED + RTX 2080 supervision | École Méliès |
| Lumière | Panneaux et barres LED bicolores, **figés au pré-light** | École Méliès |

<div class="notebox">
<span class="t">Deux décisions de simplification assumées en amont</span>
<strong>Sol en drap noir mat</strong> plutôt qu'une moquette réelle (une moquette claire
renvoie le jaune du mur et remonte les noirs) · <strong>plan de feu fixe</strong>, aucun
pilotage dynamique DMX / Art-Net (piste étudiée puis écartée, ch. 3).
</div>

<!--
50 s. Le matériel appartient à l'école : le devis chiffre donc surtout de la masse
salariale. Les deux simplifications (drap noir, plan de feu fixe) sont les deux
décisions amont que le tournage a validées — je les revendique, ce sont les seules.
-->

---

## La préparation : prévu contre réel

| Phase | Prévu | Réel |
|-------|-------|------|
| Découpage VP | Janvier | <span class="tag ko">jamais formalisé</span> notes portées tardivement sur le découpage équipe |
| Blockout | Février | <span class="tag ko">non réalisé</span> raccord d'échelle jamais validé |
| Modélisation / texturing | Mars–avril | Mars–juin, **sans revue d'asset de ma part** |
| Optimisation | Avril | <span class="tag warn">juin</span> cadence vérifiée en fin de parcours |
| Tests plateau | Mai | <span class="tag ko">aucun</span> première mise en œuvre = matin du tournage |
| **Répétition technique** | **23 juin** | <span class="tag ko">n'a pas eu lieu</span> |
| Tournage | 24 juin | <span class="tag ok">tenu</span> et bouclé légèrement en avance |

<div class="infobox">
<span class="t">La leçon structurelle</span>
La date de tournage n'était pas un jalon tenu : c'était un <strong>mur</strong> (réservation
du plateau). Toutes les phases amont ont absorbé le retard jusqu'à disparaître.
<strong>Le seul jalon qui protège réellement une journée de plateau est la répétition
technique de la veille</strong> — c'est exactement celui que j'ai sacrifié.
</div>

<!--
55 s. Ne pas s'excuser, énoncer. C'est la diapositive la plus dure de la partie I :
la laisser respirer. Enchaîner directement sur la conséquence, le jour J.
-->

---

<!-- _class: partie -->
<!-- _footer: '' -->

<div class="num">II</div>

# Le jour J

<h2>L'incident du tracking et l'arbitrage rendu</h2>

---

## 24 juin, 8 h — le tracking ne répond pas

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:34px;margin-top:14px">
<div>

### Le fait
Le **Zeiss CinCraft Scenario** présente des dysfonctionnements au matin du tournage.
Plateau soumis à un **épisode de forte chaleur**.

Faute de temps pour un diagnostic sérieux, décision de **laisser le tracker désactivé
toute la journée**.

*À ce jour, aucune cause n'a été formellement établie.*

</div>
<div>

### L'arbitrage curatif
Plutôt qu'une réparation à l'aveugle immobilisant l'équipe :

- **frustum recalé manuellement** par l'opératrice 3D entre les prises ;
- **caméra sur pied** ;
- découpage ramené à des **plans fixes à légèrement panoramiques**.

Journée bouclée **sans temps mort**, légèrement en avance.

</div>
</div>

<!--
50 s. Raconter la scène sobrement. Le jury va vouloir savoir ce que j'ai fait :
je le dis en trois points. Puis je coupe court à toute auto-satisfaction — diapo suivante.
-->

---

<!-- _class: punch -->

# « J'ai été chanceux, pas prévoyant. »

<p>
L'arbitrage n'a rien coûté <strong>parce que le découpage se prêtait déjà à des plans fixes</strong>.
Avec des travellings prévus, la même défaillance faisait sauter la journée — et je n'avais
aucun plan de repli à proposer.
</p>

<!--
25 s. Marquer un temps. C'est la phrase que je veux que le jury retienne de la partie II.
La règle qui en découle : un dispositif dont la défaillance d'un maillon annule la valeur
ajoutée doit avoir un mode dégradé écrit, testé et chiffré avant le jour J. Une page.
Sur NoClip, ce document n'existait pas.
-->

---

<!-- _class: partie -->
<!-- _footer: '' -->

<div class="num">III</div>

# Les images

<h2>Ce que le dispositif a produit — et ce qu'il a perdu</h2>

---

## Quatre plans du montage final

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

<p class="legende" style="margin-top:0">
Images effectivement <strong>livrées</strong>, extraites du montage final — non des
prévisualisations.
</p>

<p class="legende">
<strong>En haut à gauche et en bas à gauche :</strong> le même plan d'ensemble du bureau,
caméra fixe. <strong>En haut à droite :</strong> le gros plan sur Ryan, là où le raccord
lumière <em>in-camera</em> est le plus lisible. <strong>En bas à droite :</strong> l'insert
écran, seul plan serré de la planche.
</p>

<div class="infobox">
<span class="t">Ce que la planche donne aussi à voir</span>
<strong>Quatre plans. Aucun mouvement d'appareil. Aucune parallaxe.</strong>
</div>

</div>
</div>

<!--
40 s. Montrer avant de commenter. Laisser 5 secondes de silence sur la planche.
Puis annoncer les deux diapos qui suivent : ce qui marche, ce qui manque.
-->

---

## Ce qui marche — et ce qui manque

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:34px;margin-top:14px">
<div>

### <span class="tag ok">Acquis</span> le raccord lumière
Le jaune du décor virtuel **baigne réellement le visage** de l'acteur : retours colorés
sur la peau, reflets dans les yeux, captés ***in-camera***.

Le **drap noir** fait son travail : le bas de cadre reste dans des noirs tenus.

Le **plan de feu fixe** est validé : prises superposables, aucune dérive à rattraper
à l'étalonnage, aucun *flicker*.

Les **matériaux** du décor 3D sont la meilleure part : moquette usée, papier peint
jauni, moisissures, GI Lumen crédible.

</div>
<div>

### <span class="tag ko">Perdu</span> la parallaxe
Privé de l'asservissement du frustum à la caméra, le mur LED n'est plus qu'un
**très grand fond lumineux**.

Aucun mouvement d'appareil ne vient « creuser » le décor. La mise en scène est
mécaniquement figée.

Le film y gagne une fixité oppressante qui, par chance, ne dessert pas les Backrooms :
**c'est un heureux hasard, pas un parti pris**.

Défauts résiduels : *tiling* sur les longs couloirs, éléments censés « vivre » qui ne
bougent pas — faute des revues d'asset que je n'ai pas tenues.

</div>
</div>

<!--
55 s. Équilibrer : je ne surjoue pas l'échec, le raccord lumière est un vrai acquis
technique. Mais je nomme précisément ce qui a été perdu, et la cause.
-->

---

## Le reproche technique le plus précis : le point nodal

<div class="techbox">
<span class="t">Pourquoi cela compte sur un plateau LED</span>
Le <strong>point nodal</strong> (centre d'entrée de la pupille) est le point autour duquel la caméra
doit pivoter pour que la perspective du fond reste juste.<br><br>
<strong>1. Justesse du frustum</strong> — nDisplay calcule la perspective depuis ce point. Mal renseigné,
les lignes de fuite du couloir ne tombent pas où elles devraient.<br>
<strong>2. Cohérence de la profondeur de champ</strong> — la distance caméra → mur sert de référence
pour placer le plan de netteté et choisir l'ouverture.
</div>

Faute de relevé rigoureux, l'ouverture a été choisie **à vue** plutôt que calculée : sur
plusieurs plans, l'arrière-plan est trop net pour un décor censé fuir vers l'infini, et la
texture du mur remonte plus qu'elle ne le devrait.

<div class="infobox">
<span class="t">La règle que j'en tire, pour la suite</span>
<strong>Aucun plan LED ne se tourne sans un relevé écrit du point nodal de l'optique montée,
de la distance au mur et de l'ouverture retenue.</strong> Trois valeurs, une ligne dans le rapport
image, dix secondes par changement d'optique.
</div>

<!--
50 s. C'est la diapositive technique de la soutenance. Le jury attend une maîtrise
du vocabulaire : point nodal, frustum, nDisplay, PdC. Terminer sur la règle, pas sur le regret.
-->

---

<!-- _class: partie -->
<!-- _footer: '' -->

<div class="num">IV</div>

# L'auto-critique

<h2>La question que j'aurais dû poser en amont</h2>

---

## Ce que je n'ai pas fait

<div class="notebox">
<span class="t">Quatre manquements, nommés</span>
</div>

- **Je n'ai pas coordonné.** Aucune réunion de préparation dédiée à la VP, aucun compte
  rendu écrit, aucune circulation organisée de l'information entre la 3D, l'image et la
  réalisation. Chacun a travaillé avec ce qu'il avait.
- **Je n'ai émis aucune préconisation préventive.** Ni sur la calibration, ni sur les marges
  à prévoir, ni sur le plan de repli en cas de défaillance.
- **J'ai tout fait au dernier moment.** L'essentiel de la préparation utile s'est concentré
  sur la dernière semaine. Le reste du calendrier est un calendrier d'intentions.
- **Je suis arrivé sur le plateau sans préparation.** Un superviseur qui découvre son
  plateau en même temps que son équipe n'a plus rien à superviser : il constate.

<p style="color:#8C8C7D;font-size:20px;margin-top:18px">
Je me suis peu investi dans ce projet, pour des raisons personnelles qui n'ont pas leur
place ici — mais dont je ne peux pas prétendre qu'elles n'ont pas eu de conséquences
professionnelles.
</p>

<!--
50 s. Ton neutre, pas contrit. Lire les quatre points sans les commenter.
Le jury jugera la lucidité, pas la performance. Enchaîner vite sur l'analyse utile.
-->

---

## L'analyse la plus utile ne porte pas sur le tracking

<h4>Elle porte sur le choix même du dispositif.</h4>

| Critère | Ce que suppose un plateau VP avec régie | Ce dont *NoClip* avait besoin |
|---------|------------------------------------------|-------------------------------|
| Nature des plans | Mouvements d'appareil, parallaxe, interaction acteur/décor | Plans fixes, cadres symétriques, séquences truquées courtes |
| Taille d'équipe | Équipe étoffée, postes spécialisés (LED, tracking, régie) | Petite équipe polyvalente |
| Effort | Charge concentrée sur le plateau | Charge concentrée en post-production |
| Coût dominant | Masse salariale d'une journée plateau | Temps de fabrication et de compositing |

<div class="infobox">
<span class="t">Le surcoût, et à qui il incombe</span>
L'essentiel du budget part en <strong>masse salariale de plateau</strong> pour un dispositif dont on
n'a exploité ni la parallaxe, ni le pilotage lumière, ni la liberté de mouvement. C'est un
surcoût d'équipe inutile, et <strong>c'est précisément le genre d'arbitrage qu'un superviseur doit
rendre avant qu'il ne coûte</strong>.
</div>

<!--
55 s. C'est le cœur de la soutenance côté NoClip. La valeur d'un superviseur ne se
mesure pas à sa capacité à faire fonctionner un dispositif, mais à sa capacité à dire
quel dispositif ne pas utiliser. Le corollaire : double casquette réalisation / supervision VFX.
-->

---

## Dispositif D — tournage hybride assisté par IA générative

<h4>Un projet à séquences truquées courtes et mise en scène peu dynamique n'a pas besoin d'un plateau : il a besoin d'un pipeline.</h4>

<div class="techbox">
<span class="t">Principe</span>
Tourner l'acteur en <strong>décor neutre maîtrisé</strong> (fond vert, ou mur sombre + sol traité), en
petite équipe, avec un <strong>relevé rigoureux</strong> de la caméra et de l'optique. Fabriquer ensuite
l'environnement en post selon un pipeline <strong>hybride</strong> : génération assistée pour matte
paintings, textures et variations ; outils classiques pour l'assemblage, le raccord et le
contrôle final. Le décor n'est jamais « généré » d'un bloc : il est <strong>fabriqué</strong>.
</div>

| <span class="tag ok">Avantages</span> | <span class="tag ko">Limites</span> |
|---|---|
| Sur 3 min d'effets, l'immobilisation d'un plateau ne s'amortit pas ; la fabrication, oui | S'effondre dès que la durée truquée augmente |
| Plans fixes ou peu mobiles : ce que ce pipeline traite le mieux | Interdit de fait la mise en scène ample |
| Économie de moyens réelle, budget étalé et pilotable | **Perte du retour *in-camera*** — la perte la plus lourde |
| Itérable sans rappeler l'équipe | Cohérence, traçabilité, cadre AI Act à contractualiser |

<!--
50 s. Annoncer que ce dispositif D est formulé APRÈS le tournage — c'est en soi le résumé
du chapitre 4. Et enchaîner : « je ne l'ai pas seulement formulé, je l'ai exécuté ». Transition
vers la partie V.
-->

---

<!-- _class: partie -->
<!-- _footer: '' -->

<div class="num">V</div>

# L'année sans entreprise

<h2>Veille, réseau, et un corpus fabriqué</h2>

---

## Je n'ai pas effectué la période en entreprise

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:34px;margin-top:12px">
<div>

### Ce que j'ai construit à la place
Une période autonome articulée autour d'une **veille soutenue sur l'IA appliquée aux
industries créatives** et d'un travail de mise en réseau.

**Trois fronts de veille :**
- l'**état réel des outils** — génération vidéo, *gaussian splatting*, pipelines à nœuds, agents ;
- l'**économie des métiers** — quelles tâches sont exposées, lesquelles ne le sont pas ;
- le **cadre normatif** — AI Act, traçabilité, souveraineté des données.

Le chapitre 6 du dossier en est la restitution argumentée.

</div>
<div>

### Ce que cela n'a pas apporté
<div class="notebox">
Une année sans entreprise, c'est une année <strong>sans plateau professionnel</strong>, sans
pipeline de production éprouvé, sans hiérarchie technique pour corriger un geste, et
sans la contrainte de livrer à un client.<br><br>
Les compétences d'ingénierie plateau — calibration, gestion des signaux, exploitation
<code>nDisplay</code> en conditions réelles et répétées — restent chez moi
<strong>théoriques et peu pratiquées</strong>. <em>NoClip</em> l'a montré.<br><br>
<strong>C'est le premier écart que je dois combler, et il ne se comble qu'en studio.</strong>
</div>

</div>
</div>

<!--
50 s. Ouvrir par la précision, sans détour. Puis équilibrer immédiatement :
ce que la période a produit, ce qu'elle n'a pas pu produire. Ne pas laisser le jury
poser la question à ma place.
-->

---

## Deux points d'ancrage collectifs

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:34px;margin-top:14px">
<div>

### Le collectif Creative Machines
Communauté de réflexion sur l'impact des IA génératives dans les industries culturelles
et créatives : chercheurs, artistes, développeurs, professionnels de l'animation, du VFX
et du jeu vidéo. Synthèses périodiques publiées.

<div class="infobox">
<span class="t">Ce que la veille individuelle ne donne pas</span>
Le <strong>désaccord documenté</strong>. On y lit aussi bien des retours d'intégration réussie que
des positions de refus argumenté. Cette tension m'a été plus utile qu'un consensus.
</div>

</div>
<div>

### La jam de Creative Seeds (Rennes)
3<sup>e</sup> édition des Rencontres Creative Machines, dans le cadre du Festival national du
film d'animation : **jam créative de 2,5 jours (4–6 avril 2026)** — production d'un
court-métrage combinant techniques traditionnelles et IA générative — puis une journée
de tables rondes.

<div class="infobox">
<span class="t">Ce que la jam m'a appris</span>
<strong>Le goulot d'étranglement n'est presque jamais la génération.</strong> Il est dans la
<em>direction</em>, la <em>cohérence</em> d'un plan à l'autre, et l'<em>assemblage</em>. Les équipes qui ont
livré sont celles qui avaient <strong>tranché leur intention le plus tôt</strong>.
</div>

</div>
</div>

<!--
50 s. Faire le rapprochement explicite : c'est exactement le diagnostic que je porte sur
ma supervision de NoClip. Dans les deux cas, ce qui manquait n'était pas de la technique,
mais de la décision rendue en temps utile. Cette jam a été le meilleur retour critique
que j'ai reçu sur mon propre travail.
-->

---

<!-- _class: media -->
<!-- _footer: '' -->

<div class="cadre">
<img src="sources_slides/media/nation_titre.jpg" alt="NATION — Désert & Gardes, du rush au composite">
<div class="sur">
<h2>NATION — le corpus produit pendant cette année</h2>
<p>Un projet personnel mené de mars à septembre 2026, hors cadre scolaire : décor de désert
et séquence de gardes, entièrement fabriqués en post-production. Trois montages de démonstration,
ajoutés au dossier de travail le <strong>8 septembre 2026</strong>.</p>
</div>
</div>

<!--
35 s. Annoncer : ce corpus n'est pas dans le PDF remis, il est référencé dans mes fichiers
de contexte et projeté ici. C'est le versant « travail » de l'année, en regard du versant « veille ».
Cinq couches croisées : document, rush, base, rendu, retenu. Conduite Premiere Pro de 654 clips.
-->

---

<!-- _class: media -->
<!-- _footer: '' -->

<div class="cadre">
<img src="sources_slides/media/nation_neuf_rushs.jpg" alt="Neuf rushs sur fond vert et maquette">
<div class="sur">
<h2>Le plateau : neuf rushs, aucun désert</h2>
<p>La tour est une <strong>maquette posée sur un tas de sable</strong>, filmée en intérieur. Les comédiens sont
tournés <strong>sur fond vert</strong>, en studio et en extérieur. <strong>Aucun désert n'a été filmé</strong> — c'est
exactement le décor neutre maîtrisé que décrit le dispositif D.</p>
</div>
</div>

<!--
35 s. C'est le point de bascule de la soutenance : le dispositif D n'est pas une hypothèse
de fin de dossier, c'est ce que j'ai pratiqué pendant l'été. Montrer le vert, montrer la maquette.
-->

---

<!-- _class: media -->
<!-- _footer: '' -->

<div class="cadre">
<video src="NATION_Desert_Gardes_Chaine_Complete.mp4" controls preload="metadata"
       poster="sources_slides/media/nation_rush_masque_base.jpg"></video>
<div class="sur">
<h2>Du rush au composite — cinq couches croisées</h2>
<p><strong>Rush</strong> (fond vert) · <strong>masque</strong> (durée exacte du plan) · <strong>base</strong> (le plan tel qu'il est monté) ·
<strong>rendu</strong> · <strong>retenu</strong>. Trois états de la même seconde, appariés au photogramme.
<em>5 min 00 · six actes.</em></p>
</div>
</div>

<!--
35 s. Montrer 20 s de l'acte IV (la garde à la fiole) : rush / masque / base côte à côte.
C'est la démonstration la plus directe que le désert n'existe qu'en post.
-->

---

<!-- _class: media -->
<!-- _footer: '' -->

<div class="cadre">
<video src="NATION_Desert_Chaine_Fabrication.mp4" controls preload="metadata"
       poster="sources_slides/media/nation_quatre_etats.jpg"></video>
<div class="sur">
<h2>La chaîne de fabrication — même image, même seconde</h2>
<p>Quatre états d'un même plan lus en synchrone : plate sur fond noir, fond gris de calage,
décor froid, décor doré. <strong>Seul l'état du décor change</strong> — le montage, lui, ne bouge pas.
<em>3 min 00 · lecture par acte.</em></p>
</div>
</div>

<!--
Si le temps le permet : lancer 30 à 40 s de la lecture synchrone (acte I).
Sinon commenter le poster. Le point : la comparaison est faite à timecode égal,
pas à l'estime — c'est ce qui rend le progrès démontrable.
-->

---

<!-- _class: deux -->

## Fabriquer, ce n'est pas générer

<div class="cols">
<div>

<img src="sources_slides/media/nation_decor_neuf_essais.jpg" alt="Neuf essais du décor seul" style="width:100%">
<p class="legende"><strong>Neuf essais du décor seul</strong>, sans les personnages. L'heure dorée est
explorée pendant cinq heures — <strong>elle ne sera pas retenue</strong>.</p>

</div>
<div>

<img src="sources_slides/media/nation_choix_final.jpg" alt="Écarté contre retenu" style="width:100%">
<p class="legende"><strong>Écarté / retenu.</strong> Le plan le plus spectaculaire est abandonné au profit
d'un plan délavé, qui raccorde avec le reste de la scène.</p>

</div>
</div>

<div class="infobox" style="margin-top:12px">
<span class="t">C'est là que se joue le métier</span>
La génération produit des options en quelques minutes. <strong>Le travail consiste à en refuser
huit sur neuf</strong>, pour une raison de raccord — exactement la décision qu'un superviseur doit
savoir rendre, et rendre tôt.
</div>

<!--
45 s. Diapositive clé de la partie V. Faire le lien explicite avec la jam (« trancher son
intention tôt ») et avec le chapitre 4 (« décider tôt, écrire ce que je décide »).
-->

---

<!-- _class: media -->
<!-- _footer: '' -->

<div class="cadre">
<video src="NATION_Desert_Evolution_Retakes.mp4" controls preload="metadata"
       poster="sources_slides/media/nation_lecture_synchrone.jpg"></video>
<div class="sur">
<h2>L'évolution par retakes — six versions, un seul timecode</h2>
<p>Le plan du monolithe traverse <strong>six rendus en une seule journée</strong> : densité atmosphérique
poussée à l'excès, puis redescendue jusqu'à l'équilibre retenu. <em>2 min 00.</em></p>
</div>
</div>

<!--
30 s. Insister sur la méthode : chaque version est comparée au même photogramme.
C'est un protocole de validation, pas une galerie de rendus.
-->

---

## Le corpus en chiffres

<div class="kpi">
<div><div class="n">654</div><div class="l">clips dans la conduite<br>Premiere Pro (timebase 25)</div></div>
<div><div class="n">10</div><div class="l">plans traités<br>du rush au composite</div></div>
<div><div class="n">16</div><div class="l">rendus VFX<br>18 juil. → 4 sept. 2026</div></div>
<div><div class="n">5</div><div class="l">couches croisées<br>document · rush · base · rendu · retenu</div></div>
</div>

<div class="techbox" style="margin-top:20px">
<span class="t">Méthode de traçabilité</span>
<strong>1. La conduite fait foi</strong> — le XML donne le rush source, le TC et le point d'entrée de chaque plan.<br>
<strong>2. Appariement par durée</strong> — un rendu sans métadonnée se rattache à son plan par égalité exacte de durée.<br>
<strong>3. Synchronisation vérifiée</strong> — chaque raccord est contrôlé au photogramme avant d'être monté.<br>
<em>Alternance 4K / proxy 720p : itérations rapides en HD, validations en 3840×2160. Montage ffmpeg 8.1.1, 1920×1080, 25 fps, H.264.</em>
</div>

<!--
40 s. Ces chiffres répondent à une objection prévisible du jury : « ce n'est pas un cadre
professionnel ». Non — mais c'est un cadre documenté, versionné, reproductible. C'est ce
que j'avais à démontrer, faute de studio.
-->

---

## NoClip / NATION — la même leçon, dans les deux sens

| | ***NoClip*** (juin 2026) | ***NATION*** (mars → sept. 2026) |
|---|---|---|
| Dispositif | Plateau LED complet, régie, équipe étoffée | Décor neutre + fabrication en post |
| Décision de dispositif | Rendue **avant** l'analyse d'adéquation | Rendue **à partir** de cette analyse |
| Ce qui manquait | La décision rendue en temps utile | — |
| Traçabilité | Aucun compte rendu, aucun relevé écrit | Conduite XML, appariement par durée, contrôle au photogramme |
| Retour *in-camera* | <span class="tag ok">acquis</span> raccord lumière réel | <span class="tag ko">perdu</span> reconstruction en post |
| Résultat | 4 plans, aucune parallaxe | 10 plans, aucun désert filmé |

<div class="infobox">
<span class="t">Ce que la mise en regard démontre</span>
Je ne prétends pas que le dispositif D soit supérieur : il perd le retour <em>in-camera</em>, et
c'est lourd. Je prétends qu'il était <strong>le bon choix pour un projet comme <em>NoClip</em></strong>, et que
je sais désormais instruire ce choix — parce que je l'ai exécuté de bout en bout.
</div>

<!--
50 s. La diapositive qui referme la partie V. C'est ma réponse à « qu'avez-vous fait de
votre année ? » : j'ai transformé une conclusion de dossier en pratique vérifiable.
-->

---

<!-- _class: partie -->
<!-- _footer: '' -->

<div class="num">VI</div>

# Veille & projet

<h2>Où va le métier, où je vais</h2>

---

## IA en 2026 : deux régimes, une exigence

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr;gap:34px;margin-top:14px">
<div>

### Générative
Produit du **contenu** : une texture de moquette usée, une variation de néon, un matte
painting, un *upscaling*, un débruitage.

### Agentique
Orchestre des **tâches outillées** : préparer une scène, trier des assets, tenir un dépôt
de versions, produire un document.

</div>
<div>

<div class="techbox">
<span class="t">Quatre mouvements dans les outils</span>
la <strong>génération vidéo</strong> comme front le plus actif · le <strong>gaussian splatting</strong> qui recompose
le rapport captation / 3D · les <strong>pipelines à nœuds</strong> reproductibles · les <strong>agents</strong>
pilotant les logiciels.
</div>

<div class="infobox">
<span class="t">Mon garde-fou</span>
Tout outil qui ne sait pas répondre à <strong>« comment versionne-t-on ce résultat ? »</strong>
reste hors pipeline.
</div>

</div>
</div>

<!--
40 s. Ne pas faire un catalogue. Deux régimes, quatre mouvements, un garde-fou.
Le jury retient le garde-fou.
-->

---

## Du GUI au CLI : ce que le virage d'Unreal Engine 6 nous dit

Les logiciels de création cessent d'être exclusivement **pilotés par interface graphique**
pour redevenir **pilotables en ligne de commande et par script**. Ce n'est pas une
régression ergonomique : **c'est ce qui rend un logiciel adressable par un agent**.

<div class="techbox">
<span class="t">Le cas Unreal Engine 6</span>
UE6 unifie UE5 et UEFN et fonde son framework de gameplay (<em>Scene Graph</em>) sur <strong>Verse</strong>,
langage <strong>interprété</strong>, appelé à se substituer au modèle Actor et au tout-C++ précompilé.
Un langage interprété se recharge à chaud, se génère et se corrige par fragments : il est
<strong>écrivable par un agent</strong>. En parallèle, un pont de type <em>Model Context Protocol</em> permet
déjà de piloter scènes et entités depuis un terminal.
</div>

<div class="infobox">
<span class="t">Conséquence pour le métier</span>
La frontière entre « utiliser un logiciel » et « programmer un pipeline » s'estompe.
La compétence de <strong>scripting</strong> redevient discriminante pour un superviseur.
</div>

<!--
45 s. C'est la section de veille la plus opérationnelle pour mon projet professionnel.
Elle prépare la diapositive suivante sur mon propre harnais.
-->

---

## Mon harnais : la ligne de partage

<h4>Ce dossier a été rédigé dans un harnais agentique adossé à un modèle frontière propriétaire, pas à un modèle <em>open weight</em> local. C'est délibéré.</h4>

| Critère | Modèle frontière (retenu) | Modèle *open weight* local |
|---|---|---|
| Efficacité | Tient un document long sans perdre la cohérence | Découpage fin, beaucoup de reprises |
| Simplicité | Un harnais, une clé, aucune infrastructure | Quantification, VRAM, mises à jour |
| Souveraineté | <span class="tag ko">point faible</span> les données transitent par un tiers | <span class="tag ok">point fort</span> rien ne sort de la machine |
| Pérennité | Dépendance au fournisseur et à ses versions | Poids archivables, rejouables dans cinq ans |

<div class="infobox">
<span class="t">La règle que je me fixe</span>
<strong>Modèle frontière pour la méthode et les documents publiables ; inférence locale dès que la
donnée est critique</strong> (rushes, scénario non déposé, éléments identifiants d'équipe). Le
<strong>choix du lieu d'exécution est une décision de supervision</strong> à part entière, au même titre
que le choix d'un dispositif de tournage. Prolongement naturel : un <strong>serveur d'inférence sur
le réseau du studio</strong>, exposé aux stations comme un render node.
</div>

<!--
50 s. Anticiper la contradiction que le jury va relever : je défends l'open source et
j'utilise un modèle propriétaire. Je réponds par la ligne de partage sur la NATURE
des données, et par la portabilité de l'architecture.
-->

---

## Ce dossier est le premier prototype du framework

<h4>Méthodologie ICM (<em>Interpreted Context Methodology</em>, Jake Van Clief) : la structure de dossiers <strong>est</strong> l'architecture de l'agent.</h4>

<div class="cols" style="display:grid;grid-template-columns:1.1fr 1fr;gap:32px;margin-top:12px">
<div>

<div class="techbox">
<span class="t">Cinq couches, chargées à la demande</span>
<strong>0</strong> · <code>CLAUDE.md</code> — qui suis-je<br>
<strong>1</strong> · <code>CONTEXT.md</code> — où vais-je (routage)<br>
<strong>2</strong> · <code>stages/NN-*/CONTEXT.md</code> — contrat d'étape<br>
<strong>3</strong> · <code>references/</code> — fond, forme, init<br>
<strong>4</strong> · artefacts de la passe en cours
</div>

<p style="font-size:20px">
Quatre principes : <strong>source unique de vérité</strong> · <strong>références à sens unique</strong> ·
<strong>contexte minimal</strong> (ne charger que la section utile) · <strong>routage, pas contenu</strong>.
</p>

</div>
<div>

<div class="infobox">
<span class="t">Ce que la méthode produit ici</span>
Un PDF de 45 pages et <strong>ce support de soutenance</strong> sortent de la même arborescence
versionnée en Git, lisible par n'importe quel modèle. Rien n'est enfermé dans un service :
changer de moteur ne coûte que de changer de moteur.
</div>

<div class="notebox">
<span class="t">La motivation vient de mes manquements</span>
Les documents que je n'ai pas produits sur <em>NoClip</em> — comptes rendus, relevés, notes
de supervision — sont exactement ceux dont la rédaction doit devenir <strong>peu coûteuse</strong>
pour être tenue.
</div>

</div>
</div>

<!--
50 s. C'est le pont entre l'auto-critique du chapitre 4 et le projet professionnel.
Si le jury pose une question sur l'usage de l'IA, c'est ici que je réponds :
transparence AI Act déclarée, analyse et responsabilité du contenu miennes.
-->

---

## Environnement et écoproduction

La production virtuelle est souvent présentée comme « verte ». Elle l'est en partie —
elle supprime la construction et la destruction de décors, réduit transports et repérages —
mais elle **déplace l'empreinte** vers la consommation électrique du mur LED et des
stations de rendu. Faire de la veille environnementale, c'est **mesurer ce déplacement
plutôt que le masquer**.

<div class="infobox">
<span class="t">Le cas d'école, c'est <em>NoClip</em></span>
Mobiliser un plateau LED complet pour une journée dont on n'exploite ni la parallaxe ni le
pilotage lumière, c'est consommer sans contrepartie. <strong>L'inefficience écologique et
l'inefficience budgétaire ont ici exactement la même cause.</strong>
</div>

**Leviers de sobriété qui relèvent du superviseur :** optimiser la scène pour tenir la
cadence sans surconsommer le GPU · mutualiser une seule journée de plateau ·
dimensionner le mur LED au strict nécessaire · éteindre ce qui ne tourne pas · et, en
amont de tout cela, **ne pas retenir un dispositif que le projet ne justifie pas**.

<!--
35 s. Court. Le point à faire passer : l'écoproduction n'est pas un supplément d'âme,
c'est une contrainte de conception qui rejoint l'optimisation technique.
-->

---

## Projet professionnel

<div class="cols" style="display:grid;grid-template-columns:1fr 1fr 1fr;gap:26px;margin-top:14px">
<div>

### Court terme
Rejoindre une **structure de plateau LED** ou de prestation VFX temps réel à un poste
d'**opérateur** : opérateur 3D temps réel, assistant superviseur, ingénierie plateau.

<p style="font-size:19px;color:#8C8C7D">Ce n'est pas une ambition revue à la baisse : c'est le
constat que l'expérience de plateau répétée est ce qui me manque, et qu'on ne l'acquiert
pas en supervisant.</p>

</div>
<div>

### Moyen terme
Un profil de **superviseur VFX à double casquette**, capable d'intervenir **en amont du
découpage** plutôt qu'en aval.

<p style="font-size:19px;color:#8C8C7D">La valeur d'un superviseur ne se mesure pas à sa
capacité à faire fonctionner un dispositif, mais à sa capacité à <strong>dire quel dispositif ne pas
utiliser</strong>. C'est un métier d'arbitrage économique et narratif autant que technique.</p>

</div>
<div>

### En parallèle
Poursuivre le **framework de production de documents de travail** pour le suivi
audiovisuel : notes de supervision, rapports image, découpages annotés, comptes rendus
de test.

<p style="font-size:19px;color:#8C8C7D">Adossé à un harnais agentique documenté, avec la
ligne de partage frontière / local comme règle d'exécution.</p>

</div>
</div>

<!--
45 s. Les trois horizons. Le jury doit entendre que le court terme est un choix
raisonné, pas un repli.
-->

---

<!-- _class: punch -->

# *NoClip* ne m'a pas prouvé que je savais superviser.

<p style="font-size:26px;line-height:1.4;max-width:26em;margin:22px auto 0">
Il m'a montré, de manière peu confortable mais utile, <strong>à quelle condition je pourrai le
faire</strong> : décider tôt, écrire ce que je décide, et savoir refuser un dispositif que le projet
ne justifie pas.
</p>

<!--
20 s. La phrase de clôture du chapitre 5. La dire lentement, puis se taire.
-->

---

<!-- _class: fin -->
<!-- _footer: '' -->

# Merci

<p style="font-size:22px;color:#8C8C7D;line-height:1.7;margin-top:26px">
<strong style="color:#F4EDC0">Etienne Baron</strong> · 2<sup>ème</sup> année Superviseur de Production Virtuelle<br>
École Georges Méliès — Orly, Grand Paris · Septembre 2025 – Septembre 2026<br><br>
Dossier complet : <code>Dossier_Professionnel_SPV_NoClip_BARON.pdf</code> (45 p.)<br>
Montage final de <em>NoClip</em> et corpus <em>NATION</em> : liens et fichiers fournis au jury
</p>

<div class="notebox" style="max-width:44em;margin:26px auto 0;text-align:left">
<span class="t">Transparence — usage de l'intelligence artificielle (AI Act, Règlement (UE) 2024/1689)</span>
La mise en forme éditoriale du dossier et de ce support a bénéficié d'outils d'IA générative et
agentique. L'analyse, les choix techniques, les arbitrages de supervision et la responsabilité du
contenu demeurent intégralement ceux de l'auteur.
</div>

<!--
Fin. Rester sur cette diapositive pendant les questions.
Questions anticipées : (1) pourquoi ne pas avoir diagnostiqué le tracker ? (2) le dispositif D
tient-il sur un long-métrage ? (3) l'IA remplace-t-elle le superviseur ? (4) qu'avez-vous
retiré de l'année sans entreprise ?
-->
