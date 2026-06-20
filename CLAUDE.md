# Dossier-Professionnel-SPV

Système de publication structuré selon la **méthodologie ICM** (*Interpreted Context Methodology*,
Jake Van Clief) : la **structure de dossiers EST l'architecture de l'agent**. Couche 0 (ce fichier)
→ couche 1 (`CONTEXT.md`, routage) → couche 2 (`stages/NN-*/CONTEXT.md`, contrats d'étape) →
couche 3 (`references/`, fond/forme/init). Canon complet : `_core/CONVENTIONS.md`.

## Projet

Source LaTeX du portfolio professionnel d'**Etienne Baron**, 2ᵉ année Superviseur de
Production Virtuelle (École Georges Méliès). Le document couvre sa supervision des séquences
en production virtuelle du court-métrage étudiant ***NoClip***. Source unique :
`sources_latex/dossier.tex` ; livrable : `Dossier_Professionnel_SPV_NoClip_BARON.pdf` (racine).

## Arborescence

```
Dossier-Professionnel-SPV/
├── CLAUDE.md                 (couche 0 — vous êtes ici)
├── CONTEXT.md                (couche 1 — routage des tâches)
├── README.md · LICENSE · push.ps1 · .gitignore
├── Dossier_Professionnel_SPV_NoClip_BARON.pdf   (livrable)
├── _core/                    (méta : canon ICM — NON chargé à l'exécution)
│   ├── CONVENTIONS.md        (ICM : 5 couches + 15 patterns)
│   └── placeholder-syntax.md (syntaxe des variables {{…}})
├── references/               (couche 3 — réfs transverses)
│   ├── input.md              (fond : données, voix, garde-fous)
│   └── system.md             (forme : compilation, design, arborescence)
├── stages/                   (couche 2 — contrats d'étape)
│   ├── 01-setup/             (init machine + 1er build + remote)
│   ├── 02-edit/              (éditer .tex / .bib — sur demande)
│   ├── 03-build/             (compiler le PDF, 4 passes)
│   └── 04-deliver/           (copier le livrable + versionner)
├── setup/questionnaire.md    (onboarding système — déclencheur `démarrer`)
└── sources_latex/            (source LaTeX : dossier.tex, references.bib, img/)
```

## Carte du contexte (couche 3)

| Fichier | Rôle | Consulter pour… |
|---------|------|-----------------|
| `stages/01-setup/references/setup.md` | Init | Toolchain MiKTeX/biber, 1er build, remote GitHub. |
| `references/system.md` | Forme | Compilation, préambule, palette/boîtes, chapitres, TikZ, biblio. |
| `references/input.md` | Fond | Sources, matériel plateau, crédits, devis, voix, garde-fous. |

> **Règle d'or :** avant toute action, lire le contrat d'étape (`stages/NN-*/CONTEXT.md`),
> qui pointe vers la seule section utile de la couche 3. Forme → `system.md` ;
> fond → `input.md` ; machine neuve → `setup.md`.

## Déclencheurs

| Mot-clef | Action |
|----------|--------|
| `démarrer` | Onboarding (`setup/questionnaire.md`) puis étape `01-setup`. |
| `status` | Afficher la complétion du pipeline (étapes 01→04). |

## Pipeline (cycle courant)

Par défaut, **aucune modification de contenu** : régénérer le PDF et versionner. Le routage
détaillé vit dans `CONTEXT.md` ; chaque étape porte son contrat. Enchaînement :

1. **(`01-setup`, une fois)** — environnement prêt ? sinon jouer le contrat d'init.
2. **(`02-edit`)** — n'intervenir sur `dossier.tex` / `references.bib` que sur demande explicite.
3. **(`03-build`)** — passe complète `pdflatex → biber → pdflatex → pdflatex`. Le plus simple :

   ```powershell
   .\push.ps1 -Build
   ```

4. **(`04-deliver`)** — copie du PDF à la racine + versionnement git.

## Gestion du dépôt GitHub

Convention (retake utilisateur) : après **chaque génération de PDF**, commit
**`RTK_Dossier_SPV_[date_heure]`** (ex. `RTK_Dossier_SPV_2026-06-08_0818`), puis `git pull`
+ `git push`. En cas de divergence, **forcer le merge en faveur du local** (`-X ours`).
`push.ps1` applique cette logique (commit → fetch → merge `-X ours` → push, repli
`--force-with-lease`). `gh` n'est pas installé : la configuration du remote est à la charge de
l'utilisateur (cf. `stages/01-setup/`). Sans remote, `push.ps1` commit en local et saute le push.
Auxiliaires LaTeX git-ignorés (`.gitignore`).

## Principes (ICM)

- **Couche 2 = routage, pas contenu** : les `CONTEXT.md` pointent, ils ne dupliquent pas (Pattern 6).
- **Source unique de vérité** : chaque information a un seul foyer ; ailleurs, un pointeur (Pattern 5).
- **Références à sens unique** : chaque dossier pointe vers ce dont il dépend, jamais l'inverse (Pattern 3).
- **Contexte minimal** : ne charger que la section utile (Pattern 4). Plus de contexte ≠ meilleur résultat.
- **Transparence IA (AI Act)** : la mise en forme bénéficie d'outils d'IA générative/agentique ;
  l'analyse, les choix techniques et la responsabilité du contenu restent ceux de l'auteur.
