# 02-edit — Éditer le dossier (couche 2)

> Contrat d'étape. Par défaut AUCUNE édition (cycle courant = build + version).
> N'intervenir que sur demande explicite. Routage : `../../CONTEXT.md`.

## Inputs

| Source | Fichier | Scope | Pourquoi |
|--------|---------|-------|----------|
| Fond | `../../references/input.md` | Section concernée | Données, voix, garde-fous |
| Forme | `../../references/system.md` | Section concernée | Préambule, design, arborescence |
| Source | `../../sources_latex/dossier.tex` | Zone éditée | Le document |
| Biblio | `../../sources_latex/references.bib` | Entrée concernée | Citations APA |

## Process

1. Confirmer la demande : édition de fond ou de forme ?
2. Charger UNIQUEMENT la section pertinente de `input.md` / `system.md` (Pattern 4).
3. Éditer `dossier.tex` / `references.bib` en respectant les garde-fous (`input.md` § 7).
4. Passer à `03-build`.

## Checkpoints

| Après étape | L'agent présente | L'humain décide |
|-------------|------------------|-----------------|
| 1 | Le diff envisagé (fond/forme, sections touchées) | Valider ou réorienter |

## Outputs

| Artefact | Emplacement | Format |
|----------|-------------|--------|
| Source mise à jour | `../../sources_latex/dossier.tex` (+ `.bib`) | LaTeX |
