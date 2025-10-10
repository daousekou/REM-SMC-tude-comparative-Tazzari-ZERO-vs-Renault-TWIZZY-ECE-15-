%% init_BE_SE_Tazzari_Zero
% Programme d'initialisation pour les paramètres de la Tazzari Zéro
% Programme réalisé par Prénoms NOMS le JJ/MM/AAAA
% Dernière modification effectuée par Prénoms NOMs le JJ/MM/AAAA

%% Batteries Li-ion
ZERO.BAT.Q_bat = 160;            % Capacité de stockage d'une batterie (Ah)
ZERO.BAT.Tension_max=4.2;
ZERO.BAT.Tension_min=2.5;
ZERO.BAT.Capacite_bat=(-ZERO.BAT.Q_bat*3600)/(ZERO.BAT.Tension_max-ZERO.BAT.Tension_min);
ZERO.BAT.Nombre_serieCellule=6;
ZERO.BAT.Nombre_serieModule=4;
ZERO.BAT.Capacite_bat_total=(ZERO.BAT.Capacite_bat)/(ZERO.BAT.Nombre_serieCellule*ZERO.BAT.Nombre_serieModule);
% Reste à compléter avec la même notation : ZERO.BAT.Nom_variable

%% Hacheur 4 quadrants
ZERO.HACH.rend_hach = 95/100;     % Rendement du hacheur 4 quadrants

%% MCC à Aimants Permanents Tazzari Zéro
ZERO.MCC.P_util = 15e3; % Puissance utile (W)
ZERO.MCC.R=80e-3;
ZERO.MCC.Tension=80;
ZERO.MCC.Omega=(2000*2*pi/60)
ZERO.MCC.I=250;
ZERO.MCC.K_flux=(ZERO.MCC.Tension-(ZERO.MCC.R*ZERO.MCC.I))/ZERO.MCC.Omega;
ZERO.MCC.L=1e-3;
ZERO.MCC.TAU_LR=ZERO.MCC.L/ZERO.MCC.R;
ZERO.MCC.K=1/ZERO.MCC.R;


% Reste à compléter avec la même notation : ZERO.MCC.Nom_variable

%% Transmission mécanique
ZERO.TRANS.k_red = 4.32; % Rapport du réducteur
ZERO.TRANS.rendement=92/100; %rendement 
% Reste à compléter avec la même notation : ZERO.TRANS.Nom_variable

%% Châssis
ZERO.CHAS.M_veh_vide = 542; % Masse à vide du véhicule (kg)
ZERO.CHAS.Rayon=((15*25.4)*1e-3)/2;

% Reste à compléter avec la même notation : ZERO.CHAS.Nom_variable

%% Environnement du véhicule
ZERO.ENV.f = 0.02;    % Coefficient de résistance au roulement (macadam)
ZERO.ENV.Masse_personne=75;
ZERO.ENV.Masse_Veh=737;
ZERO.ENV.Masse_Veh_total=ZERO.ENV.Masse_Veh ;+(ZERO.ENV.Masse_personne*2);
ZERO.ENV.g=9.91;
ZERO.ENV.Froule=ZERO.ENV.f*ZERO.ENV.Masse_Veh_total*ZERO.ENV.g;
ZERO.ENV.s_C=0.7;
ZERO.ENV.Masse_volumique=1.223;
ZERO.ENV.gain_Fair=0.5*ZERO.ENV.s_C*ZERO.ENV.Masse_volumique;
ZERO.ENV.Vitesse_vent=1;
ZERO.ENV.Alpha=10/100;

% Reste à compléter avec la même notation : ZERO.ENV.Nom_variable

%% Correcteurs
% A compléter avec la même notation : ZERO.COR.Nom_variable
ZERO.COR.Kp=ZERO.ENV.Masse_Veh_total/0.1;
ZERO.MCC.TAU_BF=0.05;
ZERO.COR.Kp_I=ZERO.MCC.TAU_LR/(ZERO.MCC.K*ZERO.MCC.TAU_BF);
ZERO.COR.Ki_I=ZERO.COR.Kp_I/ZERO.MCC.TAU_LR;

