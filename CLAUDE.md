# CLAUDE.md — Orchestrateur du Dossier Professionnel SPV

Ce fichier est la **racine du contexte** pour Claude Code (claude.ai/code). Il oriente
l'agent à travers tout le cycle de vie du projet — de l'initialisation à la sortie du PDF
livrable et à la gestion du dépôt GitHub — et délègue le détail aux trois fichiers du
dossier **`contexte/`**.

## Projet

Source LaTeX du portfolio professionnel d'**Etienne Baron**, 2ᵉ année Superviseur de
Production Virtuelle (École Georges Méliès). Le document couvre sa supervision des séquences
en production virtuelle du court-métrage étudiant ***NoClip***. Source unique :
`sources_latex/dossier.tex` ; livrable : `Dossier_Professionnel_SPV_NoClip_BARON.pdf` (racine).

## Carte du contexte (`contexte/`)

| Fichier                  | Rôle | Consulter pour…                                   |
|--------------------------|------|---------------------------------------------------|
| **`contexte/setup.md`**  | Skill d'initialisation **première fois** | Installer la toolchain (MiKTeX, biber, biblatex-apa), premier build, configurer le remote GitHub. |
| **`contexte/system.md`** | Forme | Chaîne de compilation, préambule & paquets, palette/boîtes/colonnes, arborescence des chapitres, diagrammes TikZ, bibliographie, fichiers de support. |
| **`contexte/input.md`**  | Fond  | Documents sources et extraction, matériel réel du plateau, personnes à créditer, chiffres du devis, voix éditoriale, garde-fous rédactionnels. |

> **Règle d'or :** avant toute action, lire le fichier de contexte pertinent.
> Modifier la **forme** → `system.md` ; toucher au **fond** → `input.md` ;
> préparer une **machine neuve** → `setup.md`.

## Pipeline (cycle courant)

Par défaut, **aucune modification de contenu** n'est demandée : le processus est identique à
l'existant — régénérer le PDF et versionner. Enchaînement :

1. **(Init, une fois)** — environnement prêt ? Sinon exécuter le skill `contexte/setup.md`.
2. **Éditer** — n'intervenir sur `sources_latex/dossier.tex` / `references.bib` que sur demande
   explicite, en respectant `system.md` (forme) et `input.md` (fond).
3. **Compiler** — passe complète **pdflatex → biber → pdflatex → pdflatex** depuis
   `sources_latex/` (détail dans `system.md` § 2). Le plus simple :

   ```powershell
   .\push.ps1 -Build
   ```

4. **Livrer** — `push.ps1` copie `sources_latex/dossier.pdf` à la racine sous
   `Dossier_Professionnel_SPV_NoClip_BARON.pdf`.
5. **Versionner** — voir ci-dessous.

## Gestion du dépôt GitHub

Convention (retake utilisateur) : après **chaque génération de PDF**, commit avec le message
**`RTK_Dossier_SPV_[date_heure]`** (ex. `RTK_Dossier_SPV_2026-06-08_0818`), puis `git pull`
+ `git push` pour garder local et GitHub synchronisés. En cas de divergence de fetch
accidentelle, **forcer le merge en faveur du local** (`-X ours`) pour conserver une stricte
identité local ↔ distant. Le script `push.ps1` applique exactement cette logique (commit →
fetch → merge `-X ours` → push, repli `--force-with-lease`).

`gh` n'est pas installé ici et aucune credential n'est disponible : **la configuration du
remote (add/create + premier push) est à la charge de l'utilisateur** (cf. `setup.md` § 3).
Tant qu'aucun remote n'existe, `push.ps1` commit en local et saute proprement le push.
Les auxiliaires LaTeX sont git-ignorés (`.gitignore`).

## Principes

- **Code propre et lisible** : conserver la structure des fichiers de contexte, les tableaux
  et les blocs de commandes — pensés pour être lus par un humain **et** rejoués par un agent IA local.
- **Une seule source de vérité** : ne pas dupliquer ici le contenu des fichiers `contexte/` ;
  les y mettre à jour et ne garder dans ce CLAUDE.md que l'orchestration.
- **Transparence IA (AI Act)** : la mise en forme bénéficie d'outils d'IA générative/agentique ;
  l'analyse, les choix techniques et la responsabilité du contenu restent ceux de l'auteur
  (cf. page « Avertissement — usage de l'IA » du dossier).
