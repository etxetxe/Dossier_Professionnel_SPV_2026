<#
.SYNOPSIS
    Genere le PDF du Dossier Professionnel SPV puis synchronise le depot git
    selon la convention du projet : commit "RTK_Dossier_SPV_[date_heure]",
    pull (merge force en faveur du local) puis push.

.DESCRIPTION
    A lancer apres chaque modification. Par defaut le script :
      1. (option -Build) compile sources_latex\dossier.tex
         via pdflatex -> biber -> pdflatex -> pdflatex
      2. copie dossier.pdf a la racine sous le nom livrable
      3. git add -A ; git commit -m "RTK_Dossier_SPV_<aaaa-mm-jj_hhmm>"
      4. git pull en conservant le local en cas de divergence (merge force)
      5. git push (avec repli --force-with-lease si refus)

    Le depot distant (GitHub perso) doit avoir ete configure au prealable :
        git remote add origin https://github.com/<compte>/<repo>.git

.PARAMETER Build
    Recompile le PDF avant de committer. Sans ce switch, on committe l'etat courant.

.PARAMETER Message
    Message de commit personnalise. Par defaut : RTK_Dossier_SPV_<horodatage>.

.EXAMPLE
    .\push.ps1 -Build
    Compile le PDF puis commit + pull + push.

.EXAMPLE
    .\push.ps1
    Commit + pull + push de l'etat courant (sans recompiler).
#>

[CmdletBinding()]
param(
    [switch]$Build,
    [string]$Message
)

$ErrorActionPreference = 'Stop'

# --- Se placer a la racine du projet (dossier du script) ---
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $Root

$Sources    = Join-Path $Root 'sources_latex'
$PdfSource  = Join-Path $Sources 'dossier.pdf'
$PdfTarget  = Join-Path $Root 'Dossier_Professionnel_SPV_NoClip_BARON.pdf'

function Write-Step($txt) { Write-Host "==> $txt" -ForegroundColor Cyan }

# --- 1. Compilation optionnelle ---
if ($Build) {
    Write-Step 'Compilation LaTeX (pdflatex -> biber -> pdflatex x2)'
    Push-Location $Sources
    try {
        & pdflatex -interaction=nonstopmode -halt-on-error dossier.tex | Out-Null
        if ($LASTEXITCODE -ne 0) { throw "pdflatex (passe 1) a echoue." }
        & biber dossier | Out-Null
        if ($LASTEXITCODE -ne 0) { throw "biber a echoue." }
        & pdflatex -interaction=nonstopmode -halt-on-error dossier.tex | Out-Null
        if ($LASTEXITCODE -ne 0) { throw "pdflatex (passe 2) a echoue." }
        & pdflatex -interaction=nonstopmode -halt-on-error dossier.tex | Out-Null
        if ($LASTEXITCODE -ne 0) { throw "pdflatex (passe 3) a echoue." }
    }
    finally { Pop-Location }
    Write-Host '    PDF genere.' -ForegroundColor Green
}

# --- 2. Copie du PDF livrable a la racine ---
if (Test-Path $PdfSource) {
    Copy-Item $PdfSource $PdfTarget -Force
    Write-Step "PDF copie -> $(Split-Path -Leaf $PdfTarget)"
}
else {
    Write-Warning "dossier.pdf introuvable dans sources_latex ; lancez avec -Build pour le generer."
}

# --- 3. Commit (RTK_Dossier_SPV_<horodatage>) ---
if (-not $Message) {
    $stamp   = Get-Date -Format 'yyyy-MM-dd_HHmm'
    $Message = "RTK_Dossier_SPV_$stamp"
}

git add -A
$pending = git status --porcelain
if ([string]::IsNullOrWhiteSpace($pending)) {
    Write-Step 'Aucun changement a committer.'
}
else {
    Write-Step "Commit : $Message"
    git commit -m $Message | Out-Null
}

# --- Verifier qu'un remote existe ---
$remotes = git remote
if ([string]::IsNullOrWhiteSpace($remotes)) {
    Write-Warning @"
Aucun depot distant configure : etape pull/push ignoree.
Configurez-le une fois :
    git remote add origin https://github.com/<compte>/<repo>.git
    git push -u origin $(git rev-parse --abbrev-ref HEAD)
"@
    return
}

$branch = (git rev-parse --abbrev-ref HEAD).Trim()

# --- 4. Pull en conservant le local en cas de divergence (merge force) ---
Write-Step "Pull depuis origin/$branch (merge en faveur du local)"
git fetch origin $branch
# Merge en privilegiant systematiquement la version locale (-X ours) pour
# conserver une stricte similarite local -> distant. -q evite l'editeur.
git merge -q -X ours --no-edit "origin/$branch" 2>$null
# (si la branche distante n'existe pas encore, le merge est sans effet)

# --- 5. Push (repli en force-with-lease si refus) ---
Write-Step "Push vers origin/$branch"
git push origin $branch
if ($LASTEXITCODE -ne 0) {
    Write-Warning 'Push refuse (divergence) : nouvelle tentative en --force-with-lease.'
    git push --force-with-lease origin $branch
    if ($LASTEXITCODE -ne 0) { throw 'Le push a echoue meme en force-with-lease.' }
}

Write-Host 'Synchronisation terminee.' -ForegroundColor Green
