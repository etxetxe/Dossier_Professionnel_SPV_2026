# CONTEXT.md — Routage des tâches (couche 1)

> Première lecture en entrant dans l'espace de travail : « où vais-je ? ».
> Ce fichier route une intention vers une étape (`stages/NN-*/`) et son contrat `CONTEXT.md`.
> Il ne contient aucune règle de fond : tout vit dans la couche pointée (Pattern 6).

## Pipeline

Build mono-source : `sources_latex/dossier.tex` → `Dossier_Professionnel_SPV_NoClip_BARON.pdf`.
Cycle courant par défaut : régénérer le PDF puis versionner (aucune édition de contenu sauf demande).

| Intention | Étape | Contrat |
|-----------|-------|---------|
| Machine neuve, 1er build, remote git | `stages/01-setup/` | `stages/01-setup/CONTEXT.md` |
| Modifier le dossier (`.tex` / `.bib`) | `stages/02-edit/` | `stages/02-edit/CONTEXT.md` |
| Compiler le PDF (4 passes) | `stages/03-build/` | `stages/03-build/CONTEXT.md` |
| Livrer puis versionner (git) | `stages/04-deliver/` | `stages/04-deliver/CONTEXT.md` |

## Couches de contexte (rappel ICM)

| Couche | Fichier(s) | Rôle |
|--------|-----------|------|
| 0 | `CLAUDE.md` | Qui suis-je (chargé à chaque session) |
| 1 | `CONTEXT.md` (ce fichier) | Où vais-je (routage) |
| 2 | `stages/NN-*/CONTEXT.md` | Que fais-je (contrat d'étape) |
| 3 | `references/`, `stages/*/references/` | Quelles règles (fond, forme, init) |

## Profil SLM local (16 Go VRAM)

Cible : modèle 7-14B quantifié, budget de contexte serré. **Règle de chargement (ne jamais dépasser) :**
couche 0 + couche 1 + **UN** seul `stages/NN-*/CONTEXT.md` + la **seule** section pointée de la couche 3.
Ne jamais charger un fichier de référence en entier : utiliser l'`## Index` en tête de
`references/input.md` et `references/system.md` pour cibler la bonne section.
`_core/` est de la méta-documentation (construction du système) : **ne pas le charger à l'exécution.**

## Déclencheurs

| Mot-clef | Action |
|----------|--------|
| `démarrer` | Onboarding (`setup/questionnaire.md`) puis étape `01-setup`. |
| `status` | Afficher la complétion du pipeline (étapes 01→04). |

Canon de la méthodologie : `_core/CONVENTIONS.md` (ICM, Jake Van Clief).
