# REM/SMC — Tazzari ZERO et Renault TWIZZY sur cycle ECE-15

Bureau d'étude de M1 ASE réalisé à l'Université de Lille : modélisation et comparaison de deux quadricycles électriques, **Tazzari ZERO** et **Renault TWIZZY**, sous **MATLAB/Simulink** en suivant le cycle urbain **ECE-15**.

Le travail s'appuie sur la **Représentation Énergétique Macroscopique (REM)** et sa structure de commande par inversion, avec un correcteur **PI** pour le courant de la machine à courant continu et un correcteur **P** pour la dynamique du châssis.

## Contenu réel du dépôt

| Fichier | Description |
|---|---|
| `M1_ASE_be_SE.slx` | Modèle MATLAB/Simulink |
| `init_M1_ASE_be_SE_main.m` | Initialisation générale et choix du véhicule |
| `init_M1_ASE_be_SE_Tazzari_Zero.m` | Paramètres de la Tazzari ZERO |
| `init_M1_ASE_be_SE_Renault_Twizy(1).m` | Paramètres de la Renault TWIZZY |
| `DAOU-TOUWENDE-BE.pdf` | Rapport du bureau d'étude |

## Architecture fonctionnelle

- batterie modélisée comme source de tension ;
- hacheur et conversion électromécanique ;
- machine à courant continu ;
- réducteur, transmission et roues ;
- dynamique longitudinale du châssis ;
- efforts résistifs : roulement, aérodynamique et pente ;
- correcteurs courant et vitesse issus de l'inversion de la REM.

## Utilisation

1. Ouvrir MATLAB dans le dossier du projet.
2. Vérifier la disponibilité des données du cycle ECE-15 utilisées par le modèle.
3. Exécuter `init_M1_ASE_be_SE_main.m`.
4. Ouvrir `M1_ASE_be_SE.slx`.
5. Sélectionner les paramètres du véhicule souhaité dans le script principal.
6. Lancer la simulation et analyser les variables énergétiques et dynamiques.

## Limite de reproductibilité

Le script principal appelle les données `cycle_ECE`, qui ne sont pas actuellement incluses dans le dépôt. Le modèle et les scripts peuvent être consultés, mais une reproduction complète nécessite ce jeu de données d'entrée.

## Auteurs

- Sekou Daou
- Zakaria Touwendé

Projet académique — Master 1 Automatique et Systèmes électriques, Université de Lille.
