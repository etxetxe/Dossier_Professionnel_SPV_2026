# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

LaTeX source for the professional portfolio ("Dossier Professionnel SPV") of Etienne Baron, 2ème année Superviseur de Production Virtuelle. The document covers his supervision of virtual production sequences for the student short film *NoClip*.

## Build

The compiler is `pdflatex` (declared in the magic comment on line 1). Run two passes from the `sources_latex/` directory so that the table of contents and cross-references resolve:

```
cd sources_latex
pdflatex dossier.tex
pdflatex dossier.tex
```

The compiled PDF is committed as `Dossier_Professionnel_SPV_NoClip_BARON.pdf` at the root.

All images are in `sources_latex/img/` (JPG). If a `\includegraphics` call fails, check that the filename matches exactly (case-sensitive on some systems).

## Source documents (cours et références)

The following documents were added by the user and used to enrich the dossier:

- `ENSLL_CINEMA_BELYAKOV_2023.pdf` — Master thesis (ENS Louis-Lumière, 2023) by Anton Belyakov: *Le pilotage numérique de la lumière sur les plateaux de cinéma*. Covers DMX512 protocol, Art-Net, CRMX/W-DMX, sACN, pixel mapping, lighting consoles. Used for: DMX/Art-Net technical subsection in Ch.3, expanded Lexique entries (DMX512, Art-Net, univers DMX, adressage, nodle, sACN, CRMX).
- `Configuration_nDisplay_Plateau_Virtuel.pdf` — Whiteboard diagram of the actual nDisplay hardware configuration: 4 LED wall zones (Gauche 1536px, Centre 3072px, Droite 1536px, Plafond 1536px), VP0–VP3 viewports, RTX A6000 (mur LED) + RTX 2080 (pilotage), Sony LED processor. Used to update the nDisplay TikZ diagram in Ch.3.
- `Pipeline Production Virtuelle.pdf` — Whiteboard diagram of the VP signal pipeline (PILOTE → SWITCH → Unreal/nDisplay → Frustum, Perforce version control).
- `Histoire de la Production Virtuelle.docx` — Course notes (Alexia de Mari, Oct 2025): history of VFX and VP, panoramas as LED wall precursors, Méliès, matt painting, TV as VP precursor.
- `Prise de vue en production virtuelle.docx` — Course notes (Camille Jaulent, chef-op): camera fundamentals for VP — CMOS sensor, focal length, aperture, DOF, moire avoidance, ISO/EI distinction, ND filters, white balance, S-Log3, gamut/gamma (DCI-P3). Used to enhance the camera preconisations techbox in Ch.2.
- `Initiation à Unreal Engine.docx` — Course notes (Gilbert Demorgny, 2025): UE5 interface, PBR materials (albedo, roughness, metallic, normal map, emissive), Sequencer, actors/levels. Used for Lexique entries on PBR, Emissive, Normal map, Sequencer.
- `Réglementation de la production audiovisuelle.docx` — Course notes on audiovisual production regulations (not yet integrated).
- `Optique appliquée de l.docx` — Course notes on applied optics (not yet integrated).

## Document structure

Single source file: `sources_latex/dossier.tex`. Seven chapters in reading order:

1. Présentation du projet + time codes des séquences VP
2. Documents fournis à la production (analyse scénario, dispositifs, devis)
3. Préproduction (cahier des charges, plans d'implantation nDisplay, diagrammes, découpage technique)
4. Analyses critiques après fabrication
5. Synthèse bonnes pratiques fond vert
6. Note de synthèse alternance / projet professionnel
7. Annexe — Lexique technique

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

**nDisplay plan de feu** — Chapter 3 contains a TikZ floor-plan diagram (section "Plan d'implantation du décor (physique vs virtuel)") showing LED wall zone segmentation with true dimensions and placement than the original drawing picture, render node connections (DisplayPort), Ethernet nDisplay routing, and camera frustum. It use an RTX A6000 to render on the led wall and a RTX 2080 to render the scene pilotage. It follows the same drawing conventions as the other TikZ plans de feu and uses `\label{sec:implantation}` on the implantation section for a cross-reference. Do not replace this diagram with `\includegraphics`.

**`\sloppy`** is set globally to suppress overfull hbox warnings in French text.
