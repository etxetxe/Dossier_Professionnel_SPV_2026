# NATION — feuille de route de supervision VFX, campagne V2

Deuxième tour de retakes, établi le 11 septembre 2026 à partir de `Retake Nation V2.md`,
par comparaison avec la campagne `RETAKES_20260910` livrée la veille.

Le brief V2 n'est pas une liste de corrections indépendantes : il installe **deux verrous
de conformité** qui ordonnent tout le reste. Les traiter dans le désordre oblige à refaire.

---

## 1. Ce qui change par rapport à la V1

| Plan | V1 — demandé hier | V2 — demandé aujourd'hui | Nature |
|---:|---|---|---|
| 42 | rochers supprimés + flou | **validé** ; passer en Upscale + EXR local et réintégrer dans Resolve ; conformer la Tour | acquis + finition |
| 44 | flou de mouvement | idem 42 | acquis + finition |
| 47 | cirrus à la place des stratus | matting sans écrêtage (**BiRefNet** plutôt que SAM 3.1) ; **reference-to-video** : plan 47 de NATION V2 en source vidéo, image nouvelle en source image | **méthode refondue** |
| 53 | Torii en gros plan sortant du sable | la porte **dépasse du cadre**, **nette** à l'apparition — au moment où l'arrière-plan passe au flou ; très gros plan de l'ouvrage | échelle et mise au point |
| 67 | fumée désertique | **édition vidéo** : tempête de sable en arrière-plan, **sans toucher au premier plan ni ajouter de décor** | méthode refondue |
| 68 | point de vue surplombant | **reprendre les 3 personnages d'origine** et les poser sur l'arrière-plan nouvellement créé ; ajouter des **traces de pas** venant de l'arrière-plan | refonte : on abandonne la reconstruction générative des comédiens |
| 88 | pivoter la porte + retirer le feuillage | reprendre le **background de départ**, isoler la **zone haut-gauche**, effacer les **poteaux rouges**, y substituer la porte Torii harmonisée ; **reference-to-video** avec le plan 88 | méthode précisée |
| 89 | dune cohérente avec le plan précédent | **arrière-plan du plan 68**, personnages retirés ; premier plan 89 d'origine | source d'arrière-plan changée |
| 90 | même dune, zoomée | **arrière-plan du plan 68**, personnages retirés ; premier plan 90 d'origine | le zoom ×1,65 n'est plus demandé |
| 145 | comme le 88 | comme le 88, même procédure explicite | méthode précisée |
| 215 | Tour droite et surplombante | matting sans écrêtage (**BiRefNet**) ; **reference-to-video** avec le plan 215 ; **conformer le design de la Tour** | méthode refondue |

**Contraintes transversales nouvelles.** Nœuds Comfy Cloud autorisés, **aucune inférence API
payante**. Sorties et workflows conservés sous `D:\NATION`. Comparaison explicite V1 ↔ V2 exigée.

---

## 2. Les deux verrous, et l'ordre qu'ils imposent

### Verrou 1 — la Tour du plan 47 fait référence

> « La Tour du plan 47 est le design de référence pour les autres plans. »

Le 47 cesse d'être un plan parmi onze : il devient la **charte** de l'ouvrage. Les plans 42, 44
et 215 portent tous une correction de Tour et doivent s'y conformer. Tant que le 47 n'est pas
validé, toute Tour produite ailleurs est à refaire.

### Verrou 2 — l'arrière-plan du plan 68 alimente 89 et 90

Le 68 ne fournit plus seulement son propre cadre : son arrière-plan devient la source des
plans 89 et 90, personnages retirés. Le 68 doit donc être validé avant que 89 et 90 commencent.

### Ordre de fabrication

```
ÉTAPE 1   P047   Tour de référence + cirrus + reference-to-video      ── verrou 1
             │
             ├─ ÉTAPE 2   P042 / P044   Upscale + EXR, Tour conformée au 47
             └─ ÉTAPE 3   P215          Tour conformée au 47 + ref-to-video

ÉTAPE 4   P053   Torii très gros plan, débordant du cadre, net à l'apparition
ÉTAPE 5   P088 + P145   même porte frontale, même procédure haut-gauche
ÉTAPE 6   P067   tempête de sable, arrière-plan seul

ÉTAPE 7   P068   3 personnages d'origine + traces de pas                ── verrou 2
             │
             └─ ÉTAPE 8   P089 / P090   arrière-plan du 68 sans personnages
```

Les étapes 4, 5 et 6 sont indépendantes des verrous : elles peuvent avancer en parallèle.

---

## 3. Ce que chaque plan reprend de la V1, et ce qu'il jette

La V1 n'est pas à effacer. Elle fournit des éléments réutilisables, et c'est le premier travail
que la comparaison doit trancher, plan par plan.

| Plan | À conserver de la V1 | À refaire |
|---:|---|---|
| 42 | la passe de décor sans rochers, le flou — validés | la Tour ; sortie en EXR upscalé |
| 44 | `P044/EXR_HALF_v002`, 213 images 4096×2304 | la Tour ; réintégration Resolve |
| 47 | le ciel cirrus généré, la plage conformée 113 images | le matting (écrêtage), la Tour, passage en ref-to-video |
| 53 | l'animation de sortie du sable, l'occultation au sol | l'échelle — la porte doit déborder — et la netteté à l'apparition |
| 67 | rien de la fumée : le procédé change | tout, en édition vidéo, arrière-plan seul |
| 68 | le cadrage surplombant et l'arrière-plan | les comédiens : on reprend les vrais, plus la reconstruction IA |
| 88 | la porte détourée frontale | la procédure : zone haut-gauche du background d'origine, poteaux effacés |
| 89 | le détourage RGBA de `C0897.mov` | l'arrière-plan : il vient désormais du 68 |
| 90 | le détourage de `C0899.mov` préservant mains et accessoire | l'arrière-plan ; le zoom ×1,65 n'est plus demandé |
| 145 | la porte du 88 | même procédure que le 88 |
| 215 | la plage 351 images, l'horizon et les acteurs | le matting, la Tour, passage en ref-to-video |

Le dédoublement du personnage masculin en fin de 215, présent dans le composite source, reste
hors périmètre : ce n'est pas une retake, c'est une correction de composite à traiter au master.

---

## 4. Points de vigilance techniques

**L'écrêtage, nommé deux fois.** Le brief signale le problème sur le 47 et le 215 et propose
BiRefNet plutôt que SAM 3.1. L'écrêtage sur ces plans vient d'un matting qui écrase les hautes
lumières du ciel. Le test de recette est simple et doit être fait avant de composer : sur la
matte produite, vérifier qu'aucun canal ne sature à 1,0 sur le ciel, et que les bords conservent
un dégradé sur au moins deux pixels.

**Le reference-to-video, trois fois.** Plans 47, 88, 145 et 215 : source vidéo = le plan tel
qu'il est dans NATION V2, source image = l'image nouvellement créée. C'est un transfert de
traitement image → séquence, pas une génération libre. Le raccord temporel se juge sur la
séquence entière, jamais sur une image isolée.

**Le 67 est une édition vidéo, pas une génération.** « Sans modifier le premier plan ni ajouter
d'éléments de décor » est une contrainte de recette : toute silhouette, tout relief, toute
structure apparue en arrière-plan invalide le plan.

**Le 68 change de nature.** Hier, les comédiens étaient reconstruits par IA et la feuille de
route signalait que cadrage et costumes demandaient validation. Aujourd'hui on repart des trois
comédiens d'origine — le risque IA disparaît, mais il faut un détourage propre et une intégration
d'ombre et de contact crédible, plus les traces de pas orientées depuis l'arrière-plan.

---

## 5. Arborescence de la campagne

Même convention qu'hier, nouvelle racine datée pour ne rien écraser :

```
D:\NATION\RETAKES_20260911\
├── 00_SUPERVISION\   feuille de route, delta V1/V2, manifeste, journaux
├── 01_REFERENCES\    sources vidéo NATION V2, images de référence, planches
├── 02_WORKFLOWS\     workflows ouvrables ; API\ pour les graphes d'exécution
├── 03_PLANS\Pxxx\    sorties par plan, versionnées v001, v002…
├── 04_PREMONTAGE\    bobine, .drt, .fcpxml, mp4
└── 05_QC\            contrôles, planches de comparaison V1 ↔ V2
```

La campagne du 10 reste intacte et sert de référence de comparaison. Aucune sortie de la V1
n'est écrasée : un workflow relancé écrit dans un nouveau dossier de version.

---

## 6. Critères de validation

Repris de la V1, complétés des exigences propres à la V2 :

- durées identiques aux plages du manifeste, aucune dérive de cadence ;
- aucun média hors ligne dans Resolve ;
- **Tour conforme au 47** sur les plans 42, 44 et 215 — contrôle sur planche comparative ;
- **aucun écrêtage** sur 47 et 215 : pas de saturation à 1,0 sur le ciel ;
- 67 : premier plan strictement inchangé, aucun élément de décor ajouté ;
- 68 : les trois comédiens sont ceux du tournage, traces de pas orientées depuis l'arrière-plan ;
- 89 et 90 : arrière-plan identique à celui du 68, sans résidu des personnages ;
- 53 : la porte déborde du cadre et est nette au moment où l'arrière-plan passe au flou ;
- prémontage assemblé dans l'ordre de NATION V2, 1280 × 720, 25 i/s ;
- une planche de comparaison V1 ↔ V2 par plan dans `05_QC`.

---

## 7. État d'exécution

Cette section remplace l'avertissement de blocage rédigé en début de journée : il n'est plus
d'actualité. La chaîne a été remise en service et la campagne a été exécutée.

- **ComfyUI local** démarré en propre sur `127.0.0.1:8189`, encodage UTF-8 forcé, configuration
  des modèles partagés, mémoire fixe (`--disable-smart-memory`) après un plantage du gestionnaire
  dynamique de VRAM sur les rechargements répétés de BiRefNet.
- **Nœuds de la campagne** écrits, installés et chargés : `NationRetakeV2` (quatre modes portant
  les corrections du brief) et `NationUpscaleToEXR`. Sources conservées dans
  `02_WORKFLOWS/CUSTOM_NODES/nation_vfx_v2`, graphes d'exécution dans `02_WORKFLOWS/API`.
- **Comfy Cloud** : session déjà ouverte en OAuth sur le poste. Aucun identifiant n'a été demandé,
  saisi ni enregistré dans une variable d'environnement — ce n'était pas nécessaire, et je ne
  manipule pas de mots de passe ni de jetons. Modèle d'édition d'image `Qwen-Image-Edit 2511`,
  reference-to-video `WAN 2.1 VACE` : modèles ouverts, **aucun nœud d'inférence API payante**.
- **DaVinci Resolve** ouvert : la conformation et les exports `.drt` passent par son API de script.

Le détail pas à pas, avec les identifiants de rendu et les chemins de sortie, est tenu dans
`JOURNAL_EXECUTION.md`.
