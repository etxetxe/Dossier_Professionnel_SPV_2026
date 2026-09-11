# NATION — livraison du prémontage de revue v001

Les 11 interventions du brief ont une version de prémontage, regroupée en 10 passages car les plans 42 et 44 se superposent. La bobine comporte 2 012 images, soit 1 min 20 s et 12 images à 25 i/s. Elle est en 1280 × 720 et muette, comme la référence NATION_V2.MOV.

## À ouvrir

- Vidéo : `04_PREMONTAGE/NATION_RETAKES_PREMONTAGE_v001.mp4`.
- Copie du film dans Resolve : `NATION_RETAKES_PREMONTAGE_v001`, retakes sur la piste V20 ; export `.drt` dans 04_PREMONTAGE.
- Bobine éditable : `NATION_RETAKES_BOBINE_v001` ; export `.drt` dans 04_PREMONTAGE.
- Feuille de route : `00_SUPERVISION/FEUILLE_DE_ROUTE_VFX.md`.
- Workflows ouvrables : `02_WORKFLOWS`. Graphes d’exécution : sous-dossier `API`. Composants NATION archivés : `CUSTOM_NODES/nation_vfx`.
- Vidéos et EXR de revue complets : `03_PLANS/Pxxx/REVIEW_v001`.
- EXR 4K du flou du plan 44 : `03_PLANS/P044/EXR_HALF_v002`, 213 images source 140–352, 4096 × 2304, demi-précision flottante ZIP. Les EXR 32 bits d’origine restent conservés.

## Vérifications réalisées

Décodage des 2 012 images, cadence de 25 i/s, comptes d’images et durées de chacun des 10 passages, première/milieu/dernière image, présence des 2 012 EXR de revue. Conformation à la position d’origine des plans sur la copie du montage. Deux exports témoins Resolve confirment cadrage et couleur après import. Les 213 EXR 4K du 44 sont présents ; trois images réparties dans la séquence ont été vérifiées en résolution, format et valeurs finies. L’écart maximal avec le test 32 bits est de 0,00024414, dû à la demi-précision flottante.

La planche de contrôle est `05_QC/CONTACT_RETAKES_v001.jpg`. Les rapports détaillés se trouvent dans 05_QC. La timeline source NATION V2 est conservée.

## Statut artistique

Il s’agit d’un prémontage de revue, pas d’un master de diffusion validé. Le 68 reconstruit le point de vue et certains détails de costumes par IA. Le sable et le contact du 53, les ombres et franges des Torii et de la tour demandent une finition après validation. Le dédoublement visible du personnage masculin à la fin du 215 est déjà présent dans le composite source ; la retake concerne ici la tour.

Les EXR REVIEW_SDR sont dérivés des composites de revue SDR et ne remplacent pas des masters HDR en résolution source. L’export audio du projet actuel est silencieux sur les passages concernés ; la bobine est donc livrée muette et les pistes audio d’origine restent dans la copie complète du film.

Tous les modèles ont tourné localement dans ComfyUI, sans modèle API. Les dossiers TEST et P044/EXR_v001 sont des essais ou calculs incomplets ; la version 4K livrée du 44 est EXR_HALF_v002. Pour relancer un workflow, choisir un nouveau dossier de sortie afin de conserver les versions existantes.
