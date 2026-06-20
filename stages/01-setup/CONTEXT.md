# 01-setup — Initialiser l'environnement (couche 2)

> Contrat d'étape. À jouer une seule fois par machine neuve. Routage : `../../CONTEXT.md`.

## Inputs

| Source | Fichier | Scope | Pourquoi |
|--------|---------|-------|----------|
| Guide d'init | `references/setup.md` | Fichier complet | Toolchain, 1er build, remote git |
| Forme | `../../references/system.md` | § 2 (chaîne de compilation) | Dépendances LaTeX exactes |

## Process

1. Vérifier les pré-requis (`pdflatex`, `biber`, `git`, PowerShell, `openpyxl`).
2. Installer MiKTeX + `biber` + `biblatex-apa` (auto-install activé).
3. Premier build : `.\push.ps1 -Build` depuis la racine (≈ 37 pages).
4. (Utilisateur) configurer le remote git (cf. `references/setup.md` § 3).

## Outputs

| Artefact | Emplacement | Format |
|----------|-------------|--------|
| PDF livrable | racine : `Dossier_Professionnel_SPV_NoClip_BARON.pdf` | PDF |
| Environnement validé | checklist `references/setup.md` § 4 | (cases cochées) |
