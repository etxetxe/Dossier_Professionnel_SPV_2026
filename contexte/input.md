# input.md — Données rédactionnelles et archive des sources

> **Archive autoportante.** Ce fichier concentre **toute la matière** du dossier *et* le
> contenu extrait des documents sources, qui ont été **retirés du dossier de travail**
> (juin 2026) après extraction. Les fichiers originaux restent récupérables dans
> **l'historique git** (commit « Initial commit » et antérieurs) et, pour les deux documents
> publiés (mémoire Belyakov, carnet EESI), auprès de leurs éditeurs.
>
> Pour la *forme* LaTeX → `system.md`. Pour l'*initialisation* → `setup.md`.

---

## 1. Le projet

Portfolio professionnel (« Dossier Professionnel SPV ») d'**Etienne Baron**, 2ᵉ année
**Superviseur de Production Virtuelle** (École Georges Méliès, Orly — Grand Paris).
Le document couvre sa supervision des séquences en production virtuelle du court-métrage
étudiant ***NoClip*** (scénario original de **Charlotte Strauch**, promotion 2ᵉ année SPV, 2026).
Univers visuel : *Backrooms* (jaune, couloirs liminaux, néons, moquette humide).

---

## 2. Inventaire des documents sources

| Document (retiré du dépôt)                            | Type | Statut d'extraction |
|------------------------------------------------------|------|---------------------|
| `Histoire de la Production Virtuelle.docx`           | Notes de cours | **Intégral** → § 3.1 |
| `Prise de vue en production virtuelle.docx`          | Notes de cours | **Intégral** → § 3.2 |
| `Initiation à Unreal Engine.docx`                    | Notes de cours | **Intégral** → § 3.3 |
| `Optique appliquée de l.docx`                        | Notes de cours | **Intégral** → § 3.4 |
| `Réglementation de la production audiovisuelle.docx` | Notes de cours | **Intégral** → § 3.5 |
| `NoClip_Screenplay.pdf`                              | Scénario | **Intégral** → § 3.6 |
| `Découpage Technique _ NoClip.xlsx`                 | Découpage | **Intégral** → § 3.7 |
| `PAV-Salaires-minima-...-2026.xlsx`                 | Grille salariale | **Chiffres clés** → § 3.8 |
| `Configuration_nDisplay_Plateau_Virtuel.pdf`        | Schéma whiteboard | **Relevé** → § 3.9 |
| `Pipeline Production Virtuelle.pdf`                  | Schéma whiteboard | **Relevé** → § 3.10 |
| `ENSLL_CINEMA_BELYAKOV_2023.pdf`                    | Mémoire de master (publié) | **Digest** → § 3.11 |
| `baron-etienne-bifurcation-carnet-...pdf`           | Carnet de recherche (publié) | **Digest (style)** → § 3.12 |

---

## 3. Archive du contenu extrait

### 3.1 Histoire de la Production Virtuelle — Alexia de Mari (cours, oct. 2025)

Historienne de la technique, chroniqueuse à *Mediakwest*. Réf. : *Livre Blanc de la Production
Virtuelle*. Cité `demari2025`. **Cours du 15 octobre 2025 — structuration de l'industrie VFX :**

- **Précurseurs XIXᵉ** : images stéréoscopiques (1860, parallaxe), zootrope, praxinoscope,
  *Pepper's Ghost* (premier « hologramme », image projetée en transparence sur drap). Pelure /
  pelure d'oignon (intervalle de frame). 3D stéréoscopique depuis 1950 (lunettes actives /
  passives). **Panoramas** : immenses décors peints à l'échelle 1:1 (mégalographie pompéienne),
  fuites de perspective + éléments réels → **ancêtres des murs LED**.
- **TV souvent précurseur** des nouvelles technologies (murs LED depuis 2010) avant affinage cinéma.
- **Méliès** : spectateur de *L'Entrée en gare de La Ciotat* (1896) ; 1895 photosensibilité 4 ISO
  (éclairage intense requis) ; *Le Voyage dans la Lune* (1902, surimpression). Issu du spectacle,
  explique ses trucages. 1910 : cinéma = 7ᵉ art (Ricciotto Canudo). Matte-painting sur verre
  (péplum, Star Wars). *Die Hard 2* : pull-out décor aéroport.
- **VFX en France** : ambition politique 70-80 (synthèse 2D puis 3D). Jacques Peyrache (TF1,
  Explore → Maya après rachat Autodesk, 100 000 F/min). Speakerines & génériques. MacGuff (étudiants
  cinéma), J.-B. Mondino (1986, *C'est comme ça* ; morphing années 90). Donkey Kong 3D sur KD2A
  (1997). Christian Guillon (*Les 1001 nuits*, 1989). BUF : caméra virtuelle dès années 90.
  Mikros Image (1985, Maurice Prost).
- **Contexte économique** : plan Thomson/Siemens (60-70) ; *L'informatisation de la société*
  (1977, Giscard) ; Mitterrand : Plan Recherche-Image (1983-1990), Grands Projets, EX MACHINA
  (filiale Thomson), Explore avec Thomson Digital Image. **CNC** : aides sélectives (créativité),
  automatiques (150 k€ doc → 1 M€ cinéma), **C2I** crédit d'impôt international (> 2 M€). 90 % des
  dépenses VFX françaises réalisées en France. **France 2030** volet ICC (studios).
- **Jalons VFX mondiaux** : *Westworld* (Heffron 1976), *Le Trou noir* (1979), *Tron* (1982,
  rotoscopie manuelle), *Young Sherlock Holmes* (1985, 1ʳᵉ incrustation 3D, John Lasseter),
  *Abyss* (1989), *Terminator 2* (1992), *Titanic* (1997, « plan à 1 M$ »), *Jurassic Park* (1993,
  troupeaux), *The Mask* (1994), *La Momie* (1999, ILM « Carri »). Motion capture (réalisme →
  ordinateur). *Final Fantasy* (2001, uncanny valley, flop). **Gollum** (2002→2013, subsurface
  scattering). Assombrissement colorimétrie post-11-Septembre. *Pôle Express* (2004, performance
  capture, cf. thèse J.-B. Massuet 2013). Réémergence 3D stéréo 2008-2012. *Benjamin Button* (2010).
- **Avatar** (Cameron, 2009) : 1ᵉʳ film entièrement numérique ; **SolidTracks** (Solidanim) —
  caméra de profondeur + moteur temps réel, préviz on-set, données de tracking encapsulées in-situ
  pour la post-prod → préfigure la VP.
- **Moteurs temps réel** issus du jeu : Doom Engine (1993), id Tech 2 / Quake II (1996),
  **Unreal Engine** (1997 ; raycasting → raytracing depuis 2018). Solutions maison (Quantic Dream,
  *Star Wars Eclipse*) pour échapper au modèle économique Epic/Unity.
- **Typologie de préviz** : **LiveVis** (temps réel sur LED), **TechVis** (analyse technique préprod),
  **PostVis** (après rushes), **PitchVis** (avant fabrication, convaincre studios). *Oblivion* (2013,
  écrans géants 360°).
- **Cours du 16 octobre 2025** (Tim de Gousseancourt, CIFRE Solidanim) : la VP transforme les
  hiérarchies des corps de métier (VFX dès la préprod). Choc des cultures jeu vidéo / audiovisuel
  (anecdote Laurent Stehlin : « les électros ont coupé le courant, tous les PC se sont éteints »).
  Nécessité d'un **langage commun** et de workflows partagés. *L'Anglaise et le Duc* (Rohmer, 2001,
  BUF, tableaux peints). *Les Visiteurs* (1990, 1ᵉʳ succès CGI français). Superviseurs VFX venus de
  la post-prod : difficulté d'intégration au plateau. *The Mandalorian* (2019, **StageCraft** ILM,
  marketing Epic). Murs LED issus du spectacle/TV ; cas d'usage fréquent : **Rolling** (scènes de
  voiture, réflexions). Pitch = dot per pixel (Sony, Samsung, ARRI, Parrot ; MicroLED fin 2010-2020).
  **Moiré** : superposition trame pixels LED / matrice photosites ; attention distance, angle,
  position, synchronisation.
- **Réalités** : AR (augmentée), XR (étendue, générique), MR (mixte), VR (virtuelle, visiocasque).
- **Définition VP (Justine Coulmy)** : « Toutes les chaînes de fabrication cinématographiques et
  audiovisuelles impliquant l'association simultanée d'outils de prise de vue réelle et d'espaces
  virtuels. » Trois familles : productions entièrement virtuelles (mocap/tracking, *Avatar*) ;
  techniques VP appliquées à la prise de vue réelle (fond vert/bleu) ; plateau virtuel (LED + caméra).
- **Atouts VP** : gain de temps/coûts (variable), liberté artistique (sci-fi/fantastique), résultat
  quasi immédiat (moins de post-prod), environnement maîtrisé (lumière, météo), immersion acteur,
  CO₂ (variable). **Inconvénients** : techniquement lourd (LED, PC, réseau de synchro, tracking) ;
  gros travail en préprod ; rendu « jeu vidéo » d'Unreal ; difficulté à mêler effets pratiques et
  numériques. Netflix & Amazon = principaux utilisateurs en France (cahier des charges 4K).
  *1899* (Netflix, 2022). Weta : « point de rencontre entre monde physique et monde numérique ».
- **Rôles** : **Producteur VP** (pilote, devis, planning, binôme du superviseur) · **Superviseur VP**
  (expert, justifie la pertinence artistique/technique en amont, conseil) · **Directeur Technique**
  (fiabilité du dispositif pour le prestataire, fluidité du workflow) · **Opérateur VP** (exécution
  du contenu virtuel pendant le tournage, ajuste le décor temps réel). Détail des étapes (écriture,
  préproduction, prévisualisation, tournage avec prélight virtuel, postproduction) et de tous les
  postes (chefs de poste, plateau, son, post-prod, distribution) consigné dans le cours.

### 3.2 Prise de vue en production virtuelle — Camille Jaulent, chef-op (cours). Cité `jaulent2025`

- **Capteur** : CMOS à photosites, matrice de Bayer (damier coloré), dématriçage → pixel.
  Définition (nb pixels) vs résolution (densité) ; les caméras cinéma ont une résolution moindre pour
  plus de lumière/photosite et une meilleure dynamique. Tailles : Full Frame (24×36) vs Super 35.
- **Focale** : longue = grossissement fort + champ étroit ; courte = inverse. Équivalences :
  35 mm en S35 ≈ 50 mm en FF (≈ vision humaine).
- **Diaphragme** : 1.4-2-2.8-4-5.6-8-11-16-22 (×2 entre crans) ; *sweet spot* ≈ 2 diaph. au-dessus.
- **PdC (DOF)** — paramètres : u (distance de MAP), N (ouverture), C (cercle de confusion), f (focale).
  Outils : Artemis, F8, Pocket AC, dofsimulator.net. **Objectif : éliminer le moiré du mur LED.**
  Plus le focus est loin / l'ouverture fermée / la focale courte → PdC plus grande. Hyperfocale.
- **Exposition** : **ISO** (sensibilité physique nominale) vs **EI / Exposure Index** (ce qu'on règle ;
  plus bas = plage plus profonde mais sous-exposée). **Shutter** lié à la cadence (25 i/s → 1/50,
  angle 180°). **ND** (densité neutre) : ×2 = ±1 diaph. Balance des blancs : 5600 K (soleil, réf.).
- **Gamut & gamma** : gamut = espace colorimétrique (sRGB écrans PC, **Rec.709** TV, **DCI-P3** cinéma) ;
  gamma = répartition luminance (2.2 PC, 2.4 TV, 2.6 cinéma). Tournage en log : **S-Log3** (Sony),
  LogC (Canon), V-Log. **Caméra VENICE 2** : simulateur de menus sur le site Sony.
- **Les écrans LED** : structure, définition, résolution, **pitch** (écart centre-pixel ; + petit =
  + cher mais rapprochement possible, - lumineux ; 20→1 mm). Pitch des panneaux latéraux/plafond plus
  grand (plus lumineux : 2.8 vs 3.9). Candela (cd/m²), contraste, température (**D65 = 6500 K** norme
  Rec.709/2020), gamma, gamut, fréquence (Hz).
- **Filmer un écran** : choisir le bon shutter (50 Hz → 1/50, 1/25 ; 100 Hz → 1/100…).
  **Genlock** (synchro temporelle, par le prestataire, vigilance 1ᵉʳ assistant + superviseur).
  **Moiré** : + grande définition capteur = + de risque ; + petit pitch = - de risque ; + grand
  capteur = - de risque. PdC : le pixel doit = le cercle de confusion. Attention reflets dans les yeux,
  nature des optiques (piqué, vintage, anamorphique), cadre (distance, focale, angulation).

### 3.3 Initiation à Unreal Engine — Gilbert Demorgny (cours, 2025). Cité `demorgny2025`

- **Objectif** : réaliser une petite cinématique (≥ 1 personnage, 2 animations, 2 effets lumière,
  plusieurs mouvements/changements de caméra), un maximum sans post-prod, dans Unreal.
- **Interface** : Content (répertoire des éléments importés, chemins relatifs), Scene/Level/Maps,
  Viewport, **Sequencer** (timeline), Outliner (contenu de la scène), Content drawer (Ctrl+Space).
- **Actor** = 1 élément (lumière, son…) avec ≥ 1 Transform (position/rotation/scale, vector3, en cm).
  World vs Local, hiérarchie / parenting. **Mesh** = modèle 3D : Static (ne bouge pas) vs Skeletal
  (riggé, animable). Détails = réglages par acteur. Level = sous-niveau (variantes, notamment lumière).
- **Navigation** : f = focus, w/e/r = location/rotation/scale, Lit/Unlit.
- **PBR (Physical Based Rendering)** — textures :
  - **Albedo / Base color / Diffuse** : capacité d'une matière à renvoyer la lumière.
  - **Metallic** : capacité de réflexion.
  - **Roughness (rugosité)** : capacité d'absorption de la lumière.
  - **Normal map** : relief de surface (gère le rebond lumineux sans ajouter de polygones).
  - **Emissive** : surface qui émet de la lumière et ne reçoit plus d'ombre.
  - Modifier un matériau : StaticMeshActor → Materials → Create Instance → Open → Modify Parent.
- **Lumière** : Attenuation radius = distance d'éclairage. **Post-process** (PostProcessVolume) :
  Bloom, motion blur, DoF, exposure.
- **Personnage** : Mesh (UV/texture) + Squelette (rig/bones) + Animations. Sequencer = 1 ligne/track/élément.
  Look-at tracking. CineSpline (path). Import anim (« import anim only »). Nouveau perso : laisser le
  skeletal mesh vide (Unreal génère un squelette). **Retarget** : Mixamo → Unreal skeleton → Metahuman.
  Pivot décalé : Modeling → XForm → Edit pivot → Bottom. **Movie Render Queue** (sortie).

### 3.4 Optique appliquée — Pascal Martin (ENS Louis-Lumière / La Fémis)

- **Caractériser un objectif** : qualitatif (correction des aberrations, finition, usage) vs
  quantitatif (focale, ouverture, champ, type). Inducteur esthétique (dur/tendre/chaud/froid) et de sens.
  Toute image issue d'une lentille comporte des aberrations.
- **Lois** : Descartes (réfraction n·sin i = n'·sin i', n = c/v) ; Newton (FA·F'A' = f²) ; grandissement
  Gy. Lentilles convergentes (donnent des images) vs divergentes. F = foyer objet, F' = foyer image.
  Logiciel libre OptGeo.
- **Histoire** : Niépce (« œil artificiel », ajout du diaphragme, 1816), FTM (fonction de transfert de
  modulation), Petzval (exposition 30 min → 2 min), Carl Zeiss, Angénieux + Cuvillier (zoom/rétrofocus).
- **Conception** : coating / traitement anti-reflet, pompage, mise au point interne. **Cinémascope** :
  hypergonard de François Chrétien (1927), engouement US années 50 (face à la TV), *La Tunique* (1953).
- **Œil & focale** : focale « normale » ≈ celle de l'œil (≈ 22 mm). Rétine : cônes (jour/couleur,
  6-8 M), bâtonnets (nuit/N&B, 130-150 M), fovéa. Cercle de couverture, vignetage, focales équivalentes.
- **Focale → point de vue** : le **travelling modifie la perspective, le zoom non** (effet *Vertigo* =
  travelling arrière + zoom avant). Ouverture : progression géométrique de raison √2.
- **PdC / flou-net** : cercle de confusion, continuum entre flou et net de part et d'autre de la MAP.

### 3.5 Réglementation de la production audiovisuelle (cours)

Hiérarchie des sources du droit du travail : Droit international (OIT) → Droit européen (directives,
transposées) → Constitution → Lois/Règlements/Décrets/Ordonnances → Conventions collectives →
Accords d'entreprise → Contrats de travail. Code du Travail (1910). Convention collective de branche
(code NAF/APE). Jurisprudence (Conseil d'État, Cour de cassation). Sources internes : accord
d'entreprise, règlement intérieur, contrat, engagements unilatéraux, usages. Loi : projet
(gouvernement) / proposition (Parlement) ; décret = 2ᵉ partie (modalités). Réf. : legifrance.gouv.fr.
→ Cadre la mise en regard avec l'**AI Act** (`aiact2024`).

### 3.6 NoClip — scénario (Charlotte Strauch, 2026), intégral

> Court métrage de fin d'études. Équipe cinéma — Supervision Production Virtuelle : Etienne Baron.

- **EXT. SKATEPARK ABANDONNÉ — JOUR.** Temps maussade, vent, nuages. **RYAN (26)** est assis sur un
  banc dans un skatepark délabré, genou tremblant, jouant avec sa bague ; un bouquet de fleurs
  légèrement fané repose à côté. Il soupire, se lève. *« Et puis merde… »* (agacé). Il prend les
  fleurs, lance son skate, monte dessus, accélère, ferme les yeux — son mouvement s'arrête net quand
  il est **violemment projeté au sol**. CUT TO:
- **INT. ??? — BACKROOMS.** Bourdonnement. Ryan se relève péniblement, vérifie s'il saigne du nez.
  Moquette humide, murs jaunes, néons aveuglants aux sons désagréables. Vide, étrangement calme.
  *« Bonjour ! Y'a quelqu'un ?! »* (écho). Il vérifie ses poches (chewing-gum, portefeuille, pièces) ;
  son skate est là — mais **sa bague a disparu**. *« Merde… merde MERDE MERDE ! »* (panique). Il
  s'engage dans un long couloir.
- **SÉQUENCE DE MONTAGE — LE LABYRINTHE.** Couloirs identiques ; il colle un chewing-gum mâché sur un
  angle pour se repérer ; court, halète, sa barbe pousse, vêtements sales ; boit une eau saumâtre du
  plafond, recrache.
- **INT. BACKROOMS — LA SALLE DU CORPS.** Pièce plus large. Un **corps desséché**, presque fusionné
  avec la moquette, moisissure noire. Ryan recule, haut-le-cœur.
- **INT. BACKROOMS — LA SALLE DES NOMS.** Un pan de mur couvert d'inscriptions (stylo, pierre).
  Déchets humains. *MARC – 4 JOURS / SARA – 12 JOURS / LUCAS – 58 JOURS.* Il trouve son propre
  chewing-gum à côté d'un nom : il est déjà passé là. Dix fois. Cent fois.
- **INT. BACKROOMS — LA SALLE DES 6 COULOIRS.** Pièce hexagonale, une chaise de bureau isolée au
  centre, six couloirs identiques. Ryan s'effondre sur la chaise, à bout. Le bourdonnement devient
  strident (scie circulaire). *« Sortez-moi d'ici !! »* (hurlant). Il court, débouche dans la SALLE
  DES NOMS.
- **INT. BACKROOMS — LA RUPTURE.** Face au mur des noms, Ryan craque, raye tous les noms au stylo
  jusqu'à saturer le papier peint. Larmes. Un **CRI inhumain** lointain, bruits de membres mal
  articulés (verre broyé). La peur remplace la rage ; il se tapit. Une ombre déformée s'étire sur le
  mur jaune. *« Pas aujourd'hui… pas moi… »* (murmure). Le monstre est là, derrière l'angle. Ryan
  s'élance pour frapper — son pied glisse sur la moquette détrempée, il tombe lourdement.
- **INT. SKATEPARK — RÉALITÉ — SOIR.** Sifflement strident. La lumière jaune laisse place au gris du
  soir. Ryan est au sol, au skatepark, l'adrénaline brûle encore. Une présence derrière lui, une main
  sur son épaule. **VOIX (étouffée)** : *« Ryan ? Ryan, ça va ? »* Ryan se retourne d'un coup et,
  réflexe, **abat son skateboard de toutes ses forces sur la silhouette**. CRAQUEMENT — un corps tombe
  sur le bitume. Le sifflement s'arrête. **C'est sa femme**, inanimée ; à côté, le bouquet du début, et
  dans sa main entrouverte **l'alliance que Ryan avait perdue** — qu'elle avait ramassée pour lui.
  Ryan s'effondre sur ses genoux, mains ensanglantées, cherchant un pardon que le silence ne donnera
  pas. FADE OUT.

### 3.7 Découpage technique — NoClip (intégral)

Feuilles : « Découpage Technique » + « Plans Fixe ». Colonnes : Plan · Valeur de cadre · Image de réf ·
Caméra · Optiques · Action/Image · Son/Audio · Arnaud (1ᵉʳ ass. réal) · Scripte (Saph) · Etienne (SPV) ·
Femy (DOP). Plans relevés :

1. **Plan Américain** (fixe, axe ¾ / banc) — Sc.1 skatepark : Ryan sur le banc, se lève, jette son
   skate, sort cadre droite. Son : vent, bague, soupir, roulettes. *Tournage réel extérieur (logistique
   transport).* SPV : décor 1 = skatepark plan vidéo 360°, banc + skateboard + bouquet en accessoire.
2. **Plan d'insert** (fixe) — Ryan prend son skate.
3. **Plan Poitrine** (suivi de profil) — Sc.1 : Ryan entre à grande vitesse, regarde derrière lui,
   heurte un obstacle invisible, projeté. Son : vent fort, accélération, chute brutale, CUT sonore.
   *Plan B : vue première personne.*
4. **Gros Plan** (fixe, plongée sur moquette) — Sc.2 : visage de Ryan, éclairage jaune malade, vérifie
   nez/mains, absence de bague, panique, pas de réseau. Son : bourdonnement électrique, respiration.
   SPV : changement de décor → moquette, **dispositif lumière flickering**, couloir Set02.
5. **Plan master** (légère contre-plongée fixe, axe centré, symétrie parfaite) — Sc.2 : Ryan silhouette
   au fond du couloir jaune, « Bonjour ! Y'a quelqu'un ?! », s'avance, disparaît. SPV : Set01.
6. **Plan Amorce** (au-dessus de l'épaule, fixe) — Sc.2. SPV : **rotation nDisplay −90°**, bureau en accessoire.
7. **Plan d'Ensemble** (fixe, chaise de bureau isolée) — Sc.3 : salle des 6 couloirs, bureau moisi,
   écran d'ordinateur allumé. Son : bourdonnement strident, appareil photo. SPV : inserts + décor bureau.
8. **Plan Américain** (fixe, face) — Sc.4.
9. **Plan Rapproché Poitrine** (travelling) — Sc.4 : inscriptions sur le mur, Ryan caresse les noms,
   embrasse son doigt sans bague, sort cadre droite. SPV : revoir l'insert des inscriptions avec l'équipe 3D.
10. **(Champ contre-champ)** — Sc.5. SPV : Set03.
11. **Plan Large** (champ contre-champ) — Sc.5 : cadavre desséché au fond, Ryan s'arrête, se cache le
    nez, jette sa gourde vide, fuit. Son : silence pesant, choc métallique. SPV : Set03.
12. **(—)** — Sc.6 : mur raturé/moisi, Ryan tousse, se fige à un bruit hors-champ. Son : toux grasse,
    CRI inhumain, craquements d'os/verre. SPV : revoir le matériau des moisissures avec l'équipe 3D.
    Femy : plan de dos face aux murs.
13. **(—)** — Sc.6 : Ryan court vers la caméra, s'arrête, se retourne, lève son skate et hurle son défi.
    Son : « VAS'Y ! VIENT ! J'EN AI PLUS RIEN À FOUTRE ! »
14. **(—)** — Sc.6 : les jambes de Ryan s'élancent, pied d'appui qui glisse, visage qui percute la
    moquette. Noir soudain. Son : crissement, CRACK osseux.
15. **Plan Poitrine** (plan-séquence) — Sc.7 : teinte grise du soir, visage de Ryan au sol, une main
    floue se pose sur son épaule, il pivote et abat son skate sur la silhouette (Debie). Son : acouphène,
    « Ryan ? Ryan, ça va ? ». Scripte : être tombé dans le bon sens de la chute.
16. **Gros Plan** (fixe, contre-plongée visage) — Sc.7 : elle s'effondre au premier plan, Ryan lâche son skate.
17. **Plan d'Ensemble** (fixe, large, neutre, skatepark) — Sc.7 : il voit les fleurs et la bague dans la
    main inanimée, s'effondre, regarde ses mains ensanglantées. Son : craquement sourd, silence total, sanglots.

### 3.8 Devis — grille PAV (CCN production audiovisuelle, applicable au 2026-01-01)

Source : feuilles **« CAT B - CDDU Fiction »** (avenants 17/19, minima bruts) et **« Fiction-Réalisateur »**.
Feuilles du classeur : Filières · CAT A & B Permanents · **CAT B - CDDU Fiction** · Fiction-Réalisateur ·
CAT B - CDDU Flux · CAT B - Hors fiction & flux · CAT C · Artistes musiciens · Artistes interprètes.
Minima **par jour** (colonnes Base 7h / Base 8h) pour les postes du devis NoClip :

| Poste (CAT B - CDDU Fiction)        | Filière/Niv. | Base 7h € | Base 8h € |
|-------------------------------------|--------------|-----------|-----------|
| Directeur photo                     | C / I        | 395,47    | 451,97    |
| Chef OPS / Ingénieur du son         | H / IIIA     | 272,20    | 311,09    |
| Chef électricien                    | D / IIIB     | 224,77    | 256,88    |
| Cadreur / OPV                       | C / IIIA     | 252,51    | 288,58    |
| Scripte                             | G / IIIA     | 218,59    | 249,82    |
| Infographiste                       | E / IIIA     | 238,71    | 272,81    |
| Truquiste                           | E / IIIA     | 222,56    | 254,36    |
| Machiniste                          | D / V        | 184,41    | 210,76    |
| Photographe de plateau              | C / IIIB     | 184,14    | 210,45    |
| Accessoiriste                       | B / IIIB     | 184,14    | 210,45    |
| Électricien déco / Machiniste déco  | B / V        | 209,00    | 238,86    |
| Perchiste / 1ᵉʳ assistant son       | H / IIIA     | 200,33    | 228,95    |
| 1ᵉʳ assistant réalisateur           | G / II       | 218,59    | 249,82    |
| 2ᵉ assistant réalisateur            | G / IV       | 182,81    | 208,92    |
| Maquilleur / Costumier              | D-B / IV-V   | 162,23    | 185,40    |

> **Note d'exactitude** : les coûts unitaires du devis (Directeur photo 395 €, Chef OPS/son 272 €,
> Chef électricien ≈ 225 €, Scripte 219 €, Infographiste 239 €, Truquiste 223 €, Machiniste/Photographe
> 184 €) correspondent à la colonne **Base 7h** arrondie (et non Base 8h, comme l'indiquait par
> imprécision une note antérieure). Réalisateur sur feuille séparée (journalier ≈ 300 €). Filières :
> A = artistique, B = costumes/décor, C = image, D = plateaux/tournage, E = postproduction,
> F = production, G = réalisation, H = son, I = web, O = administration, P = commercial, Q = antenne.

### 3.9 Configuration nDisplay / plateau virtuel (relevé du whiteboard)

Schéma manuscrit de la configuration **réelle** du mur LED. Légende des zones :
**1 = Gauche · 2 = Centre · 3 = Droite · 4 = Plafond**. Largeurs (px) : Gauche **1536**, Centre **3072**,
Droite **1536**, Plafond **1536** ; hauteur **1728 px** (panneaux verticaux). Pitch noté **1.56** (mm).
Cotes au sol/élévation (cm) relevées : 244 (haut), 244, 488, 538, et repères 160 / 332,5 / 580 / 293 / 120.
Trois schémas annexes au bas du tableau :
- **VP0 / VP1 / VP2 / VP3** → « UNREAL (nDisplay) » : répartition des 4 viewports.
- « **NVIDIA** » : découpage du rendu GPU (cf. RTX A6000 mur LED / RTX 2080 pilotage).
- « **Processeur Sony** » et « **Mur LED** » : chaîne d'affichage du volume semi-enveloppant.

→ Sert le diagramme TikZ nDisplay (`sec:implantation`, cf. `system.md` § 6).

### 3.10 Pipeline production virtuelle (relevé du whiteboard)

Chaîne du signal VP : **PILOTE** (poste opérateur) — « 1. SWITCHBOARD → Unreal → nDisplay » — relié en
**RJ45** à un **SWITCH**, puis vers le **PLAYER / Unreal** (logo U). Côté plateau : caméra trackée,
notions « point » / « Flou » (mise au point), cône **FRUSTRUM** (frustum) projeté sur le mur LED.
Moniteurs de performance (graphes). À droite : volume LED avec caméra, **PROC** (processeur), Unreal.
Gestion de version : **Perforce**. → Sert les diagrammes de flux du Ch. 3.

### 3.11 ENSLL_CINEMA_BELYAKOV_2023 — mémoire de master (digest). Cité `belyakov2023`

**Métadonnées** : Anton **Belyakov**, *Le pilotage numérique de la lumière sur les plateaux de cinéma :
nouveaux outils et nouvelles compétences*. Mémoire de master, spécialité cinéma, **ENS Louis-Lumière**
(La Cité du Cinéma, La Plaine Saint-Denis), promotion 2020-2023, soutenance juin 2023. Accompagné d'une
partie pratique (retours de tournages *Foutu Cormoran*, *À nos ivresses*, *Rouge*). Directeur de mémoire :
**Laurent Stehlin** (directeur technique) ; externe : Benoît Jolivet (chef électricien) ; présidente du
jury : Élise Domenach ; coordination : Vincent Lowy. **Un mémoire n'a pas d'ISBN** (documenté dans l'entrée
`.bib`). **Mots-clefs** : révolution numérique, pilotage de la lumière, projecteurs LED, DMX, CRMX, Art-Net,
lyres motorisées, pixel mapping, réseau lumière.

**Résumé** : l'émergence de la LED conduit à un pilotage numérique croissant de la lumière sur les
plateaux ; les chef·fe·s électricien·ne·s intègrent des consoles empruntées au spectacle vivant ; les
compétences évoluent vers une maîtrise informatique et une gestion avancée de réseaux ; l'organisation
de l'équipe lumière est repensée. Des outils non pensés pour le cinéma soulèvent de nouveaux enjeux.

**Plan (table des matières)** :
- **Introduction** (p. 8) — découverte d'une solution *onPC* (console lumière sur ordinateur, issue du
  spectacle vivant) ; rapprochement des mondes cinéma / spectacle.
- **Ch. I — Des solutions techniques : une démarche historique** (p. 11) :
  A/ Histoire du contrôle de la lumière (spectacle p. 13, cinéma p. 21, frontières mouvantes p. 24) ·
  B/ La LED : changer les méthodes par des outils (révolution LED p. 27, SkyPanel/éclairage de surface
  p. 31, tubes Astera & notion de pixel p. 34, lyres motorisées p. 38) · **C/ Protocoles de
  communication** (p. 42) : **1/ Le DMX** (p. 43), **2/ Le DMX sans fil : CRMX et W-DMX** (p. 48),
  **3/ Le DMX au sein d'une communication Ethernet** (p. 52, → Art-Net / sACN).
- **Ch. II — Intégrer une nouvelle méthode de travail** (p. 57) : A/ Nouveaux usages (tourner avec des
  projecteurs asservis p. 59, **pixel mapping** p. 70, pupitre lumière p. 74) · B/ Combiner les réseaux
  (sans fil en plateau p. 81, centraliser les sorties p. 85, interactivité p. 88) · C/ Nouvelles
  méthodologies (coordination du temps p. 90, ergonomie de la console p. 96) · D/ Vers de nouvelles
  images ? (p. 100).
- **Ch. III — Nouveaux postes, nouveaux workflows** (p. 105) : A/ Nouveaux métiers (interlocuteur·rice·s
  dans l'équipe image p. 107, **pupitreur·euse en tournage** p. 110) · B/ Intégrer les compétences en
  équipe lumière (assimiler l'écosystème du DMX p. 115, former les équipes p. 119, dialogue avec la déco p. 121).
- **Conclusion** (p. 124) · **Sources** (p. 128) · **Annexes** : entretiens avec Willy Heilmann (140),
  Benoît Jolivet (156), Georges Harnack (181), Bruno Delbonnel (189) · **Dossier de partie pratique** (201).

**Données techniques exploitées dans le dossier** (Ch. 3 + Lexique) : protocole **DMX512** (Digital
MultipleXing — transmission de données pour le contrôle de l'éclairage), **univers DMX** (512 canaux),
**adressage**, **nodle/node** Art-Net, **Art-Net** et **sACN** (DMX encapsulé sur Ethernet/IP),
**CRMX / W-DMX** (DMX sans fil), **pixel mapping** (du contenu vidéo vers la lumière), lyres motorisées,
consoles *onPC*. → Sous-section DMX/Art-Net (`sec:dmx_artnet`) et entrées du Lexique (Ch. 8).

### 3.12 Carnet de recherche EESI — Etienne Baron (digest, RÉFÉRENCE DE STYLE). Cité : aucun

**Métadonnées** : *Bifurcation : Carnet de recherche digressif et interactif*, Etienne Baron, DNSEP5,
**École Européenne Supérieure de l'Image (EESI, Angoulême-Poitiers)**, sous la direction de Frédéric
Curien et Désirée Laurenz (v1.0). Licence **CC-BY-NC-SA**. **Mots-clés** : art numérique, édition
numérique, bifurcation, digression, contingence. Résumé : la **bifurcation** comme manière de
singulariser des pratiques artistiques, focus sur les pratiques numériques en art.

**Voix à reproduire (Ch. 7 du dossier)** — réflexive, essayistique, 1ʳᵉ personne, digressive :
- *« Un travail de recherche […] se caractérise par un ensemble de processus dans lesquels ce que l'on
  fait, ce que l'on pense et ce que l'on crée sont amenés à se transformer. Parmi ces processus, le plus
  notable et en même temps le plus insaisissable est sans nul doute celui de la bifurcation. »*
- *« parvenir à ce que la conscience aiguë de la technique fasse corps avec une forme qui lui est propre
  afin que sa matérialité communique du sens. »*
- Notions/figures mobilisées : la **carte** (dimension heuristique ; *L'œil cartographique de l'art*,
  Christine Buci-Glucksmann, 1996), dialectique du **regard global / local**, la chute d'Icare et le
  **labyrinthe** (Chartres), Robert Smithson (*Spiral Jetty*), l'**outil** comme extension des capacités
  humaines (**Gilbert Simondon**, *Du mode d'existence des objets techniques*, 1958), la **notation** comme
  inscription d'un signe, l'**œuvre ouverte** d'Umberto Eco, la pensée **cybernétique**. Lexique récurrent :
  *bifurcation · singularité · trajectoire · digression · contingence · différenciation*.

> **GARDE-FOU** : ce carnet sert **uniquement** de référence de style pour la voix du chapitre Veille
> technologique. **NE PAS** l'ajouter à la base LaTeX (ni `\include`, ni citation `.bib`).

---

## 4. Matériel réel du plateau (École Méliès — « appartient à l'école »)

- **Mur LED Sony Crystal LED VERONA** — pitch 1,56 mm, volume semi-enveloppant : Centre 3072 px ≈ 4,88 m ·
  Gauche/Droite 1536 px ≈ 2,44 m chacun · hauteur 1728 px ≈ 2,74 m · plafond 1536 px ≈ 2,44 m.
- **Unreal Engine 5.6** (licence éducation). **Tracking ZEISS CinCraft Scenario.**
- **Caméra Sony VENICE 2 (CineAlta)** — double ISO de base 800/3200. **Optiques ZEISS fixes** 24/35/50/85 mm.
- **RTX A6000 48 Go** (rendu mur LED) + **RTX 2080** (pilotage). Cyclo vert dur, éclairage pilotable DMX.
- **Nanite délibérément NON utilisé** (instabilité pour un framerate constant sur le mur LED).

**Équipe nommée** : Réalisatrice **Charlotte** · Graphiste 3D (étudiant M2) · Opératrice 3D **Loane** ·
Op. tracking **Arnaud** · DOP **Femy** · Chef électricien **Anil** · Scripte/Accessoiriste **Saph** ·
Machiniste **Thomas** · Son **Timothé** · Behind The Shot **Ignacio**. Intitulé : « Superviseur **VP** ».

---

## 5. Personnes à créditer (vérifiées en ligne)

**École Georges Méliès** (Orly, Grand Paris) — première formation européenne de superviseur VP (fév. 2025,
RNCP niveau 7), plateau VP inauguré mars 2025 avec Sony. Sur la page **Remerciements** :

- **Justine Coulmy** — directrice d'étude SPV, cheffe opératrice.
- **Laurent Stehlin** — directeur technique (**orthographe : Stehlin**).
- **Guillaume Bourlet** — chargé de formation.
- **Franck Petitta** — fondateur (1999) & directeur.

---

## 6. Contenu par chapitre (rappel narratif)

- **Front matter** — Remerciements (§ 5) ; Avertissement usage de l'IA (transparence AI Act).
- **Ch. 1** — Pitch *NoClip*, lien de visionnage, note explicative time codes des séquences VP.
- **Ch. 2** — Analyse scénario (§ 3.6) & justification VP ; **3 dispositifs A/B/C** ; moyens techniques
  réels (§ 4) ; moyens humains ; **devis** (§ 3.8) ; économies & impact carbone ; préconisations prise de
  vue / photoréalisme (techbox caméra, § 3.2).
- **Ch. 3** — Cahier des charges ; plan d'implantation (diagramme nDisplay, § 3.9) ; choix du tracking ;
  diagrammes de flux (§ 3.10) ; organigramme ; calendrier (3 graphiques TikZ) ; découpage technique annoté
  (§ 3.7) ; optimisation scène 3D temps réel ; plan de feu DMX + pixel-mapping (§ 3.11).
- **Ch. 4** — Analyses critiques après fabrication (images VP, environnement virtuel, RH, calendrier).
- **Ch. 5** — Bonnes pratiques fond vert (réglages caméra § 3.2, exposition/uniformité, plan de feu,
  détourage Nuke).
- **Ch. 6** — Bilan alternance & projet professionnel.
- **Ch. 7** — **Veille technologique** : IA générative/agentique, outils locaux & Open Source,
  environnement, écoproduction. **Voix « carnet » réflexive** (§ 3.12).
- **Ch. 8** — Lexique technique (DMX512, Art-Net, univers DMX, adressage, nodle, sACN, CRMX, PBR,
  Emissive, Normal map, Sequencer, etc. — sources § 3.11 et § 3.3).

---

## 7. Garde-fous rédactionnels

- **Aucune modification de contenu** n'est attendue par défaut : le processus est identique à l'existant
  (régénérer le PDF, versionner). Ne pas réécrire le fond sans demande explicite.
- Ne **pas** intégrer le carnet EESI (§ 3.12) à la base bibliographique (style uniquement).
- Conserver l'intitulé « Superviseur **VP** », l'orthographe « **Stehlin** », et le fait que
  **Nanite n'est pas utilisé**.
- Le matériel décrit (§ 4) est celui, réel, de l'école — ne pas le remplacer par du matériel générique.
- Les documents sources ont été retirés du dépôt après archivage ici ; en cas de besoin du fichier
  original, le récupérer via l'**historique git**.
