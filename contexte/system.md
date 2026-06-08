# system.md — Structure LaTeX et dépendances

> Décrit **comment le document est fabriqué** : chaîne de compilation, préambule,
> conventions de design, arborescence des chapitres et fichiers de support.
> Pour *quoi* écrire (contenu rédactionnel, données sources) → voir `input.md`.
> Pour *initialiser* le projet la première fois → voir `setup.md`.

---

## 1. Source unique

Tout le document tient dans un seul fichier : **`sources_latex/dossier.tex`** (~1 150 lignes).
Compilateur : **`pdflatex`** (déclaré dans la magic comment ligne 1 : `% !TEX program = pdflatex`).

La bibliographie vit dans **`sources_latex/references.bib`** (11 entrées, APA).

Toutes les images sont dans **`sources_latex/img/`** (JPG, sensibles à la casse).
Si un `\includegraphics` échoue, vérifier que le nom de fichier correspond exactement.
`img/planning_board.jpg` n'est **plus utilisé** (remplacé par trois graphiques TikZ inline au Ch. 3).

---

## 2. Chaîne de compilation

Le document a une **bibliographie APA** (`biblatex` + `biber`) : la passe complète est
**pdflatex → biber → pdflatex → pdflatex** (pour que sommaire, références croisées et
citations se résolvent), lancée depuis `sources_latex/` :

```bash
cd sources_latex
pdflatex -interaction=nonstopmode dossier.tex
biber dossier
pdflatex -interaction=nonstopmode dossier.tex
pdflatex -interaction=nonstopmode dossier.tex
```

- **Toolchain : MiKTeX** avec `biber` et `biblatex-apa` installés. `[MPM]AutoInstall=1`
  laisse MiKTeX installer à la volée les paquets manquants.
- `\nocite{*}` force l'impression de **toutes** les entrées du `.bib` (même non citées inline).
- Le PDF compilé `sources_latex/dossier.pdf` est copié à la racine sous le nom livrable
  **`Dossier_Professionnel_SPV_NoClip_BARON.pdf`**. Longueur actuelle : ~37 pages.

Le script **`push.ps1 -Build`** (racine) enchaîne automatiquement les 4 passes, copie le
livrable, puis commit/pull/push (voir `CLAUDE.md` § pipeline et `setup.md`).

---

## 3. Préambule (`dossier.tex` lignes 1–116)

**Classe** : `\documentclass[11pt,a4paper]{report}`.

**Encodage & langue** : `inputenc[utf8]`, `fontenc[T1]`, `lmodern`, puis
`babel[french]` (chargé **après** lmodern), `eurosym[official]`, `float`.

**Mise en page** : `geometry` (marges 2,4 cm, headheight 15pt), `graphicx`, `xcolor`,
`fancyhdr`, `titlesec`, `tcolorbox` (+ libs `skins,breakable`), `enumitem`, `booktabs`,
`longtable`, `array`, `tabularx`, `colortbl`, `multirow`, `ragged2e`, `caption`,
`tikz` (+ libs `shapes.geometric,arrows.meta,positioning,calc,fit,backgrounds`),
`hyperref[hidelinks]`.

**Bibliographie** : `csquotes` puis
`biblatex[backend=biber,style=apa,sortcites=true,sorting=nyt,backref=false]`,
`\DeclareLanguageMapping{french}{french-apa}`, `\addbibresource{references.bib}`.

`\sloppy` est posé globalement (juste après `\begin{document}`) pour supprimer les
avertissements *overfull hbox* du texte français.

---

## 4. Conventions de design

### Palette de couleurs (`brXxx`, définies ~ligne 57)

| Couleur        | HEX       | Usage                                            |
|----------------|-----------|--------------------------------------------------|
| `brjaune`      | `E3CF4B`  | jaune Backrooms — en-têtes de ligne, surlignages |
| `brjaunepale`  | `F4EDC0`  | jaune très pâle — fonds                          |
| `braccent`     | `B8860B`  | or foncé — liens, n° de section, cadres de boîte |
| `brdark`       | `2B2A22`  | presque noir chaud — corps de texte, bordures    |
| `brgris`       | `6B6B5E`  | gris-vert — texte secondaire                     |
| `brgrispale`   | `ECEBE3`  | gris très pâle — fonds de tableaux               |
| `brvert`       | `3E7C59`  | vert — zones physiques / fond vert (diagrammes)  |
| `brbleu`       | `3A6EA5`  | bleu — signaux / caméra (diagrammes)             |

### Environnements `tcolorbox` (définis ~lignes 91–105)

- `infobox` — fond jaune, information clé ou synthèse.
- `notebox` — fond gris, note contextuelle.
- `techbox` — blanc à bordure or, spécifications techniques et checklists.

### Types de colonnes `tabularx`

- `Y` — colonne `RaggedRight` (la plupart des tableaux narratifs).
- `C` — colonne `Centering` centrée.
- `\arraystretch` = 1.25.

### Commande dédiée

- `\tc{...}` — time code en monospace or (`\texttt{\color{braccent}...}`).

### Titres, en-têtes, listes

- `titlesec` : chapitres en mode *display* (or `braccent` + filet jaune `brjaune`),
  sections/sous-sections colorées.
- `fancyhdr` : en-tête G « Dossier Professionnel SPV », en-tête D « *NoClip* », pied = n° de page.
- Listes `itemize`/`enumerate` resserrées (`itemsep=2pt`).

### babel-french — règles à respecter

- Pose automatiquement les libellés français et les espaces insécables avant `:`, `;`, `!`, `?`.
- `\renewcommand{\contentsname}{Sommaire}` (dans le corps) **remplace** « Table des matières » :
  garder cet override.
- **Ne pas ajouter un second appel `babel`.**

---

## 5. Arborescence du document (`dossier.tex`)

**Front matter (numérotation romaine)** : page de titre → **Remerciements**
(`\chapter*`, dans le sommaire, L154) → **Avertissement — usage de l'IA**
(`\chapter*`, notice de transparence AI Act, L171) → Sommaire → Guide de lecture.

**Chapitres (numérotation arabe)** :

| Ch. | Titre                                                            | Ligne |
|-----|-----------------------------------------------------------------|-------|
| 1   | Présentation du projet et accès au film (+ time codes VP)       | 192   |
| 2   | Documents fournis à la production (scénario, 3 dispositifs A/B/C, moyens techniques réels, devis grille PAV) | 236 |
| 3   | Documents de préproduction (cahier des charges, plan d'implantation = diagramme nDisplay, diagrammes de flux, 3 graphiques TikZ, découpage technique, plan de feu DMX + pixel-mapping) | 461 |
| 4   | Analyses critiques après fabrication                            | 884   |
| 5   | Synthèse des bonnes pratiques de tournage en fond vert          | 953   |
| 6   | Note de synthèse : alternance et projet professionnel           | 1059  |
| 7   | Veille technologique (IA générative/agentique, outils locaux & Open Source, environnement, écoproduction) — voix « carnet » réflexive | 1080 |
| 8   | Annexe — Lexique technique                                       | 1104  |

**End matter** : **Bibliographie** (`\printbibliography[heading=bibintoc,...]`, APA, L1149).

---

## 6. Diagrammes TikZ (dessinés inline — ne pas remplacer par `\includegraphics`)

- **Diagramme nDisplay / Mur LED** — section « Plan d'implantation du décor
  (physique vs virtuel) », `\label{sec:implantation}` (L491), enveloppé dans
  `\resizebox{\textwidth}{!}{…}`. Montre les 4 zones LED aux **dimensions réelles**
  (px + mètres), RTX A6000 (mur LED) / RTX 2080 (pilotage), routage DisplayPort + Ethernet,
  Sony VENICE 2 + ZEISS CinCraft Scenario, frustum. L'ancienne section séparée « Plan de feu —
  configuration nDisplay / mur LED » a été **supprimée** (fusionnée ici).
- **3 graphiques TikZ** au Ch. 3 (§ Calendrier, L689) : rétroplanning, revue d'asset, indicateur.
- Diagrammes de flux (workflow de fabrication L597, signaux plateau L625), organigramme (L664),
  plan de feu DMX (L835). Les couleurs `brXxx` sont réutilisées partout pour cohérence éditoriale.

---

## 7. Bibliographie (`references.bib`)

Citer inline avec `\autocite{key}`. Types d'entrées et clés :

| Clé              | Type           | Note                                                    |
|------------------|----------------|--------------------------------------------------------|
| `belyakov2023`   | `@thesis`      | mémoire ENS Louis-Lumière — **pas d'ISBN** (documenté)  |
| `aiact2024`      | `@legislation` | Règlement (UE) 2024/1689 (AI Act)                       |
| `melies_spv2025` | `@online`      | École Méliès — formation SPV                            |
| `onisep_spv`     | `@online`      | fiche métier                                            |
| `sony_verona`    | `@online`      | Sony Crystal LED VERONA                                 |
| `zeiss_cincraft` | `@online`      | ZEISS CinCraft Scenario                                 |
| `epic_ue56`      | `@online`      | Unreal Engine 5.6                                       |
| `ecoprod`        | `@online`      | écoproduction                                           |
| `demari2025`     | `@unpublished` | notes de cours — Histoire de la VP                      |
| `jaulent2025`    | `@unpublished` | notes de cours — Prise de vue en VP                     |
| `demorgny2025`   | `@unpublished` | notes de cours — Initiation à Unreal Engine             |

---

## 8. Fichiers de support (racine)

- **`push.ps1`** — script PowerShell de build + synchronisation git (voir `CLAUDE.md`).
  `-Build` recompile (4 passes) ; sans switch, commit de l'état courant. Copie le livrable,
  commit `RTK_Dossier_SPV_<aaaa-mm-jj_hhmm>`, pull (merge `-X ours` en faveur du local),
  push (repli `--force-with-lease`).
- **`.gitignore`** — ignore les auxiliaires LaTeX dans `sources_latex/`
  (`*.aux *.log *.out *.toc *.bbl *.bcf *.blg *.run.xml *.synctex.gz *.fls *.fdb_latexmk`)
  et les logs temporaires (`pass*.log`, `biber.log`).
- **`README.md`** — titre du dépôt.
- **`LICENSE`** — licence du dépôt.
