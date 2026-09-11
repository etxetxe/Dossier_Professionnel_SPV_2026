# Veille IA et supervision VFX - fond et provenance

## Index
1. Énoncé
2. Sources locales
3. Sources web
4. Routine
5. Fabrication

## 1. Énoncé
Photo fournie le 11 septembre 2026 : méthodologie claire et régulière, objectifs, canaux/sources, routine, organisation des données, exploitation du VP Gathering 2026. Dossier écrit de quatre pages, rendu le 11 septembre 2026, nom SPV_NOM_[SujetVeille].pdf. Structure : sujet/objectifs ; outils/fréquence/sources ; synthèse/analyse critique ; état du marché/conclusions. Oral de 10 à 15 minutes le 28 septembre, destiné à un décideur ; non généré ici.

## 2. Sources locales
- sources_latex/dossier.tex, chapitres 4 à 6 : fond historique.
- input.md § 8 : source unique du corpus désert archivé le 8 septembre.
- D:/NATION/RETAKES_20260910/00_SUPERVISION/ : ETAT_CONFORMATION.md (intermédiaire), FEUILLE_DE_ROUTE_VFX.md et ETAT_PRODUCTION_REPRISE.md (final v001).
- Archives textuelles dans veille_sources/2026-09-10 ; empreintes et chemins dans manifeste.json.
- Rapport du 9 septembre non retrouvé dans les emplacements inspectés ; chemin demandé à l'utilisateur. Ne rien lui attribuer avant lecture. Corpus incomplet explicitement signalé dans le PDF.
- Ne pas confondre les 10 plans/16 rendus arrêtés au 4 septembre avec les 11 interventions/10 passages du 10.
- L'état final ancre la numérotation sur le plan 42 ; les indices initiaux ne sont pas validés.
- 2012 images à 25 i/s, revue 720p muette ; pas un master HDR. Plan 68 et finitions encore à valider.
- Contrôles repris comme rapportés, sans prétendre à un nouvel audit des médias.
- Aucune mesure comparative de coût, gain ou énergie : aucune économie chiffrée.

## 3. Sources web
Consultées le 11 septembre 2026 :
- https://dev.epicgames.com/documentation/en-us/unreal-engine/in-camera-vfx-overview-in-unreal-engine : ICVFX ; page évolutive.
- https://docs.comfy.org/api-reference/cloud/workflow/submit-a-workflow-for-execution : graphe JSON ; source documentaire, pas usage du cloud.
- https://vpgathering.com/industry-day/ : programme du 15 avril, risques de décision, DCC/Chaos, environnement.
- https://www.b2match.com/e/vp-gathering-2026/components/65001 : édition du 14 au 16 avril à Breda.
Ne pas inventer présence, rencontre ni performance démontrée à partir du programme. Creative Machines et VPG sont deux événements distincts. Ne pas transformer les perspectives UE6/world models du dossier historique en faits acquis.

## 4. Routine
Nouvellement formalisée, sans reconstituer une assiduité passée : hebdomadaire 30 min collecte + 30 min tri + 60 à 90 min essai ; après retake 10 min de compte rendu ; mensuel 45 min de synthèse.
Registre : veille_registre.md. Modèle : veille_fiche_modele.md.
Même entrée/plage, une variable, recettes technique puis artistique, version et motif de refus. Durée identique = indice d'appariement à confirmer par contenu/TC. Graphe et seed seuls ne garantissent pas la reproduction bit à bit.

## 5. Fabrication
Source sources_veille/veille.tex ; charte noir chaud/or/jaune pâle issue de system.md. Deux passes pdflatex via ../build-veille.ps1 ; pas de biber (références manuelles). Quatre pages A4 ; contrôler les quatre rendus PNG. Auxiliaires et contrôles temporaires ignorés. PDF racine SPV_BARON_IA_Pipelines_VFX_Hybrides.pdf. Chaîne autonome du dossier pro et du deck.
