# 06-veille - Dossier de veille (couche 2)

Déclencheur : méthodologie ou dossier de veille. Routage : ../../CONTEXT.md.

## Inputs
- Fond : ../../references/veille.md, section utile uniquement.
- Source : ../../sources_veille/veille.tex.

## Process
1. Vérifier disponibilité et date des sources ; signaler les pièces manquantes.
2. Rédiger quatre pages : sujet/objectifs, méthode, synthèse critique, marché/conclusions.
3. Distinguer faits rapportés, tests exécutés, propositions et hypothèses.
4. Compiler avec ../../build-veille.ps1 ; références manuelles, deux passes pdflatex.
5. Contrôler quatre pages, débordements, liens, accents et rendu de chaque page.
6. Versionner selon 04-deliver : commit RTK_Dossier_SPV_<date_heure>, fetch, merge -X ours, push.

## Outputs
- Source : ../../sources_veille/veille.tex.
- PDF : ../../SPV_BARON_IA_Pipelines_VFX_Hybrides.pdf.
- Contexte : ../../references/veille.md et registre de veille.
- Médias de production et modèles hors dépôt.

## Illustrations
Utiliser les planches QC selectionnees dans sources_veille/img avec legende et date de campagne ; provenance dans references/veille.md section 6. Ces seules copies editoriales sont versionnees. Ne pas retoucher les preuves visuelles.
