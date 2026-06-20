# 03-build — Compiler le PDF (couche 2)

> Contrat d'étape. Routage : `../../CONTEXT.md`.

## Inputs

| Source | Fichier | Scope | Pourquoi |
|--------|---------|-------|----------|
| Forme | `../../references/system.md` | § 2 (chaîne de compilation) | Ordre des 4 passes |
| Source | `../../sources_latex/dossier.tex` | Fichier complet | Entrée du compilateur |
| Script | `../../push.ps1` | `-Build` | Enchaîne les passes + copie |

## Process

1. Depuis la racine : `.\push.ps1 -Build`.
2. (Équivalent manuel) `pdflatex → biber → pdflatex → pdflatex` depuis `sources_latex/`.
3. Vérifier : aucune erreur `\includegraphics` (casse exacte des fichiers `img/`).

## Audit

| Vérification | Condition de passage |
|--------------|----------------------|
| PDF produit | `sources_latex/dossier.pdf` existe et s'ouvre |
| Citations résolues | Pas de `?` dans les renvois ni la bibliographie |
| Pagination | ≈ 37 pages |

## Outputs

| Artefact | Emplacement | Format |
|----------|-------------|--------|
| PDF compilé | `sources_latex/dossier.pdf` | PDF |
