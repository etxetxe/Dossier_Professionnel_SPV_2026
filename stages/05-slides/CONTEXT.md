# 05-slides — Générer le support de soutenance web (couche 2)

> Contrat d'étape. Routage : `../../CONTEXT.md`.
> Étape **indépendante** du build LaTeX : elle ne modifie jamais `sources_latex/`.

## Inputs

| Source | Fichier | Scope | Pourquoi |
|--------|---------|-------|----------|
| Forme du deck | `references/deck.md` | § 1 à 4 | Toolchain Marp, charte, grammaire des diapos |
| Outil | `references/marp-setup.md` | Fichier complet | Prérequis Node / Marp CLI (Pattern 7) |
| Fond | `../../references/input.md` | § 9 (retours post-dossier), § 8 (corpus *NATION*, annexes seulement) | Réponses de l'auteur : matière des ajouts hors PDF |
| Fond | `../../sources_latex/dossier.tex` | Ch. 4, 5, 6 | Auto-critique, alternance, veille |
| Source | `../../sources_slides/soutenance.md` | Fichier complet | Entrée du convertisseur |

## Process

1. Vérifier que les médias référencés sont présents (`sources_slides/media/`, `NATION_*.mp4`
   à la racine). **Ces fichiers ne sont pas versionnés** : cf. `references/deck.md` § 4.
2. Éditer `sources_slides/soutenance.md` (contenu) et/ou `sources_slides/theme.css` (forme).
3. Construire depuis la racine :

   ```powershell
   .\push.ps1 -Slides
   ```

   Équivalent manuel :

   ```bash
   npx @marp-team/marp-cli sources_slides/soutenance.md \
     --theme sources_slides/theme.css --html \
     --output Soutenance_SPV_NoClip_BARON.html
   ```

4. Ouvrir le HTML dans un navigateur, dérouler les 18 diapos d'exposé (puis les annexes), vérifier l'audit ci-dessous.
5. Mettre à jour `output/fiche-revision-soutenance.md` si le minutage, un chiffre ou une réponse change.

## Checkpoints

| Après l'étape | L'agent présente | L'utilisateur décide |
|---------------|------------------|----------------------|
| 2 | Le plan des parties et les diapos ajoutées ou retirées | Arbitrage du minutage et des coupes |

## Audit

| Vérification | Condition de passage |
|--------------|----------------------|
| Aucun débordement | Aucune diapo ne dépasse 720 px de haut (contrôle visuel ou export PNG) |
| Médias résolus | Les 4 photogrammes *NoClip*, les 7 vignettes *NATION* et les 3 vidéos s'affichent |
| Notes d'orateur | Chaque diapo porte un commentaire `<!-- … -->` avec son minutage |
| Durée | Somme des minutages ≈ 14 min 10 pour 15 min visées ; NATION et dispositif D restent en annexes |
| Chiffres | Budget et carbone recalculables depuis `references/deck.md` § 6 ; aucun chiffre sans hypothèse écrite |
| Étanchéité git | `git status` ne propose jamais `NATION_*.mp4` ni `sources_slides/media/` |

## Outputs

| Artefact | Emplacement | Format |
|----------|-------------|--------|
| Support de soutenance | racine : `Soutenance_SPV_NoClip_BARON.html` | HTML autonome (16:9) |
| Source du deck | `sources_slides/soutenance.md` + `theme.css` | Markdown + CSS |
| Fiche de révision orale | `output/fiche-revision-soutenance.md` | Markdown |
