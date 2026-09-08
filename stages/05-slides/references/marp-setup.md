# marp-setup.md — Prérequis outillage du deck (Pattern 7)

> Guide d'installation pour une machine neuve. À lire une seule fois.
> Pour la fabrication du deck → `deck.md` (même dossier).

---

## 1. Marp CLI, en une phrase

**Marp CLI** convertit un fichier Markdown en présentation. Ici, il produit un **HTML 16:9
autonome** qui se lit dans n'importe quel navigateur, hors ligne, sans PowerPoint.

## 2. Installation

Marp CLI a besoin de **Node.js 18 ou supérieur**.

```powershell
node --version    # doit répondre v18+ (v24 sur la machine de travail)
npm --version
```

Si Node est absent : <https://nodejs.org> (installateur LTS Windows).

**Aucune installation globale de Marp n'est nécessaire.** `npx` télécharge et met en cache
la version demandée à la première exécution :

```powershell
npx @marp-team/marp-cli --version
```

Version validée sur ce projet : **`@marp-team/marp-cli@4.5.1`**. Épingler cette version en
cas de comportement inattendu :

```powershell
npx @marp-team/marp-cli@4.5.1 --version
```

**Si `npx` semble bloqué plusieurs minutes**, c'est l'interrogation du registre npm, pas Marp.
Une fois le paquet en cache, forcer l'usage du cache local rend le build instantané :

```powershell
npx --offline @marp-team/marp-cli@4.5.1 ...
```

`push.ps1 -Slides` conserve `--yes` (nécessaire au tout premier build, sur une machine où le
paquet n'est pas encore en cache).

## 3. Vérifier que ça marche

Depuis la racine du projet :

```powershell
.\push.ps1 -Slides
```

Le fichier `Soutenance_SPV_NoClip_BARON.html` doit apparaître à la racine. Double-cliquer
pour l'ouvrir. Flèches pour naviguer, `F` pour le plein écran, `P` pour le mode présentateur
(affiche les notes d'orateur).

## 4. Optionnel — export PNG ou PDF

Ces deux exports pilotent un navigateur Chromium en arrière-plan. Sur cette machine il n'y a
pas de Chrome : indiquer Edge à Marp avant l'appel.

```powershell
$env:CHROME_PATH = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
npx @marp-team/marp-cli@4.5.1 sources_slides\soutenance.md `
  --theme sources_slides\theme.css --html --allow-local-files `
  --images png --output .\controle\slide.png
```

Sert au **contrôle de débordement** de l'audit (`../CONTEXT.md`). Compter environ une
seconde par diapo. Ne pas versionner les PNG de contrôle.

## 5. ffmpeg (extraction des vignettes)

Les vignettes du corpus *NATION* sont extraites des montages `.mp4` avec **ffmpeg**
(présent sur la machine, version 8.1.1). Méthode et pièges : `deck.md` § 4.

```powershell
ffmpeg -version
```
