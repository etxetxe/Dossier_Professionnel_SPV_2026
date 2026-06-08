# input.md — Données rédactionnelles et sources

> Concentre **la matière** du dossier : documents sources et ce qui en a été extrait,
> matériel réel du plateau, personnes à créditer, chiffres du devis, voix éditoriale.
> Pour la *forme* LaTeX → voir `system.md`. Pour l'*initialisation* → voir `setup.md`.

---

## 1. Le projet

Portfolio professionnel (« Dossier Professionnel SPV ») d'**Etienne Baron**, 2ᵉ année
**Superviseur de Production Virtuelle** (École Georges Méliès, Orly — Grand Paris).
Le document couvre sa supervision des séquences en production virtuelle du court-métrage
étudiant ***NoClip***. Univers visuel : *Backrooms* (jaune, couloirs, ambiance liminale).

---

## 2. Documents sources (cours et références)

Documents ajoutés par l'utilisateur, exploités pour enrichir le dossier. Ils restent à la
racine du dépôt ; ce fichier en consigne l'extraction afin de ne plus avoir à les rouvrir.

| Document (racine)                                    | Extraction / usage dans le dossier |
|------------------------------------------------------|------------------------------------|
| `ENSLL_CINEMA_BELYAKOV_2023.pdf`                     | Mémoire ENS Louis-Lumière (2023, Anton Belyakov) : *Le pilotage numérique de la lumière*. Protocole DMX512, Art-Net, CRMX/W-DMX, sACN, pixel-mapping, consoles. → sous-section DMX/Art-Net (Ch. 3) + entrées Lexique (DMX512, Art-Net, univers DMX, adressage, nodle, sACN, CRMX). Cité `belyakov2023`. |
| `Configuration_nDisplay_Plateau_Virtuel.pdf`        | Schéma whiteboard de la config nDisplay réelle : 4 zones LED (Gauche 1536px, Centre 3072px, Droite 1536px, Plafond 1536px), viewports VP0–VP3, RTX A6000 (mur LED) + RTX 2080 (pilotage), Sony LED processor. → diagramme TikZ nDisplay (Ch. 3, `sec:implantation`). |
| `Pipeline Production Virtuelle.pdf`                  | Schéma whiteboard du pipeline signal VP (PILOTE → SWITCH → Unreal/nDisplay → Frustum, gestion de version Perforce). → diagrammes de flux Ch. 3. |
| `Histoire de la Production Virtuelle.docx`           | Notes de cours (Alexia de Mari, oct. 2025) : histoire VFX/VP, panoramas comme ancêtres du mur LED, Méliès, matte painting, TV comme précurseur. Cité `demari2025`. |
| `Prise de vue en production virtuelle.docx`         | Notes de cours (Camille Jaulent, chef-op) : capteur CMOS, focale, ouverture, PdC, anti-moiré, ISO/EI, filtres ND, balance des blancs, S-Log3, gamut/gamma (DCI-P3). → techbox préconisations caméra (Ch. 2). Cité `jaulent2025`. |
| `Initiation à Unreal Engine.docx`                   | Notes de cours (Gilbert Demorgny, 2025) : interface UE5, matériaux PBR (albedo, roughness, metallic, normal map, emissive), Sequencer, actors/levels. → entrées Lexique (PBR, Emissive, Normal map, Sequencer). Cité `demorgny2025`. |
| `Réglementation de la production audiovisuelle.docx`| Notes sur la réglementation audiovisuelle. → cadrage AI Act / réglementation. |
| `Optique appliquée de l.docx`                       | Notes d'optique appliquée. **Pas encore intégré.** |
| `PAV-Salaires-minima-conventionnels-...-2026.xlsx`  | Grille CCN production audiovisuelle (minima au 2026-01-01). Voir § Devis. Lire avec `openpyxl`. |
| `NoClip_Screenplay.pdf`                             | Scénario du film. |
| `Découpage Technique _ NoClip.xlsx`                | Découpage technique plan par plan. |
| `baron-etienne-bifurcation-carnet-...pdf`           | Carnet de recherche personnel d'Etienne (EESI). **Référence de style d'écriture uniquement** (réflexif, essayistique, 1ʳᵉ personne ; Simondon ; *bifurcation / singularité / trajectoire*). Voix du Ch. 7. **NE PAS** l'ajouter à la base LaTeX (ni `\include`, ni citation). |

---

## 3. Matériel réel du plateau (École Méliès — « appartient à l'école »)

Le dossier a été mis à jour avec le matériel **réel** du plateau VP de l'école (tout
appartient à l'école) :

- **Mur LED Sony Crystal LED VERONA** — pitch 1,56 mm, volume semi-enveloppant :
  Centre 3072 px ≈ 4,88 m · Gauche/Droite 1536 px ≈ 2,44 m chacun · hauteur 1728 px ≈ 2,74 m ·
  plafond 1536 px ≈ 2,44 m.
- **Unreal Engine 5.6** (licence éducation).
- **Tracking caméra ZEISS CinCraft Scenario.**
- **Caméra Sony VENICE 2 (CineAlta)** — double ISO de base 800/3200.
- **Optiques ZEISS fixes** 24 / 35 / 50 / 85 mm.
- **RTX A6000 48 Go** (nœud de rendu mur LED) + **RTX 2080** (pilotage).
- Cyclo vert dur, éclairage pilotable en DMX.
- **Nanite délibérément NON utilisé** (instabilité pour un framerate constant sur le mur LED).

**Équipe nommée** : Réalisatrice **Charlotte** · Graphiste 3D (étudiant M2) ·
Opératrice 3D **Loane** · Op. tracking **Arnaud** · DOP **Femy** · Chef électricien **Anil** ·
Scripte/Accessoiriste **Saph** · Machiniste **Thomas** · Son **Timothé** ·
Behind The Shot **Ignacio**. Intitulé : « Superviseur **VP** » (et non « PV »).

---

## 4. Personnes à créditer (vérifiées en ligne)

**École Georges Méliès** (Orly, Grand Paris) — première formation européenne de superviseur VP
(fév. 2025, RNCP niveau 7), plateau VP inauguré mars 2025 avec Sony. Crédités sur la page
**Remerciements** :

- **Justine Coulmy** — directrice d'étude SPV, cheffe opératrice.
- **Laurent Stehlin** — directeur technique (**orthographe : Stehlin** ; le « Stelhin » d'une
  retake était une coquille).
- **Guillaume Bourlet** — chargé de formation.
- **Franck Petitta** — fondateur (1999) & directeur.

---

## 5. Devis — grille PAV (CCN production audiovisuelle, minima au 2026-01-01)

Source : `PAV-Salaires-minima-...-2026.xlsx`, feuille **« CAT B - CDDU Fiction »**
(minima bruts par jour, Base 8 h) pour les coûts unitaires du devis :

| Poste                   | € / jour |
|-------------------------|----------|
| Directeur photo         | 395      |
| Chef OPS / son          | 272      |
| Chef électricien        | 225      |
| Scripte                 | 219      |
| Infographiste           | 239      |
| Truquiste               | 223      |
| Machiniste              | 184      |
| Photographe de plateau  | 184      |

Le réalisateur est sur une feuille distincte (journalier ≈ 300 €). Lire le `.xlsx` avec `openpyxl`.

---

## 6. Contenu par chapitre (rappel narratif)

- **Front matter** — Remerciements (§ 4) ; Avertissement usage de l'IA (transparence AI Act).
- **Ch. 1** — Pitch *NoClip*, lien de visionnage, note explicative time codes des séquences VP.
- **Ch. 2** — Analyse scénario & justification de la VP ; **3 dispositifs A/B/C** ; moyens
  techniques réels (§ 3) ; moyens humains ; **devis** (§ 5) ; économies & impact carbone ;
  préconisations prise de vue / photoréalisme (techbox caméra, source Jaulent).
- **Ch. 3** — Cahier des charges ; plan d'implantation (diagramme nDisplay) ; choix du tracking ;
  diagrammes de flux ; organigramme ; calendrier (3 graphiques TikZ) ; découpage technique annoté ;
  optimisation scène 3D temps réel ; plan de feu DMX + pixel-mapping (source Belyakov).
- **Ch. 4** — Analyses critiques après fabrication (images VP, environnement virtuel, RH,
  comparaison calendrier prévu / tenu).
- **Ch. 5** — Bonnes pratiques fond vert (réglages caméra, exposition/uniformité, plan de feu,
  détourage Nuke).
- **Ch. 6** — Bilan alternance & projet professionnel.
- **Ch. 7** — **Veille technologique** : IA générative/agentique, outils locaux & Open Source,
  environnement, écoproduction. **Voix « carnet » réflexive** (réf. carnet EESI, § 2).
- **Ch. 8** — Lexique technique (DMX512, Art-Net, univers DMX, adressage, nodle, sACN, CRMX, PBR,
  Emissive, Normal map, Sequencer, etc.).

---

## 7. Garde-fous rédactionnels

- **Aucune modification de contenu** n'est attendue par défaut : le processus est identique à
  l'existant (régénérer le PDF, versionner). Ne pas réécrire le fond sans demande explicite.
- Ne **pas** intégrer le carnet EESI à la base bibliographique (style uniquement).
- Conserver l'intitulé « Superviseur **VP** », l'orthographe « **Stehlin** », et le fait que
  **Nanite n'est pas utilisé**.
- Le matériel décrit est celui, réel, de l'école — ne pas le remplacer par du matériel générique.
