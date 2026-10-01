# Fiche de saisie Carbon'Clap — journée de plateau VP (*NoClip*)

> À recopier dans l'outil Carbon'Clap (Ecoprod / ADEME, gratuit, sur inscription).
> **Périmètre :** la seule journée de plateau en production virtuelle. Hors décor réel, hors transport, hors
> restauration, hors post-production. Sources et hypothèses : `../references/deck.md` § 6.
> **Les libellés de champs de Carbon'Clap ne sont pas connus d'ici** : cette fiche donne les données, pas le chemin
> de menus. Adaptez au vocabulaire de l'outil (poste « énergie » ou « électricité », sous-poste « plateau » ou
> « tournage »). En cas de doute sur un champ, saisissez la valeur en kWh et notez le champ utilisé dans la colonne
> de droite.

## 1. Cadre de l'activité

| Donnée | Valeur |
|--------|--------|
| Production | *NoClip*, court-métrage de fin d'études, ≈ 5 min |
| Lieu | Studio VP de l'École Georges Méliès, Orly (France métropolitaine) |
| Source d'électricité | **Réseau**, pas de groupe électrogène |
| Durée retenue | **8 h** d'allumage du mur LED (une journée de tournage) |
| Hors périmètre | demi-journée de test lumière, décor réel, déplacements, repas, post-production |

## 2. Consommation électrique à saisir

| Poste | Quantité | Calcul | Énergie (kWh) | Champ utilisé dans l'outil |
|-------|----------|--------|---------------|-----------------------------|
| Mur LED Sony VERONA 1,56 mm (centre + 2 volets) | 26,74 m² | 26,74 × 292 W/m² × 8 h × 1,10 | **68,7** | |
| Stations de travail (render A6000, supervision 2080) | 2 | 2 × 1 kWh | **2,0** | |
| Éclairage : 1 panneau LED bicolore | 1 × 229 W | 0,229 kW × 8 h | **1,8** | |
| Éclairage : 1 barre / tube LED | 1 × 36 W | 0,036 kW × 8 h | **0,3** | |
| **Total** | | | **72,8** | |

Variante haute (mur à pleine puissance, 580 W/m²) : mur **136,5 kWh**, total **140,6 kWh**. À saisir en second essai
pour encadrer le résultat.

## 3. Ce que l'outil peut demander en plus

| Question probable | Réponse proposée |
|-------------------|------------------|
| Type de matériel | Écran LED de plateau (mur LED), stations informatiques, projecteurs LED |
| Équipe sur le plateau | 13 personnes au devis du dossier ; **à laisser vide** si le périmètre est l'électricité seule |
| Facteur d'émission | **Laisser le facteur par défaut** de l'outil pour la France (il s'appuie sur ADEME Base Empreinte) |
| Climatisation / ventilation | **Non chiffrée** : le dossier ne donne pas la puissance de la ventilation du jour J |

## 4. Résultat à me rapporter

| Mesure | Valeur lue dans Carbon'Clap |
|--------|------------------------------|
| Émissions totales du scénario central (72,8 kWh), en kgCO₂e | |
| Émissions du scénario haut (140,6 kWh), en kgCO₂e | |
| Facteur d'émission appliqué par l'outil, en kgCO₂e/kWh | |
| Version de l'outil et date de l'estimation | |

**Contrôle de cohérence :** mon calcul donne 3,8 kgCO₂e (central) et 7,3 kgCO₂e (haut) à 0,052 kg/kWh. Si l'outil
donne un ordre de grandeur très différent, regardez d'abord le facteur appliqué et la période (moyenne annuelle ou
mix du jour).

## 5. Ce que je ferai du résultat

1. Remplacer le calcul « maison » de la diapo 12 par le chiffre de l'outil, en gardant mon calcul en annexe A2.
2. Mettre à jour la fiche de révision (`fiche-revision-soutenance.md`, § 3 et § 4).
3. Commiter en local.

## 6. Limites à assumer à l'oral

- La ventilation et la climatisation du jour J ne sont pas comptées.
- Les modèles d'éclairage ne sont pas dans le dossier : les puissances sont des références représentatives.
- L'estimation couvre une journée de 8 h ; la demi-journée de test lumière et le temps de préparation sont exclus.
