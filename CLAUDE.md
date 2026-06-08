# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

LaTeX source for the professional portfolio ("Dossier Professionnel SPV") of Etienne Baron, 2ème année Superviseur de Production Virtuelle. The document covers his supervision of virtual production sequences for the student short film *NoClip*.

## Build

The compiler is `pdflatex` (declared in the magic comment on line 1). The document now has an **APA bibliography** (`biblatex` + `biber`), so the full build is **pdflatex → biber → pdflatex → pdflatex** from the `sources_latex/` directory (so TOC, cross-references and citations all resolve):

```
cd sources_latex
pdflatex -interaction=nonstopmode dossier.tex
biber dossier
pdflatex -interaction=nonstopmode dossier.tex
pdflatex -interaction=nonstopmode dossier.tex
```

Toolchain is **MiKTeX** (with `biber` and `biblatex-apa` installed; MiKTeX `[MPM]AutoInstall=1` lets missing packages install on the fly). The bibliography is `sources_latex/references.bib`; `\nocite{*}` forces every entry to print, so the full `.bib` always appears even if not cited inline.

The compiled PDF is committed as `Dossier_Professionnel_SPV_NoClip_BARON.pdf` at the root (copied from `sources_latex/dossier.pdf` after each successful build). Current length: ~37 pages.

All images are in `sources_latex/img/` (JPG). If a `\includegraphics` call fails, check that the filename matches exactly (case-sensitive on some systems). Note: `img/planning_board.jpg` is **no longer used** (replaced by three inline TikZ charts in Ch.3).

## Versioning workflow (git)

The project is a local git repository. Convention (per user retake): after **each PDF generation**, stage and commit with the message **`RTK_Dossier_SPV_[date_heure]`** (e.g. `RTK_Dossier_SPV_2026-06-08_0818`), then `git pull` + `git push` to keep the local and GitHub branches in sync; in case of an accidental fetch divergence, **force the merge** to keep local and remote identical. The GitHub remote (user's personal account) must be configured by the user — `gh` is not installed in this environment and no credentials are available here, so the remote add/create + push step is the user's responsibility. LaTeX aux files are git-ignored (see `.gitignore`).

## Source documents (cours et références)

The following documents were added by the user and used to enrich the dossier:

- `ENSLL_CINEMA_BELYAKOV_2023.pdf` — Master thesis (ENS Louis-Lumière, 2023) by Anton Belyakov: *Le pilotage numérique de la lumière sur les plateaux de cinéma*. Covers DMX512 protocol, Art-Net, CRMX/W-DMX, sACN, pixel mapping, lighting consoles. Used for: DMX/Art-Net technical subsection in Ch.3, expanded Lexique entries (DMX512, Art-Net, univers DMX, adressage, nodle, sACN, CRMX).
- `Configuration_nDisplay_Plateau_Virtuel.pdf` — Whiteboard diagram of the actual nDisplay hardware configuration: 4 LED wall zones (Gauche 1536px, Centre 3072px, Droite 1536px, Plafond 1536px), VP0–VP3 viewports, RTX A6000 (mur LED) + RTX 2080 (pilotage), Sony LED processor. Used to update the nDisplay TikZ diagram in Ch.3.
- `Pipeline Production Virtuelle.pdf` — Whiteboard diagram of the VP signal pipeline (PILOTE → SWITCH → Unreal/nDisplay → Frustum, Perforce version control).
- `Histoire de la Production Virtuelle.docx` — Course notes (Alexia de Mari, Oct 2025): history of VFX and VP, panoramas as LED wall precursors, Méliès, matt painting, TV as VP precursor.
- `Prise de vue en production virtuelle.docx` — Course notes (Camille Jaulent, chef-op): camera fundamentals for VP — CMOS sensor, focal length, aperture, DOF, moire avoidance, ISO/EI distinction, ND filters, white balance, S-Log3, gamut/gamma (DCI-P3). Used to enhance the camera preconisations techbox in Ch.2.
- `Initiation à Unreal Engine.docx` — Course notes (Gilbert Demorgny, 2025): UE5 interface, PBR materials (albedo, roughness, metallic, normal map, emissive), Sequencer, actors/levels. Used for Lexique entries on PBR, Emissive, Normal map, Sequencer.
- `Réglementation de la production audiovisuelle.docx` — Course notes on audiovisual production regulations (informs the AI Act / regulation framing).
- `Optique appliquée de l.docx` — Course notes on applied optics (not yet integrated).
- `PAV-Salaires-minima-conventionnels-applicables-au-1er-janvier-2026.xlsx` — CCN production audiovisuelle salary grid (minima at 2026-01-01). Sheet **"CAT B - CDDU Fiction"** holds the per-day (Base 8h) gross minima used for the devis unit costs (e.g. Directeur photo 395 €, Chef OPS/son 272 €, Chef électricien 225 €, Scripte 219 €, Infographiste 239 €, Truquiste 223 €, Machiniste 184 €, Photographe de plateau 184 €); réalisateur is on a separate sheet (journalier ≈ 300 €). Read with `openpyxl`.
- `NoClip_Screenplay.pdf` — the film's screenplay.
- `Découpage Technique _ NoClip.xlsx` — the shot-by-shot technical breakdown.
- `baron-etienne-bifurcation-carnet-de-recherche-cc-by-nc-sa.pdf` — Etienne's personal research carnet (EESI). **Writing-style reference only** (reflective, essayistic, first-person, references thinkers like Simondon; terms *bifurcation / singularité / trajectoire*). Used to set the voice of the Veille technologique chapter. **Do NOT add this document to the LaTeX database** (do not `\include` it or cite it as a source).

## Real plateau equipment (École Méliès — "appartient à l'école")

The dossier was updated to the **real** gear of the school's VP stage (all school-owned): **Sony Crystal LED VERONA** LED wall (1.56 mm pitch, semi-enveloping volume — Centre 3072 px ≈ 4.88 m, Gauche/Droite 1536 px ≈ 2.44 m each, height 1728 px ≈ 2.74 m, ceiling 1536 px ≈ 2.44 m), **Unreal Engine 5.6** (education licence), **ZEISS CinCraft Scenario** camera tracking, **Sony VENICE 2 (CineAlta)** camera (dual base ISO 800/3200), **fixed ZEISS optics 24/35/50/85 mm**, **RTX A6000 48 Go** render node (mur LED) + **RTX 2080** (pilotage), hard green cyclo, DMX-pilotable lighting. **Nanite is deliberately NOT used** (instability for a constant framerate on the LED wall). Crew is named: Réalisatrice Charlotte, Graphiste 3D (étudiant M2), Opératrice 3D Loane, Op. tracking Arnaud, DOP Femy, Chef électricien Anil, Scripte/Accessoiriste Saph, Machiniste Thomas, Son Timothé, Behind The Shot Ignacio; "Superviseur **VP**" (not "PV").

## People to credit (verified online)

École Georges Méliès (Orly, Grand Paris) — first European VP-supervisor training (Feb 2025, RNCP niveau 7), VP stage inaugurated March 2025 with Sony. Credited in the Remerciements page: **Justine Coulmy** (directrice d'étude SPV, cheffe opératrice), **Laurent Stehlin** (directeur technique — note spelling, the retake's "Stelhin" is a typo), **Guillaume Bourlet** (chargé de formation), **Franck Petitta** (fondateur 1999 & directeur).

## Document structure

Single source file: `sources_latex/dossier.tex`.

**Front matter (roman numbering):** title page → **Remerciements** (`\chapter*`, in TOC) → **Avertissement — usage de l'IA** (`\chapter*`, AI Act transparency notice) → Sommaire → Guide de lecture.

**Chapters (arabic):**

1. Présentation du projet + time codes des séquences VP
2. Documents fournis à la production (analyse scénario, **3 dispositifs A/B/C**, moyens techniques réels école, devis grille PAV)
3. Préproduction (cahier des charges, plan d'implantation = nDisplay diagram, diagrammes de flux, **3 TikZ charts** rétroplanning/revue d'asset/indicateur, découpage technique, plan de feu DMX + pixel-mapping)
4. Analyses critiques après fabrication
5. Synthèse bonnes pratiques fond vert
6. Note de synthèse alternance / projet professionnel
7. **Veille technologique** (IA générative/agentique, outils locaux & Open Source, environnement, écoproduction) — written in Etienne's reflective carnet voice
8. Annexe — Lexique technique

**End matter:** **Bibliographie** (`\printbibliography`, APA, in TOC).

## Design conventions

**Color palette** (`brXxx` named colors, defined around line 45):
- `brjaune` / `brjaunepale` — Backrooms yellow, used for row headers and highlights
- `braccent` — dark gold, for links, section numbers, box frames
- `brdark` — near-black warm, body text and strong borders
- `brgris` / `brgrispale` — grey-green tones, secondary text and table backgrounds
- `brvert` — green, physical set zones in diagrams
- `brbleu` — blue, signal/camera elements in diagrams

**Custom tcolorbox environments** (defined ~lines 79–92):
- `infobox` — yellow background, key information or summaries
- `notebox` — grey background, contextual notes
- `techbox` — white with gold border, technical specifications and checklists

**Custom tabularx column types**:
- `Y` — `RaggedRight` ragged-right column (most narrative tables)
- `C` — `Centering` centered column

**`\tc{}`** — renders timecodes in monospace gold (`\texttt{\color{braccent}...}`).

**TikZ diagrams** are drawn inline (floor plans, signal flow charts, org chart, lighting plans). The `brXxx` colors are used throughout for consistency with the editorial palette.

**`babel-french` is active** (`\usepackage[french]{babel}`, loaded after `lmodern`). It automatically sets French chapter/section labels and adds non-breaking spaces before `:`, `;`, `!`, `?`. The `\renewcommand{\contentsname}{Sommaire}` inside the document body overrides babel's default "Table des matières" — keep this override. Do not add a second `babel` call.

**Title page** — épurée: white background, dark text (`brdark`/`braccent`/`brgris`), **no yellow banner or frame** (the old TikZ "couloir" overlay was removed). Keep it plain.

**nDisplay diagram** — The detailed nDisplay/Mur LED TikZ diagram now lives in the section **"Plan d'implantation du décor (physique vs virtuel)"** (`\label{sec:implantation}`), wrapped in `\resizebox{\textwidth}{!}{…}`. It shows the 4 LED zones with **real dimensions** (px + meters), RTX A6000 (mur LED) / RTX 2080 (pilotage), DisplayPort + Ethernet routing, Sony VENICE 2 + ZEISS CinCraft Scenario, frustum. The previously separate "Plan de feu — configuration nDisplay / mur LED" section (Ch.3 end) was **deleted** (merged here). Do not replace this diagram with `\includegraphics`.

**Bibliography** — `\usepackage{csquotes}` then `\usepackage[backend=biber,style=apa,…]{biblatex}`, `\DeclareLanguageMapping{french}{french-apa}`, `\addbibresource{references.bib}`. Cite inline with `\autocite{key}`. Entry types: `@thesis` (Belyakov — note: a mémoire has **no ISBN**, documented in the entry), `@legislation` (AI Act), `@online`, `@unpublished` (course notes).

**`\sloppy`** is set globally to suppress overfull hbox warnings in French text.
