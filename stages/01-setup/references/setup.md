---
name: setup-dossier-spv
description: Initialise pour la première fois l'environnement du Dossier Professionnel SPV (toolchain LaTeX/MiKTeX, dépôt git, premier build). À exécuter une seule fois sur une machine neuve, avant tout cycle d'édition.
---

# setup.md — Initialisation du projet (skill)

> **Quand déclencher ce skill :** machine neuve, dépôt fraîchement cloné, ou première
> compilation. Une fois l'environnement prêt, ce fichier n'est plus rejoué — le cycle
> courant (éditer → build → versionner) est décrit dans `CLAUDE.md`.
>
> Forme, dépendances LaTeX → `../../../references/system.md`.
> Contenu, données sources → `../../../references/input.md`.

---

## Pré-requis (à vérifier d'abord)

| Outil      | Rôle                              | Vérification                     |
|------------|-----------------------------------|----------------------------------|
| MiKTeX     | distribution LaTeX (`pdflatex`)   | `pdflatex --version`             |
| biber      | backend bibliographique           | `biber --version`                |
| biblatex-apa | style APA                       | installé via MiKTeX (cf. ci-dessous) |
| git        | versionnage                       | `git --version`                  |
| PowerShell | exécution de `push.ps1`           | `$PSVersionTable.PSVersion`      |
| Python + openpyxl | lecture des `.xlsx` sources (devis, découpage) | `python -c "import openpyxl"` |

---

## Étape 1 — Toolchain LaTeX (MiKTeX)

1. Installer **MiKTeX** (https://miktex.org). Cocher l'installation des paquets à la volée.
2. Vérifier / activer l'auto-installation :

   ```powershell
   initexmf --set-config-value "[MPM]AutoInstall=1"
   ```

3. S'assurer que **`biber`** et **`biblatex-apa`** sont disponibles (sinon MiKTeX Console →
   Packages, ou `miktex packages install biblatex-apa`). Ils sont requis par la
   bibliographie APA (`system.md` § 2).

---

## Étape 2 — Premier build (vérification de la chaîne)

Depuis la racine du projet, lancer la passe complète **pdflatex → biber → pdflatex → pdflatex** :

```powershell
.\push.ps1 -Build
```

Le script (`push.ps1`) compile `sources_latex\dossier.tex`, copie le PDF à la racine sous
`Dossier_Professionnel_SPV_NoClip_BARON.pdf`, puis tente la synchronisation git.
En cas de doute, on peut faire les 4 passes à la main (voir `system.md` § 2).

Un premier build réussit ≈ 37 pages. Si un `\includegraphics` échoue, vérifier la casse exacte
des fichiers dans `sources_latex/img/`.

---

## Étape 3 — Dépôt git distant (responsabilité utilisateur)

`gh` **n'est pas installé** dans cet environnement et aucune credential n'y est disponible :
**la configuration du remote est à la charge de l'utilisateur.** Une seule fois :

```powershell
git remote add origin https://github.com/<compte>/<repo>.git
git push -u origin (git rev-parse --abbrev-ref HEAD)
```

Tant qu'aucun remote n'est configuré, `push.ps1` effectue le commit local et **saute**
proprement l'étape pull/push (avec un avertissement).

> Si l'utilisateur doit s'authentifier de façon interactive (ex. `gh auth login`),
> lui suggérer de taper la commande préfixée de `!` dans le prompt pour l'exécuter dans la session.

---

## Étape 4 — Vérifications finales

- [ ] `pdflatex`, `biber`, `git` répondent en ligne de commande.
- [ ] `.\push.ps1 -Build` produit `Dossier_Professionnel_SPV_NoClip_BARON.pdf` à la racine.
- [ ] Les auxiliaires LaTeX sont bien ignorés (`.gitignore` présent).
- [ ] (Optionnel) `origin` configuré et premier `push` réussi.

Une fois ces cases cochées, l'environnement est prêt : passer au cycle courant décrit
dans `CLAUDE.md`.
