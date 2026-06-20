# Dossier Professionnel SPV — *NoClip*

Portfolio professionnel d'**Etienne Baron**, 2ᵉ année **Superviseur de Production Virtuelle (SPV)**
à l'**École Georges Méliès** (Orly, Grand Paris). Le dossier documente sa **supervision des séquences
en production virtuelle** du court-métrage de fin d'études ***NoClip***.

> **Livrable :** [`Dossier_Professionnel_SPV_NoClip_BARON.pdf`](Dossier_Professionnel_SPV_NoClip_BARON.pdf)
> (≈ 37 pages), compilé depuis la source LaTeX unique `sources_latex/dossier.tex`.

---

## Le film : *NoClip*

Court-métrage étudiant (scénario original de **Charlotte Strauch**, promotion 2ᵉ année SPV, 2026).
**Ryan**, après une chute en skate, bascule dans les **Backrooms** — couloirs jaunes liminaux,
néons aveuglants, moquette humide. Il erre dans le labyrinthe, croise les traces de ceux qui s'y
sont perdus, sombre, puis se réveille au skatepark où un geste de panique vire au drame. C'est cet
**univers Backrooms** qui justifie la production virtuelle (mur LED + moteur temps réel) plutôt
qu'un décor réel ou un fond vert intégral.

## Le rôle : Superviseur de Production Virtuelle

Le SPV est l'expert qui justifie et garantit, en amont et sur le plateau, la pertinence artistique
et technique du dispositif de production virtuelle (mur LED, tracking caméra, rendu temps réel).
Le dossier couvre **8 chapitres** :

1. Présentation du projet et accès au film (time codes des séquences VP)
2. Documents fournis à la production : analyse du scénario, **3 dispositifs A/B/C**, moyens techniques et humains, **devis** (grille PAV)
3. Documents de préproduction : cahier des charges, **plan d'implantation nDisplay**, diagrammes de flux, organigramme, calendrier, découpage technique, plan de feu DMX
4. Analyses critiques après fabrication
5. Bonnes pratiques de tournage en fond vert
6. Bilan d'alternance et projet professionnel
7. Veille technologique (IA générative, outils locaux & Open Source, écoproduction)
8. Annexe — lexique technique (DMX, Art-Net, PBR…)

## Le plateau réel (École Méliès)

- **Mur LED Sony Crystal LED VERONA** — pitch 1,56 mm, volume semi-enveloppant (centre + latéraux + plafond)
- **Caméra Sony VENICE 2** (CineAlta), **optiques ZEISS** fixes 24/35/50/85 mm
- **Unreal Engine 5.6**, **tracking ZEISS CinCraft Scenario**
- **RTX A6000** (rendu mur LED) + **RTX 2080** (pilotage) ; *Nanite délibérément non utilisé*

---

## Comment le dossier est fabriqué

Source unique LaTeX, bibliographie APA (`biblatex` + `biber`). Build en une commande depuis la racine :

```powershell
.\push.ps1 -Build
```

Le script enchaîne les 4 passes `pdflatex → biber → pdflatex → pdflatex`, copie le PDF à la racine
sous son nom livrable, puis commit (`RTK_Dossier_SPV_<date_heure>`) et synchronise git.
Pré-requis et premier build : voir `stages/01-setup/`.

## Organisation du dépôt (méthodologie ICM)

Ce dépôt est structuré selon l'**Interpreted Context Methodology** (ICM, Jake Van Clief) : *la structure
de dossiers est l'architecture de l'agent*. Dépôt de référence de la méthodologie :
[github.com/RinDig/Interpreted-Context-Methdology](https://github.com/RinDig/Interpreted-Context-Methdology).
Un agent IA (y compris un petit modèle local) lit la
couche 0 (`CLAUDE.md`), puis le routage (`CONTEXT.md`), puis **un seul** contrat d'étape
(`stages/NN-*/CONTEXT.md`), puis la **seule** section de référence utile (`references/`).

| Élément | Rôle |
|---------|------|
| `CLAUDE.md` · `CONTEXT.md` | Identité (couche 0) et routage des tâches (couche 1) |
| `stages/01→04` | Contrats d'étape : setup, edit, build, deliver (couche 2) |
| `references/input.md` · `system.md` | Fond (données, voix) et forme (LaTeX) — couche 3 |
| `_core/` | Canon de la méthodologie (méta) |
| `sources_latex/` | La source LaTeX et les images |

## Transparence IA (AI Act)

La **mise en forme** de ce dossier bénéficie d'outils d'IA générative et agentique. L'**analyse,
les choix techniques et la responsabilité du contenu** restent ceux de l'auteur (cf. la page
« Avertissement — usage de l'IA » du dossier).

---

*Auteur : Etienne Baron · École Georges Méliès · 2026. Licence : [MIT](LICENSE).*
