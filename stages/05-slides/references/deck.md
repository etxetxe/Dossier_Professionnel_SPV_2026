# deck.md — Forme du support de soutenance web

> Décrit **comment le deck est fabriqué** : chaîne de conversion, charte, grammaire des
> diapos, règle d'étanchéité des médias.
> Pour *quoi* raconter (matière rédactionnelle) → `../../../references/input.md`.
> Pour *installer* la toolchain → `marp-setup.md` (même dossier).
> Pour la forme du **PDF** (LaTeX) → `../../../references/system.md` : les deux chaînes
> sont indépendantes et ne partagent que la palette.

---

## Index (charger UNE section)

| § | Sujet |
|---|-------|
| 1 | Source unique et chaîne de conversion |
| 2 | Charte : palette et typographie |
| 3 | Grammaire des diapos (classes et blocs) |
| 4 | Médias et étanchéité git |
| 5 | Structure narrative attendue |

---

## 1. Source unique et chaîne de conversion

Tout le deck tient dans deux fichiers :

| Fichier | Rôle |
|---------|------|
| `sources_slides/soutenance.md` | Contenu : front-matter Marp, diapos, notes d'orateur |
| `sources_slides/theme.css` | Forme : thème Marp `backrooms`, autonome |

Convertisseur : **Marp CLI** (`@marp-team/marp-cli`), invoqué par `npx`, sans installation
globale. Sortie : un **HTML unique 16:9 (1280×720)**, déposé à la racine sous
`Soutenance_SPV_NoClip_BARON.html` — même convention de nommage que le livrable PDF.

```bash
npx @marp-team/marp-cli sources_slides/soutenance.md \
  --theme sources_slides/theme.css --html \
  --output Soutenance_SPV_NoClip_BARON.html
```

- `--html` autorise le HTML brut dans le Markdown : indispensable pour les grilles,
  les encadrés et les balises `<video>`.
- **Ne pas ajouter `--allow-local-files`** hors export PNG/PDF : le HTML doit conserver
  des chemins **relatifs** (cf. § 4).
- Le HTML se lit hors ligne, dans n'importe quel navigateur. Navigation : flèches,
  `F` plein écran, `P` mode présentateur (affiche les notes `<!-- … -->`).
- Contrôle visuel de mise en page : ajouter `--images png --output <dossier>/slide.png`
  (nécessite un navigateur Chromium ; sur cette machine, définir
  `CHROME_PATH` vers `msedge.exe`).
  **Piège :** à l'export, Marp résout les chemins relatifs depuis le dossier du *Markdown*
  (`sources_slides/`), alors que le HTML livré les résout depuis la *racine*. Les images
  apparaissent donc cassées dans les PNG de contrôle sans que le deck le soit. Pour un
  contrôle fidèle, copier temporairement `soutenance.md` à la racine et exporter depuis là.

---

## 2. Charte

Palette reprise de `dossier.tex` (`references/system.md` § 4) et **transposée sur fond
sombre** pour une projection en salle. Les valeurs vivent dans `:root` de `theme.css` :
c'est la source unique, ne jamais coder une couleur en dur dans le Markdown.

| Variable | HEX | Usage |
|----------|-----|-------|
| `--br-jaune` | `E3CF4B` | titres de section, accents, chiffres clés |
| `--br-jaune-pale` | `F4EDC0` | titres de niveau 1, texte fort |
| `--br-accent` | `B8860B` | filets, numéros de partie, encadrés techniques |
| `--br-dark` | `14140F` | fond des diapos |
| `--br-gris-pale` | `ECEBE3` | corps de texte |
| `--br-gris` | `8C8C7D` | texte secondaire, légendes, pied de page |
| `--br-vert` / `--br-bleu` / `--br-rouge` | `4E9E70` / `5B8FC7` / `C4643C` | étiquettes acquis / info / perdu |

Typographie : Segoe UI pour le corps, monospace pour les blocs techniques et les chiffres.
Aucune police externe n'est chargée — le deck doit fonctionner sans réseau.

---

## 3. Grammaire des diapos

Classes de diapo, posées par `<!-- _class: … -->` :

| Classe | Usage |
|--------|-------|
| `titre` | Page de garde |
| `partie` | Intertitre de partie (chiffre romain en filigrane) |
| `punch` | Une phrase forte, plein cadre, centrée |
| `media` | Image ou vidéo plein cadre avec bandeau de légende (`.cadre` / `.sur`) |
| `fin` | Remerciements et mention AI Act |

Blocs réutilisables, transposition directe des `tcolorbox` LaTeX :

| Bloc | Équivalent LaTeX | Usage |
|------|------------------|-------|
| `.infobox` | `infobox` | Information clé, synthèse, verdict |
| `.notebox` | `notebox` | Note contextuelle, mise en garde |
| `.techbox` | `techbox` | Spécification technique, protocole (monospace) |
| `.tag ok / ko / info / warn` | — | Étiquette de statut en tableau |
| `.kpi` | — | Rangée de chiffres clés |
| `.grille2` / `.grille3` | `figure` | Planches d'images |

Chaque bloc porte son titre dans `<span class="t">…</span>`.

**Notes d'orateur.** Tout commentaire `<!-- … -->` en fin de diapo devient une note du mode
présentateur. Convention du projet : la note commence par le **minutage visé** (« 45 s. »),
puis dit *ce qu'il faut faire dire à la diapo*, pas ce qu'elle affiche déjà.

---

## 4. Médias et étanchéité git

Trois familles de médias, trois statuts :

| Média | Emplacement | Versionné ? |
|-------|-------------|-------------|
| Photogrammes *NoClip* | `sources_latex/img/noclip_*.png` | **Oui** (déjà au dépôt, partagés avec le PDF) |
| Vignettes *NATION* | `sources_slides/media/*.jpg` | **Non** — `.gitignore` |
| Montages *NATION* | racine : `NATION_*.mp4` | **Non** — `.gitignore` |

Les vignettes sont **extraites des montages** par `ffmpeg`, en désignant un **timestamp**
(`-ss <s> -i <fichier> -frames:v 1 -update 1 -pix_fmt yuvj420p`). Ne pas sélectionner par
numéro de trame (`select='eq(n,…)'`) : ces montages changent de plage colorimétrique en
cours de lecture, le graphe de filtres se reconfigure et le compteur de trames repart à zéro.

Conséquence assumée sur le livrable : le HTML versionné référence les médias *NATION*
par **chemin relatif**, sans les embarquer. Le deck est donc **complet en local** et
**partiel après un `git clone`** — c'est le prix de la règle « le corpus *NATION* ne monte
jamais sur GitHub ». Le HTML doit rester à la **racine** pour que
`sources_latex/img/…`, `sources_slides/media/…` et `NATION_*.mp4` se résolvent.

---

## 5. Structure narrative attendue

Six parties, 37 diapos, ≈ 20 min hors questions :

| Partie | Contenu | Source |
|--------|---------|--------|
| I | Le projet supervisé : *NoClip*, dispositif A, prévu contre réel | Ch. 1 à 3 |
| II | Le jour J : incident tracking, arbitrage curatif | Ch. 4 § 4 |
| III | Les images : acquis (raccord lumière) / perdu (parallaxe), point nodal | Ch. 4 § 1 à 3 |
| IV | Auto-critique : manquements, adéquation du dispositif, dispositif D | Ch. 4 § 5 à 7 |
| V | L'année sans entreprise : veille, Creative Machines, jam, corpus *NATION* | Ch. 5 + `input.md` § 8 |
| VI | Veille et projet : IA 2026, GUI→CLI, harnais, ICM, écoproduction, projet pro | Ch. 6 |

Règle de fond : **le deck ne réécrit rien**. Chaque affirmation doit être traçable à une
section du dossier ou à une pièce du corpus *NATION*. Si une idée n'existe pas en amont,
elle s'écrit d'abord dans `input.md`, puis descend dans le deck (Pattern 5).
