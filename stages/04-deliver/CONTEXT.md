# 04-deliver — Livrer et versionner (couche 2)

> Contrat d'étape. Routage : `../../CONTEXT.md`.

## Inputs

| Source | Fichier | Scope | Pourquoi |
|--------|---------|-------|----------|
| PDF compilé | `../../sources_latex/dossier.pdf` | (sortie de `03-build`) | Le livrable |
| Script | `../../push.ps1` | (sans switch) | Copie + commit + sync git |
| Convention git | `../../CLAUDE.md` | § Gestion du dépôt GitHub | Message `RTK_…`, merge `-X ours` |

## Process

1. `push.ps1` copie le PDF à la racine sous `Dossier_Professionnel_SPV_NoClip_BARON.pdf`.
2. Commit `RTK_Dossier_SPV_<aaaa-mm-jj_hhmm>`.
3. `fetch` → `merge -X ours` (faveur du local) → `push` (repli `--force-with-lease`).
4. Sans remote configuré : commit local, push sauté proprement.

## Outputs

| Artefact | Emplacement | Format |
|----------|-------------|--------|
| Livrable | racine : `Dossier_Professionnel_SPV_NoClip_BARON.pdf` | PDF |
| Commit | historique git | `RTK_Dossier_SPV_<date_heure>` |
