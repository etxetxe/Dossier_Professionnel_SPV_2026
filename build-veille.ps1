[CmdletBinding()]
param()
$ErrorActionPreference = 'Stop'
$taskRoot = $PSScriptRoot
$taskTex = Get-Command pdflatex -ErrorAction SilentlyContinue
if ($taskTex) { $taskCompiler = $taskTex.Source }
else { $taskCompiler = Join-Path $env:LOCALAPPDATA 'Programs/MiKTeX/miktex/bin/x64/pdflatex.exe' }
if (-not (Test-Path -LiteralPath $taskCompiler)) { throw 'pdflatex introuvable.' }
Push-Location (Join-Path $taskRoot 'sources_veille')
try {
 foreach ($taskPass in 1..2) {
  & $taskCompiler -interaction=nonstopmode -halt-on-error veille.tex | Out-Null
  if ($LASTEXITCODE -ne 0) { throw "Compilation veille : echec passe $taskPass. Voir sources_veille/veille.log." }
 }
 Copy-Item -LiteralPath 'veille.pdf' -Destination (Join-Path $taskRoot 'SPV_BARON_IA_Pipelines_VFX_Hybrides.pdf') -Force
} finally { Pop-Location }
Write-Host 'PDF de veille genere. Verifier les quatre pages avant versionnement.'
