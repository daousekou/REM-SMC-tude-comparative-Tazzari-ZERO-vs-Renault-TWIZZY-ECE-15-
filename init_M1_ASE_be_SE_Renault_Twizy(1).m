%% init_BE_SE_Renault_Twizy
% Programme d'initialisation pour les paramètres de la Renault Twizy
% Programme réalisé par Prénoms NOMS le JJ/MM/AAAA
% Dernière modification effectuée par Prénoms NOMs le JJ/MM/AAAA

%% Batteries Li-ion
TWIZ.BAT.Q_bat = 105;   % Capacité de stockage d'une batterie (Ah)
            % Capacité de stockage d'une batterie (Ah)
TWIZ.BAT.Tension_max=4.2;
TWIZ.BAT.Tension_min=2.5;
TWIZ.BAT.Capacite_bat=(-TWIZ.BAT.Q_bat*3600)/(TWIZ.BAT.Tension_max-TWIZ.BAT.Tension_min);
TWIZ.BAT.Nombre_serieCellule=6;
TWIZ.BAT.Nombre_serieModule=3;
TWIZ.BAT.Capacite_bat_total=(TWIZ.BAT.Capacite_bat)/(TWIZ.BAT.Nombre_serieCellule*TWIZ.BAT.Nombre_serieModule);
% Reste à compléter avec la même notation : TWIZ.BAT.Nom_variable

%% Hacheur 4 quadrants
TWIZ.HACH.rend_hach = 94/100;     % Rendement du hacheur 4 quadrants

%% MCC à Aimants Permanents
TWIZ.MCC.P_util = 13e3;         % Puissance utile (W)
TWIZ.MCC.R=55e-3;
TWIZ.MCC.Tension=60;
TWIZ.MCC.Omega=(4500*2*pi/60)
TWIZ.MCC.I=300;
TWIZ.MCC.K_flux=(TWIZ.MCC.Tension-(TWIZ.MCC.R*TWIZ.MCC.I))/TWIZ.MCC.Omega;
TWIZ.MCC.L=2e-3;
TWIZ.MCC.TAU_LR=TWIZ.MCC.L/TWIZ.MCC.R;
TWIZ.MCC.K=1/TWIZ.MCC.R;
% Reste à compléter avec la même notation : TWIZ.MCC.Nom_variable

%% Transmission mécanique

TWIZ.TRANS.k_red = 9.23; % Rapport du réducteur
TWIZ.TRANS.rendement=93/100; %rendement % Rapport du réducteur
% Reste à compléter avec la même notation : TWIZ.TRANS.Nom_variable

%% Châssis
TWIZ.CHAS.M_veh_vide = 474;  % Masse à vide du véhicule (kg)
TWIZ.CHAS.Rayon=((13*25.4)*1e-3)/2;
% Reste à compléter avec la même notation : TWIZ.CHAS.Nom_variable

%% Environnement du véhicule
TWIZ.ENV.f = 0.018;              % Coefficient de résistance au roulement (macadam)


TWIZ.ENV.Masse_personne=75;
TWIZ.ENV.Masse_Veh=690;
TWIZ.ENV.Masse_Veh_total=TWIZ.ENV.Masse_Veh +(ZERO.ENV.Masse_personne*2);
TWIZ.ENV.g=9.91;
TWIZ.ENV.Froule=TWIZ.ENV.f*TWIZ.ENV.Masse_Veh_total*TWIZ.ENV.g;
TWIZ.ENV.s_C=0.64;
TWIZ.ENV.Masse_volumique=1.223;
TWIZ.ENV.gain_Fair=0.5*TWIZ.ENV.s_C*TWIZ.ENV.Masse_volumique;
TWIZ.ENV.Vitesse_vent=1;
TWIZ.ENV.Alpha=10/100;
% Reste à compléter avec la même notation : TWIZ.ENV.Nom_variable

%% Correcteurs
TWIZ.COR.Kp=TWIZ.ENV.Masse_Veh_total/0.1;
TWIZ.MCC.TAU_BF=0.05;
TWIZ.COR.Kp_I=TWIZ.MCC.TAU_LR/(TWIZ.MCC.K*TWIZ.MCC.TAU_BF);
TWIZ.COR.Ki_I=TWIZ.COR.Kp_I/TWIZ.MCC.TAU_LR;
% A compléter avec la même notation : TWIZ.COR.Nom_variable
