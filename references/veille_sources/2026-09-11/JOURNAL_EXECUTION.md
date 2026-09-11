# NATION — journal d'exécution, campagne V2 du 11 septembre 2026

Tenu au fil du rendu. Chaque entrée porte l'outil, l'identifiant du travail et le chemin de sortie.

---

## Chaîne mise en service

| Élément | État |
|---|---|
| ComfyUI local | démarré en propre sur `127.0.0.1:8189`, encodage UTF-8 forcé, config modèles partagés |
| Nœuds NATION V1 | `NationReviewShot`, `NationEXRMotionBlur` — conservés, archivés dans `02_WORKFLOWS/CUSTOM_NODES/nation_vfx` |
| Nœuds NATION V2 | `NationRetakeV2`, `NationUpscaleToEXR` — écrits pour cette campagne, sources dans `02_WORKFLOWS/CUSTOM_NODES/nation_vfx_v2` |
| BiRefNet local | `birefnet.safetensors`, via `LoadBackgroundRemovalModel` + `RemoveBackground` |
| Comfy Cloud | authentifié OAuth, `cloud.comfy.org`, serveur de production |
| Modèle d'édition d'image | `image_qwen_image_edit_2511` — modèle ouvert, **aucun nœud d'inférence API payante** |

**Authentification.** La session Comfy Cloud était déjà ouverte en OAuth sur le poste.
Aucun identifiant n'a été demandé, saisi ni enregistré dans une variable d'environnement :
ce n'était pas nécessaire, et je ne manipule pas de mots de passe ni de jetons.

---

## Verrou 1 — la Tour du plan 47

Extraction de la charte à partir de la source EXR d'origine, et non de la sortie V1 :
`_EXR/NATION/DESERT_DOLLY/v01/MainDesert_%04d.0056.exr`, 4096 × 2304.

- matte **BiRefNet**, prompt_id local `562bb23c` ;
- recette : 0,24 % de pixels intermédiaires, transition de **16 px** sur la ligne médiane,
  aucune saturation à 1,0 — **pas d'écrêtage** ;
- charte figée : `05_QC/TOUR_REFERENCE_P047.png` (547 × 1340), fiche `TOUR_REFERENCE_P047.json`,
  découpe RGBA `03_PLANS/P047/TOUR_REFERENCE_P047_rgba.png`.

Design de référence retenu : flèche élancée en dalles verticales empilées, retraits étagés
vers le haut, pierre patinée bronze-gris à hautes lumières chaudes, rapport ≈ 1 : 2,45.

**Diagnostic d'écrêtage.** Mesures dans `05_QC/DIAGNOSTIC_ECRETAGE.json`. Les sorties V1 ne
saturent pas en luminance : l'écrêtage signalé par le brief est celui du **matte**, pas de
l'image. La V1 fabriquait le ciel du 47 par seuillage binaire de couleur puis flou léger —
un matte sans valeurs intermédiaires, donc des bords découpés. C'est exactement ce que
BiRefNet corrige, et c'est ce que la recette vérifie désormais sur chaque plan.

---

## Images clés produites sur Comfy Cloud

| Plan | Travail | Sortie |
|---|---|---|
| 42 | Tour conformée au design du 47 | `03_PLANS/P042/P042_KEY_tour_v001.png` |
| 215 | Tour conformée au design du 47 | `03_PLANS/P215/P215_KEY_tour_v001.png` |
| 88 | variante **A** — porte frontale à la place des poteaux rouges | `03_PLANS/P088/P088_KEY_varA_v001.png` |
| 88 | variante **B** — porte repositionnée haut-gauche, dans la brume | `03_PLANS/P088/P088_KEY_varB_v001.png` |
| 88 | variante **C** — quadrant haut-gauche, porte frontale rougeâtre | `03_PLANS/P088/P088_KEY_varC_v001.png` |
| 68 | fond propre, 3 figures retirées, traces de pas venant du fond | `03_PLANS/P068/P068_FOND_traces_v001.png` |
| 67 | tempête de sable en arrière-plan seul | `03_PLANS/P067/P067_FOND_tempete_v001.png` |
| 47 | ciel cirrus, sans matte donc sans écrêtage | `03_PLANS/P047/P047_KEY_cirrus_v002.png` (v001 écartée : traînées de condensation) |
| 68 | fond, variante à traces hautes retenue | `03_PLANS/P068/P068_FOND_traces_v002.png` |

Chaque image clé est ramenée au format du plan par `02_WORKFLOWS/normalise_key.py`
(suffixe `_conform.png`) avant d'entrer dans le compositing.

Le **215** règle au passage un défaut visible dans le composite source : les étoiles du ciel
transparaissaient à travers la capuche du personnage de droite — un matte écrêté. L'image
clé le corrige.

---

## Rendus locaux

| Plan | Mode | prompt_id | Sortie |
|---|---|---|---|
| 53 | `torii_macro` v001 | `c8aa3d5f` | 267 images, 25 i/s — validé sur le fond, frange verte à resserrer |
| 53 | `torii_macro` v002 | `db9ab32b` | despill vert complet, bord de matte resserré |
| 42 | `key_transfer` | `4bfb4af8` | Tour conformée reportée sur 421 images |
| 215 | `key_transfer` | `44503f92` | Tour conformée reportée sur 351 images |
| 68 | `bg_swap` | `30763bf8` | 3 comédiens d'origine sur le fond du 68 |
| 89 | `bg_swap` | `1a24a90b` | fond du 68 + matte RGBA d'origine `C0897.mov` |
| 90 | `bg_swap` | `b2f4b3ef` | fond du 68 + matte RGBA d'origine `C0899.mov`, sans le zoom ×1,65 |

**Plan 53.** L'élément juste n'était pas la petite découpe utilisée en V1 mais la séquence
`_EXR/NATION/TORII/v01` : 300 images, 3840 × 2160, sur fond vert, déjà cadrée en très gros
plan et débordant du cadre. Le décalage temporel avec le plan a été mesuré par recalage :
**image du plan = image de l'élément + 86**. La porte est désormais nette à son apparition,
au moment où l'arrière-plan bascule dans le flou.

**Plan 90.** Le zoom ×1,65 appliqué en V1 est supprimé : la V2 ne le demande plus.


---

## Clôture

**Bobine assemblée** : `04_PREMONTAGE/NATION_RETAKES_PREMONTAGE_V2.mp4` — 2 012 images,
1 min 20 s 12 à 25 i/s, 1280 × 720, muette, dans l'ordre du montage. Même métrage que la
bobine V1, ce qui confirme que toutes les durées du manifeste sont tenues.

**Versions retenues** (les versions intermédiaires restent sur le disque) :

| Plan | Version livrée |
|---:|---|
| 42 | `REVIEW_v005` + `EXR_4K_v001` (421 images 4096 × 2304) |
| 47 | `REF2VIDEO_v001/NATION_P047_ref2video.mp4` |
| 53 | `REVIEW_v008` |
| 67 | `REVIEW_v003` |
| 68 | `REVIEW_v003` |
| 88 | `REF2VIDEO_v001/NATION_P088_ref2video.mp4` (variante A, 4 segments) |
| 89 | `REVIEW_v002` |
| 90 | `REVIEW_v002` |
| 145 | `REF2VIDEO_v001/NATION_P145_ref2video.mp4` (variante A, 2 segments) |
| 215 | `REVIEW_v006` |

## Incidents et corrections, pour mémoire

1. **ComfyUI tué par le gestionnaire dynamique de VRAM** sur les rechargements répétés de
   BiRefNet (exception Windows `0xc000001d`). Corrigé par `--disable-smart-memory`.
2. **Collision de noms** dans le module : une variable locale `warm` masquait la fonction de
   préchauffage et faisait échouer tous les modes. Corrigée, les rendus relancés.
3. **Masque sol/ciel crénelé** sur le 47 — le seuillage colonne par colonne fabriquait une
   « silhouette de ville » dans la brume. Corrigé par un filtre médian sur la ligne d'horizon.
4. **Report de Tour déchiré** aux extrêmes du 42 et du 215 : le modèle d'édition retouche plus
   que l'ouvrage visé, et le flux optique ne tient pas sur ±200 images. Corrigé en enfermant le
   report dans la silhouette de l'ouvrage et en bornant le flux à 80 px.
5. **Porte dédoublée** sur le 88 et le 145 : la plaque de fond et le plan sont décalés d'une
   translation constante (−41, +13 px sur le 88 ; −43, −15 px sur le 145). Corrigé par un
   recalage par points d'intérêt, puis un remplacement franc de la zone plutôt qu'une
   soustraction — sous le voile du plan, un delta ne suffit pas à effacer l'ancien ouvrage.
6. **Bande visible au bord du masque** sur le 88 et le 145 : corrigée en mesurant l'écart
   basse fréquence sur le pourtour du masque et en l'étendant vers l'intérieur, pour que
   l'insert prenne la lumière locale du plan.
7. **File Comfy Cloud engorgée** : deux segments de reference-to-video du 88 mis en échec sur
   dépassement de temps. Relancés, rendus, le plan est complet.
8. **Conformation Resolve relancée** : le script reprenait la dernière version `REVIEW_v*` au
   lieu de la sélection du prémontage, et Resolve refusait de dupliquer une timeline de même
   nom. Corrigé — la sélection est désormais lue depuis `nation_premontage_v2.py`, seul endroit
   qui fasse autorité, et les timelines d'une exécution précédente sont purgées avant de
   reconstruire.

9. **Voile vertical du 215**, au bord du masque de report : l'image clé revient du modèle
   avec son propre étalonnage, et le raccord global ne suffisait pas — le voile du plan
   varie dans le cadre. Corrigé en mesurant l'écart basse fréquence sur le pourtour du
   masque et en l'étendant vers l'intérieur, le même mécanisme que pour le 88.
10. **Frange du 53** : la démultiplication du fond vert retire tant de vert sur le liseré
   que le pixel vire au magenta. Corrigé en puisant la couleur au cœur de l'ouvrage —
   matte quasi plein, érodé de 5 px — et en l'étendant sur toute la bande de bord ; la
   couleur d'origine n'est conservée que là où le matte est franchement opaque. Le calcul
   a aussi été déplacé après la réduction à la définition du plan : neuf fois moins de pixels.
11. **Écritures EXR sur disque saturé** : pendant que Resolve indexait les 12 Go d'EXR 4K
   importés, le rendu du 53 tombait à une image par minute. Diagnostiqué en relançant sans
   l'export EXR — le débit est remonté aussitôt. La version finale a été rendue avec ses
   EXR une fois Resolve au repos.

## Le « dédoublement » du 215 : diagnostic

Demandé en correction, examiné, **non exécuté** — et il faut dire pourquoi.

Ce qui ressemble à une seconde tête sur le personnage masculin est **l'enfant qu'il porte**.
Planche de preuve : `05_QC/P215_DIAGNOSTIC_ENFANT.jpg`.

- Image 200, de dos : la tête de l'enfant repose sur l'épaule de l'homme, son bras et sa main
  pendent dans son dos.
- Image 348, de face : la tête de l'enfant est à sa droite, son bras passe sur l'épaule, son
  torse est dans le vêtement pâle et ses jambes nues pendent le long du manteau.
- Test de corrélation : si c'était un calque dupliqué, la seconde tête correspondrait à la
  première à ~0,95 avec un décalage constant. Mesuré sur les images 120, 300 et 345, le
  meilleur appariement hors position d'origine plafonne à **0,43 – 0,58**, à des décalages
  incohérents d'une image à l'autre. Ce sont deux têtes différentes.

Effacer cet élément retirerait un comédien du plan. Je ne l'ai pas fait.

**Le défaut réel** est ailleurs : les deux têtes se confondent. Même carnation, même valeur de
cheveux, voile atmosphérique qui aplatit tout, et surtout **aucune occultation de contact** entre
elles — rien qui dise laquelle est devant. C'est un manque de compositing, pas un doublon.

**Pourquoi il n'est pas corrigeable en l'état.** Le comp Fusion du 215 n'a qu'une seule entrée
média — `_EXR/NATION/DESERT_END/v01`, 4096 × 2304, **RGB sans couche alpha** ; `v02` et `v03` ne
sont que la suite des images, mêmes canaux. L'homme et l'enfant sont déjà aplatis dans ce rendu :
il n'existe sur le poste aucune passe personnage séparable. Un essai de séparation par ellipse
suivie a été mené puis écarté — il pose une tache sombre sur la tête de l'enfant, plus visible
que le défaut d'origine, et le suivi décroche quand l'homme se retourne (score 0,72 à l'image 240).

### Route 1 engagée : la plaque personnages existe

Contrairement à ce que laissait croire le comp Fusion du clip V7, le plan 215 **empile trois
calques** dans le montage NATION V2 :

| Piste | Média | Contenu |
|---|---|---|
| V5 | `C0597.MP4` — *Arrière plan dune* | maquette de la Tour sur fond vert |
| V6 | `C1438.MP4` — *Plan de fin* | **les comédiens sur fond vert** — décalage 1044 images |
| V7 | `EndDesert_%04d.exr` | le rendu 4K, déjà aplati |

La passe personnages existe donc bien : c'est **C1438.MP4**. Et elle est décisive — **sur la
plaque, les deux têtes se lisent** : les cheveux de l'enfant sont nettement plus sombres, et il
y a une ombre de contact entre la joue de l'homme et sa tête. C'est l'étalonnage voilé du
composite qui a écrasé cette séparation.

Recalage résolu : la plaque entre dans le composite à **38,17 %**, rotation nulle.

**Correction retenue** : ne rien repeindre, mais **restituer dans la zone des deux têtes le
contraste local de la plaque** — c'est lui qui porte l'ombre de contact. Implémenté comme mode
`restitue_plaque` du nœud `NationRetakeV2` : il lit la plaque, en extrait le détail (luminance
moins sa version floutée, fenêtré pour s'annuler au bord) et l'ajoute au plan le long d'une
trajectoire fournie en JSON.

**Ce qui bloque encore : le tracking.** Recaler une plaque fond vert sur un composite fortement
réétalonné par corrélation de gabarit tient à 3 px près la plupart du temps, mais dérive de 15 à
33 px par endroits — et à cette échelle, une tête fait 90 px : une erreur de 15 px fantôme le
visage. Affinage par ECC essayé : il converge sur les 116 images testées mais ne supprime pas les
décrochages. En exigeant une corrélation ≥ 0,62 à la position retenue, la plus longue plage
contiguë fiable ne fait que **22 images** (310 à 331).

Le plan livré reste donc `REVIEW_v006`, sans la correction. La démonstration sur la plage
vérifiée est jointe : `05_QC/P215_DEMO_RESTITUTION/` et `05_QC/P215_SEPARATION_DEMO.jpg`.

**Ce qu'il reste à faire, et par qui.** Un tracking 2D repris à la main — tracker planaire de
Fusion sur les comédiens, quelques images clés corrigées à l'œil. Une fois cette trajectoire
substituée au fichier `01_REFERENCES/P215_TRAJECTOIRE_TETES.json`, le mode `restitue_plaque`
traite le plan entier en une passe, sans autre réglage. Tout le reste est fait.

## Ce qui reste à faire après validation

- la séparation des deux têtes du 215, par l'une des trois routes ci-dessus.
