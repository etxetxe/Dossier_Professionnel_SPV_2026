# NATION — feuille de route de supervision VFX IA

Le brief artistique est « Retake Nation Codex.md ». La demande dans la conversation fixe la livraison : feuille de route, workflows et sorties ComfyUI sur SSD3 Nation D:, puis prémontage des retakes dans l’ordre de NATION V2. La numérotation est celle de la page Montage ; elle a été conformée à partir du plan 42 sélectionné.

## Périmètre

11 interventions, réparties sur 10 passages distincts : les plans 42 et 44 se superposent. La bobine de revue couvre 2 012 images à 25 i/s, soit 1 min 20 s et 12 images. Les coupes et durées suivent le projet Resolve actuel. La timeline source NATION V2 est conservée ; les retakes sont placées dans une copie dédiée.

## Ordre de fabrication

1. Conformer les plans, archiver la timeline et les compositions Fusion, vérifier les EXR et les médias du tournage.
2. Fixer les éléments communs : Torii frontal pour 53/88/145, famille de dune pour 88/89/90/145, ciel du 47.
3. Préserver les acteurs du tournage par leurs détourages existants ou par segmentation. Réserver la reconstruction générative du mouvement au changement de point de vue du 68.
4. Composer chaque intervention sur toute sa durée : profondeur, occultations, mouvement, flou, poussière et couleur.
5. Vérifier première, milieu et dernière image, lecture complète, cadence, nombre d’images, raccords et son ; assembler la revue et conformer une copie du montage.
6. Après validation artistique de la revue, reprendre les finitions en résolution source et livrer les masters avec gestion couleur explicite.

## Découpage de supervision

| Plan | Entrée montage | Durée | Intervention / fabrication | Point de revue |
|---|---|---|---|---|
| 42 | 00:02:05:18 | 421 images | **Nettoyage du décor et flou** — Passe de décor sans la rangée de rochers, recalée dans une copie Fusion ; acteurs et premier plan conservés. Flou temporel de revue. | Vérifier le raccord de relief entre les deux passes de décor. |
| 44 | 00:02:05:18 | 421 images | **Flou du premier plan** — Flou guidé par mouvement ; traitement EXR flottant 4096 × 2304, plage source 140–352. | Contrôler la dose de flou en lecture à 25 i/s. |
| 47 | 00:02:34:11 | 113 images | **Cirrus** — Ciel seul généré localement puis intégré sous masque ; géométrie de la tour conservée. | Affiner les bords de ciel sur le master et sa parallaxe. |
| 53 | 00:03:00:13 | 267 images | **Torii frontal qui sort du sable** — Porte isolée, montée animée, occultation par le sol, poussière et profondeur de champ. | Prévisualisation : affiner le contact au sol et la simulation du sable au stade final. |
| 67 | 00:03:37:06 | 227 images | **Fumée désertique** — Deux couches de poussière animées, dérive continue sans raccord périodique visible. | Valider la densité et la direction du vent. |
| 68 | 00:03:46:08 | 55 images | **Point de vue surplombant** — Image de référence Boogu et séquence Wan VACE calculées localement ; 55 images conservées. | Validation artistique requise : cadrage et détails des costumes reconstruits par IA. |
| 88 | 00:04:59:01 | 292 images | **Torii de face et retrait du feuillage** — Porte détourée sur dune commune ; gardes du tournage conservés, poteaux témoins retirés. | Affiner les ombres de contact et les occultations au master. |
| 89 | 00:05:10:18 | 101 images | **Dune cohérente** — Même famille de dune ; détourage RGBA original C0897.mov recalé et raccordé en couleur. | Affiner les franges des costumes et le raccord de contraste. |
| 90 | 00:05:14:19 | 84 images | **Même dune zoomée** — Décor du 89 agrandi ×1,65 ; détourage original C0899.mov préservant mains et accessoire. | Même contrôle des franges et du contraste que le 89. |
| 145 | 00:09:22:17 | 101 images | **Même Torii frontal que le 88** — Même décor et même porte ; acteurs du tournage composités et poteaux témoins retirés. | Valider les passages devant et derrière la porte. |
| 215 | 00:14:20:24 | 351 images | **Tour droite et surplombante** — Correction localisée de la tour avec suivi du mouvement ; acteurs et horizon conservés. | Affiner les contours et la perspective en mouvement au master. |

## Formats et limites

Les vidéos et EXR portant REVIEW sont des éléments de prémontage 1280 × 720 à 25 i/s. Les EXR REVIEW_SDR proviennent des composites de revue SDR ; ils ne sont pas des masters HDR issus des EXR linéaires originaux. Le traitement P044/EXR_HALF_v002 travaille séparément sur la séquence source flottante 4096 × 2304. La version 4K livrée du 44 est en demi-précision flottante (16 bits), compression ZIP ; les sources 32 bits sont conservées. La version P044/EXR_v001 est un calcul 32 bits interrompu et incomplet, remplacé par EXR_HALF_v002. Les tests restent dans leurs dossiers TEST et ne font pas partie de la livraison de revue.

Le plan 68 reconstruit le point de vue par IA : sa silhouette, son cadrage et les accessoires doivent être validés. Le sable du 53, les ombres et détourages des Torii, et les franges du 215 restent des finitions à reprendre après validation du prémontage. Cette étape est une proposition de montage et de direction VFX, pas un master de diffusion validé.

La bobine est muette, comme NATION_V2.MOV. L’export du bus audio du projet actuel ne contient pas de signal sur les passages retouchés ; les pistes audio d’origine restent dans la copie complète de la timeline. Un dédoublement sur le personnage masculin à la fin du 215 est déjà présent dans le composite source et reste à corriger au stade final.

## Reproductibilité

Tous les modèles ont été exécutés localement dans ComfyUI : Boogu Image Edit, Wan 2.1 VACE 1.3B et BiRefNet. Aucun modèle API n’a été utilisé. Les workflows ouvrables sont dans 02_WORKFLOWS ; leurs graphes d’exécution sont dans 02_WORKFLOWS/API. Les composants NATION sont archivés dans CUSTOM_NODES/nation_vfx. Les sorties conservent leurs versions et les sources ne sont pas écrasées.

Chaque plan se trouve dans 03_PLANS/Pxxx. Les médias, la bobine et la copie de montage doivent rester ensemble sur D: pour conserver les liens. Pour relancer un workflow, choisir un nouveau dossier de sortie : les composants NATION refusent d’écraser une version existante. Les références du tournage restent à leurs chemins d’origine sur C: et D:.

## Critères de validation

Pas de médias hors ligne ni de rupture de cadence ; durées identiques aux plages conformées ; pas de dérive des acteurs hors du plan 68 ; cohérence du Torii et des dunes entre les plans ; flou compatible avec le mouvement ; poussière et ciel sans clignotement ; raccords de son issus de la timeline source. Le rapport 05_QC/CONTROLE_RETAKES_v001.json distingue les rendus complets des rendus encore manquants. ETAT_PRODUCTION_REPRISE.md donne l’état courant de livraison.
