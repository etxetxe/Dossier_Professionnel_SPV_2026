# Conformation — état vérifié après lecture des sauvegardes

- Sauvegarde la plus récente trouvée : Timeline.20260910173521, 10 septembre 2026 à 17 h 35, nom interne NATION V2. Les huit fichiers Timeline ont été inspectés sans modification.
- Projet Resolve accessible par son interface de scripting : Nation, timeline NATION V2, identifiant a99eecee-9044-4bd0-ad1e-3817c5876aa8.
- Timeline actuelle : 3840 × 2160, 25 i/s, 25023 images (16 min 40 s 23 images), 19 pistes vidéo. L'inventaire renvoie 274 éléments incluant des transitions et des couches superposées. Les indices calculés ne sont pas encore une correspondance validée des numéros du brief.
- NATION V2_1.mp4 : 1280 × 720, 25 i/s, 24995 images (16 min 39 s 20 images).
- NATION_V2.MOV : bobine VFX, 1280 × 720, 25 i/s, 3141 images (2 min 05 s 16 images). Planche de repérage sauvegardée dans 01_REFERENCES.
- Exports DRT et FCPXML de la timeline actuelle sauvegardés dans 01_REFERENCES. Ce sont des références du montage source, pas des prémontages retouchés.
- Les compositions Fusion embarquent des références EXR que le seul nom de rush ne révèle pas. La table EXR_FUSION_MAP.json enregistre 29 références internes, avec timecodes en images et trims. Certains chemins sont sur D:, d'autres dans Videos/NATION/05_PLANCHES : ils devront être vérifiés en plus du dossier _EXR.
- ComfyUI opérationnel sur 127.0.0.1:8189 après lancement avec UTF-8. GPU RTX 5080 Laptop, environ 15,9 Go de VRAM. Sorties : D:/NATION/RETAKES_20260910/03_PLANS/COMFY_OUTPUT. Entrées : D:/NATION/RETAKES_20260910/01_REFERENCES/COMFY_INPUT. Aucun rendu n'a encore été lancé. Le nœud optionnel PatchTritonVAE ne se charge pas ; ne pas l'utiliser dans les workflows en l'état.
- Prochaine action : l'utilisateur sélectionne le plan 42 dans Resolve pour ancrer la numérotation de la page Montage. Ne pas appliquer les retakes selon un simple index chronologique supposé.

Cette note remplace les constats initiaux de la feuille de route concernant l'absence d'accès à Resolve/ComfyUI et précise les durées des références.
