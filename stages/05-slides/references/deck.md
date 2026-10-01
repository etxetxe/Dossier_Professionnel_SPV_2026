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
| 5 | Structure narrative attendue (15 min) |
| 6 | Hypothèses de calcul (budget, carbone) |

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

Six parties, **18 diapos d'exposé + merci**, **15 min visées** (14 min 10 chronométrées), puis **annexes A1 à A10**
non projetées, réservées au Q&A. Un en-tête de partie (`<!-- header: … -->`) remplace les intertitres.
L'exposé ne présente **pas** NATION (décision de l'auteur, `input.md` § 9.4) :

| Partie | Contenu | Source |
|--------|---------|--------|
| I | Le projet supervisé : *NoClip*, dispositifs, prévu contre réel | Ch. 1 à 3 |
| II | Le jour J et la régie : chaleur et tracker, feuille de route, mobilisation d'équipe | Ch. 4 § 4 + `input.md` § 9.1, 9.2, 9.5 |
| III | Les images : acquis/perdu, choix de tournage et DA, point nodal, fond vert | Ch. 4 § 1 à 3 + `input.md` § 9.3, 9.4 |
| IV | Budget VP et bilan carbone chiffrés | `input.md` § 9.6 + § 6 du présent fichier |
| V | Quel projet pour la VP : dispositif inadapté, atouts, grille en cinq questions | Ch. 4 + `input.md` § 9.7 |
| VI | L'année sans entreprise, veille outillée (CLI, harnais, ICM), projet professionnel | Ch. 5 et 6 |

Règle de fond : **le deck ne réécrit rien**. Chaque affirmation doit être traçable à une
section du dossier ou à une pièce du corpus *NATION*. Si une idée n'existe pas en amont,
elle s'écrit d'abord dans `input.md`, puis descend dans le deck (Pattern 5).

---

## 6. Hypothèses de calcul (budget, carbone)

Les chiffres des diapos 11 et 12 se **recalculent** ; aucun ne doit apparaître sans cette trace.

| Grandeur | Formule | Résultat |
|----------|---------|----------|
| Surface mur | 4,88 × 2,74 + 2 × (2,44 × 2,74), dimensions du dossier ; plafond exclu | 26,74 m² |
| Énergie mur | surface × 292 W/m² (moyen, Sony ZRD-VP15EB) × 8 h × 1,10 (auxiliaires, méthode Sightled) | 68,7 kWh |
| Borne haute mur | surface × 580 W/m² (maximum) × 8 h × 1,10 | 136,5 kWh |
| Stations | 2 × 1 kWh (render A6000, supervision 2080) | 2,0 kWh |
| Éclairage | (229 W panneau + 36 W tube) × 8 h | 2,1 kWh |
| Total / borne haute | somme | 72,8 / 140,6 kWh |
| Émissions | kWh × 0,052 kgCO2e/kWh (ADEME, Base Empreinte, électricité France continentale) | 3,8 / 7,3 kg |
| Masse salariale VP | lignes du devis du dossier : 1 jour de plateau par poste + 3D + compositing + assets, hors décor réel | 6 177 € |

Sources : fiche Sony VERONA ZRD-VP15EB (puissance), Sightled (méthode), ADEME (facteur), Aputure amaran 200x S et
Nanlite PavoTube II 30X (références de puissance, **modèles non précisés dans le dossier**). La méthode Ecoprod
(Carbon'Clap) s'appuie sur le même facteur ADEME : le chiffre officiel se produit dans l'outil, pas dans le deck.
