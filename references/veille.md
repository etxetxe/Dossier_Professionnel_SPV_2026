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
- Racine confirmee par l'utilisateur : D:/NATION. Les campagnes disponibles sont datees des 10 et 11 septembre. Ne pas les redater au 9. Les remarques de recherche de fichiers restent dans le contexte, pas dans le livrable.
- Ne pas confondre les 10 plans/16 rendus arrêtés au 4 septembre avec les 11 interventions/10 passages du 10.
- L'état final ancre la numérotation sur le plan 42 ; les indices initiaux ne sont pas validés.
- V1 du 10 : 2012 images a 25 i/s, revue 720p muette ; pas un master HDR. Etat historique a distinguer de la V2.
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


## 6. Revision illustree - campagnes des 10 et 11 septembre
- Brief V2, feuille de route, etat de livraison et journal archives dans veille_sources/2026-09-11 avec empreintes.
- Priorite au diagnostic final : au 215, l'enfant porte a ete pris pour un dedoublement dans la V1. Le journal corrige aussi son premier constat d'absence de plaque en retrouvant C1438.MP4 sur V6.
- La restitution de contraste du 215 est demontree sur 310-331 seulement ; REVIEW_v006 reste livre sans cette correction, tracking manuel necessaire.
- P068 : la V2 reprend les comediens du tournage ; le fond alimente 89/90.
- Reference-to-video : retenu dans le rapport pour 47/88/145, ecarte sur 215 ; ne pas generaliser cette performance.
- Trois planches QC existantes copiees sans retouche dans sources_veille/img : p047_v1_v2.jpg, p068_v1_v2.jpg, p215_diagnostic.jpg. Fig. 1 a 3 dans le PDF. Provenance et empreintes dans le manifeste du 11.
- Ces trois illustrations editoriales sont versionnees a la demande de l'utilisateur ; les rushes, rendus complets, modeles et corpus media bruts restent hors depot.
- Retirer les commentaires de fabrication hors sujet du PDF ; conserver dates exactes et statut de revue dans les legendes et sources.


## 7. Voix narrative et transparence (retake utilisateur)
- Dossier de veille lu par un humain : partir des situations de NoClip et NATION, puis faire emerger les questions, essais et changements de methode. Premiere personne, phrases concretes, rythme moins uniforme ; pas de faux souvenirs ni de fautes ajoutees artificiellement.
- Bifurcation : reference de voix uniquement, digest input.md section 3.12 et extraits archives. Original retrouve au commit 2bd8850, extraction de texte vide ; rendu complementaire interrompu. Ne pas pretendre avoir relu tout le carnet.
- Presenter NoClip comme court-metrage etudiant (Ryan/Backrooms), supervision VP LED/Unreal et probleme de preparation/tracking ; NATION comme fiction, travail personnel VFX hors ecole, desert fabrique a partir de comediens sur fond vert et maquette, problemes de continuite et integration.
- Aucun renvoi bibliographique au dossier professionnel ni aux fichiers de contexte ; ils restent sources internes. Bifurcation reste aussi hors bibliographie. Les rapports NATION sont identifies a part comme materiau de terrain.
- Mention IA explicite : aide a la redaction/structuration/LaTeX, images hybrides IA/prises de vues/compositing, validation et responsabilite editoriale de l auteur. Reference article 50 UE 2024/1689 ; ne pas presenter la mention comme une certification juridique de conformite.
- Article 50 verifie sur https://ai-act-service-desk.ec.europa.eu/fr/ai-act/article-50 et https://eur-lex.europa.eu/eli/reg/2024/1689/oj?locale=fr le 11 septembre 2026.
- Conserver trois illustrations et quatre pages, methodologie reguliere et sources professionnelles malgre la narration.
