# REM/SMC — Étude comparative Tazzari ZERO vs Renault TWIZZY (ECE‑15)

Projet GitHub dérivé d'un **bureau d'étude (BE)** de M1 ASE, Université de Lille : comparaison de deux quadricycles lourds (**Tazzari ZERO** et **Renault TWIZZY**) sous **MATLAB/Simulink** en suivant le cycle urbain **ECE‑15**.  
Le formalisme utilisé est la **Représentation Énergétique Macroscopique (REM)**, avec mise en place de la **Structure Maximale de Commande (SMC)** et correcteurs **PI** (induit MCC) et **P** (châssis).

> Ce dépôt contient : scripts MATLAB (paramètres, lois de commande, déroulage de scénarios), les **données chiffrées** du rapport (CSV), et un script Python pour **reproduire les graphiques** de performance (consommation & dynamique). Les modèles `.slx` sont à ajouter par l'utilisateur (placeholders fournis).

## Architecture
```
REM-SMC-Tazzari-vs-Twizzy/
├─ README.md
├─ LICENSE
├─ .gitignore
├─ .github/workflows/ci.yml
├─ data/
│  ├─ scenarios.csv
│  ├─ results_energy.csv
│  └─ results_dynamic.csv
├─ matlab/
│  ├─ init_params.m
│  ├─ build_controllers.m
│  └─ run_sim.m
├─ python/
│  └─ plot_results.py
└─ docs/
   ├─ REM_SMC_schema_placeholder.png
   └─ README_docs.txt
```

## Résumé technique
- **Sources** : batterie (source de tension modélisée par capacité équivalente), environnement (forces résistives : frottement, aérodynamique, pente).  
- **Accumulations** : induit MCC (L, R), châssis (m).  
- **Conversions** : hacheur (rapport m), conversion électromécanique (MCC, constantes kΦ), réducteur, transmission roue.  
- **Commande (SMC)** : inversion REM → **PI** (courant MCC) + **P** (vitesse châssis). Découplage temporel : temps de réponse châssis ≈ **10×** celui de l’induit.  
- **Scénarios** (ECE‑15) : variation **vent**, **pente**, **passagers**.

## Données (extraites du rapport)
Les fichiers CSV dans `data/` reprennent les tableaux **Énergétique** et **Dynamique** (consommation Wh/cycle, autonomie batterie, cycles possibles, erreurs de traînée, distances). Les valeurs sont injectées telles quelles pour faciliter la reproduction des **Figures “Consommation”** et **“Comportement dynamique”** via `python/plot_results.py`.

## Utilisation
### MATLAB/Simulink
1. Ouvrir `matlab/init_params.m` et définir, si besoin, les constantes mécaniques/électriques selon votre modèle `.slx`.  
2. Lancer :
   ```matlab
   init_params;
   build_controllers;   % calcule gains PI et P selon cibles temporelles
   run_sim;             % exécute les scénarios avec un modèle .slx (placeholder)
   ```
3. Ajoutez vos fichiers `.slx` dans `matlab/` (voir commentaires de `run_sim.m`).

### Python (reproduction des figures)
```bash
python3 -m venv .venv && source .venv/bin/activate
pip install -r python/requirements.txt  # créé automatiquement par plot_results.py si absent
python python/plot_results.py
```
Le script lit `data/*.csv` et génère deux PNG correspondant aux figures de performance (une figure par script d'affichage).

## Licence
MIT — libre réutilisation à des fins pédagogiques/recherche.

## Crédits
- Rapport original : BE M1 ASE — “Tazzari ZERO vs Renault TWIZZY” (REM/SMC, ECE‑15).
- Auteurs étudiants : Sekou Daou, Zakaria Touwendé.