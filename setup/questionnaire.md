# questionnaire.md — Onboarding système (déclencheur `démarrer`)

> Configure le SYSTÈME de publication, pas un run précis (Pattern 8 de `_core/CONVENTIONS.md`).
> Cet espace de travail est DÉJÀ instancié pour Etienne Baron : les réponses ci-dessous sont
> déjà « cuites » dans les fichiers. Ce questionnaire sert de référence si quelqu'un réinstancie
> ce modèle pour un autre dossier.

## Questions (toutes en une passe)

1. **Auteur et titre du dossier ?** (déf. : Etienne Baron — Dossier Professionnel SPV, *NoClip*)
2. **École / formation ?** (déf. : École Georges Méliès, 2ᵉ année Superviseur de Production Virtuelle)
3. **Source LaTeX ?** (déf. : `sources_latex/dossier.tex`, compilateur `pdflatex`)
4. **Nom du livrable PDF ?** (déf. : `Dossier_Professionnel_SPV_NoClip_BARON.pdf`)
5. **Toolchain ?** (déf. : MiKTeX + `biber` + `biblatex-apa` ; détail dans `stages/01-setup/`)
6. **Convention de commit ?** (déf. : `RTK_Dossier_SPV_<aaaa-mm-jj_hhmm>`, merge `-X ours`)
7. **Remote git ?** (à la charge de l'utilisateur ; cf. `stages/01-setup/references/setup.md` § 3)

> Syntaxe des variables : `_core/placeholder-syntax.md`. Aucune variable `{{…}}` ne subsiste
> dans cet espace : il est déjà instancié.
