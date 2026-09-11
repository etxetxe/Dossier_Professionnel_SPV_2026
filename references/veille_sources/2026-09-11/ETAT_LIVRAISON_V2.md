# NATION — livraison de la campagne de retakes V2

Deuxième tour de retakes, exécuté le 11 septembre 2026 à partir de `Retake Nation V2.md`,
par comparaison avec la campagne `RETAKES_20260910`.

---

## À ouvrir en premier

- **Bobine des retakes** : `04_PREMONTAGE/NATION_RETAKES_PREMONTAGE_V2.mp4`
- **Planche de contrôle** : `05_QC/CONTACT_RETAKES_V2.jpg`
- **Comparatifs V1 ↔ V2**, un par plan : `05_QC/COMPARATIF_V1_V2_Pxxx.jpg`
- **Marche à suivre** : `00_SUPERVISION/MARCHE_A_SUIVRE_V2.md`
- **Journal d'exécution** : `00_SUPERVISION/JOURNAL_EXECUTION.md`
- **Workflows** : `02_WORKFLOWS` — graphes d'exécution dans `API/`, nœuds dans `CUSTOM_NODES/`

---

## Ce qui a été fait, plan par plan

| Plan | Images | Ce qui a été fait | Méthode |
|---:|---:|---|---|
| 42 | 421 | Tour conformée au design du 47 ; sortie **EXR 4K** 421 images 4096×2304, importée dans Resolve | `key_transfer` + `NationUpscaleToEXR` |
| 47 | 113 | Ciel cirrus sans écrêtage, puis **reference-to-video** WAN VACE en deux segments fondus | Qwen-Image-Edit + WAN 2.1 VACE |
| 53 | 267 | Torii en **très gros plan**, débordant du cadre, **net à son apparition** quand le fond passe au flou ; liseré de matte neutralisé | `torii_macro` sur l'élément 4K RGBA d'origine, couleur étendue depuis le cœur du matte |
| 67 | 227 | Tempête de sable en **arrière-plan seul** ; écart maximal sur le premier plan : **0,0005** | `plate_bg` + matte BiRefNet |
| 68 | 55 | Les **3 comédiens d'origine** sur le fond nouvellement créé, **traces de pas** venant des dunes | `bg_swap` + BiRefNet + plaque recadrée |
| 88 | 292 | Poteaux rouges effacés, **porte Torii frontale** (variante A) ; 3 figures intactes | **reference-to-video** WAN VACE, 4 segments fondus |
| 89 | 101 | Arrière-plan du 68 **sans les personnages**, premier plan d'origine (matte RGBA `C0897.mov`) | `bg_swap` |
| 90 | 84 | Idem 89 avec `C0899.mov` ; le **zoom ×1,65 est supprimé**, il n'est plus demandé | `bg_swap` |
| 145 | 101 | Même procédure que le 88, même image source | **reference-to-video** WAN VACE, 2 segments fondus |
| 215 | 351 | Tour conformée au 47 ; les étoiles ne transparaissent plus à travers la capuche ; bord de masque raccordé | `key_transfer` limité à l'ouvrage + raccord basse fréquence |

Le **44** partage le passage du 42 dans le montage : il est livré en EXR, pas dans la bobine.
La passe de flou 4K validée en V1 (`RETAKES_20260910/03_PLANS/P044/EXR_HALF_v002`, 213 images
4096×2304) reste la livraison du plan ; elle n'a pas été recalculée, le brief la valide.

Mesures complètes : `05_QC/CONTROLE_RETAKES_V2.json`.

---

## Deux constats de supervision

### L'écrêtage n'était pas où on le cherchait

Le brief signale l'écrêtage sur le 47 et le 215. Les mesures (`05_QC/DIAGNOSTIC_ECRETAGE.json`)
montrent que les sorties V1 ne saturent pas en luminance : ce n'est pas l'image qui écrête,
c'est le **matte**. La V1 fabriquait le ciel du 47 par seuillage binaire de couleur suivi d'un
flou léger — un matte sans valeurs intermédiaires, donc des bords découpés ; et sur le 215, les
étoiles du ciel transparaissaient à travers la capuche du personnage de droite.

BiRefNet corrige exactement cela : il rend un alpha continu. La recette porte désormais sur le
matte lui-même et figure dans le rapport de chaque plan : proportion de valeurs intermédiaires,
proportion de valeurs saturées, verdict d'écrêtage.

### Le reference-to-video ne se comporte pas pareil selon les plans

Le procédé — plan de NATION V2 en source vidéo, image nouvellement créée en source image,
WAN 2.1 VACE sur Comfy Cloud — a été essayé sur les quatre plans que le brief désigne.

**Plan 47 : retenu.** Le mouvement de dolly est conservé, la Tour garde son dessin, le ciel
cirrus est en place. C'est cette version qui part dans la bobine (113 images, deux segments
de 81 fondus sur 8 images, remis à 1280 × 720 et 25 i/s, raccordés en niveaux sur le plan).

**Plans 88 et 145 : retenus.** Image source = la **variante A**, choisie par la production :
poteaux rouges effacés, porte Torii frontale à leur place, harmonisée avec la brume, pente et
trois figures conservées. Le 88 est assemblé en quatre segments de 81 images fondus sur 8, le
145 en deux. Aucune rupture visible aux raccords, et les trois figures encapuchonnées restent
elles-mêmes d'un bout à l'autre. Un segment du 88 a dû être relancé : la file Comfy Cloud
l'avait mis en échec sur dépassement de temps.

**Plan 215 : écarté.** Le même procédé dérive : le coucher de soleil devient un plein jour,
les costumes changent de couleur, l'enfant porté par la femme disparaît. Un plan avec
comédiens reconnaissables et un étalonnage aussi typé ne supporte pas une régénération
complète. Le 215 part en composite suivi — Tour conformée reportée sur la séquence, comédiens
du tournage intacts — et l'essai reste joint dans `03_PLANS/P215/REF2VIDEO_v001` pour que la
décision se prenne sur pièce.

---

## Conformation Resolve

Réalisée par script sur le projet ouvert, rien d'écrasé :

- dossier média **NATION_RETAKES_V2**, les dix plans importés aux durées du manifeste ;
- timeline **NATION_RETAKES_BOBINE_V2** — les retakes dans l'ordre du montage ;
- timeline **NATION_RETAKES_PREMONTAGE_V2** — copie du film, retakes conformés à leur
  timecode d'origine sur une piste vidéo ajoutée ;
- séquence **EXR 4K du plan 42** importée (421 images, 4096 × 2304) — c'est la réintégration
  demandée pour les plans 42 et 44 ;
- exports `.drt` des deux timelines dans `04_PREMONTAGE`.

---

## Contraintes du brief, et comment elles ont été tenues

| Contrainte | Tenue |
|---|---|
| Nœuds Comfy Cloud | Qwen-Image-Edit 2511 pour les images clés, WAN 2.1 VACE pour le reference-to-video |
| Aucune inférence API payante | aucun nœud `api_*`, aucun `partner_generate` — modèles ouverts uniquement |
| Upscale + EXR dans Comfy local | nœud `NationUpscaleToEXR`, RealESRGAN ×4 puis écriture EXR demi-précision ZIP |
| Sorties et workflows sous `D:\NATION` | toute la campagne sous `RETAKES_20260911`, rien d'écrasé de la veille |
| Comparaison V1 ↔ V2 | `DELTA_V1_V2.csv`, plus une planche par plan dans `05_QC` |

**Authentification.** La session Comfy Cloud était déjà ouverte en OAuth sur le poste. Aucun
identifiant n'a été demandé, saisi ni enregistré dans une variable d'environnement : ce n'était
pas nécessaire, et je ne manipule pas de mots de passe ni de jetons.

---

## Statut artistique

Il s'agit d'un **prémontage de revue**, pas d'un master validé. Les sorties EXR de revue sont
dérivées de composites SDR et ne remplacent pas des masters HDR en résolution source — seule la
séquence 4K du plan 42 (`03_PLANS/P042/EXR_4K_v001`) est une vraie livraison EXR.

Le « dédoublement du personnage masculin » du 215 a été examiné sur demande : c'est **l'enfant
que l'homme porte**, pas un artefact — preuve et mesures dans `05_QC/P215_DIAGNOSTIC_ENFANT.jpg`
et au journal d'exécution. Le défaut réel est que les deux têtes se confondent faute d'occultation
de contact. La passe personnages a été retrouvée — `C1438.MP4`, piste V6 du montage, les
comédiens sur fond vert — et **sur elle les deux têtes se lisent** : c'est l'étalonnage voilé du
composite qui les a aplaties. La correction est écrite (mode `restitue_plaque`), démontrée sur
les images 310-331 (`05_QC/P215_SEPARATION_DEMO.jpg`), mais elle attend un tracking 2D repris à
la main dans Fusion : le recalage automatique dérive par endroits et fantôme le visage. Le plan
livré reste `REVIEW_v006`, sans la correction. Détail au journal.
