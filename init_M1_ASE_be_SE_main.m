%% init_BE_SE_main
% Programme prinicpal d'initialisation pour le Bureau d'Etude de Systèmes Energétiques
% Tazzari Zéro vs. Renault Twizy
% Programme réalisé par Walter Lhomme le 17/11/2017
% Dernière modification effectuée par Walter Lhomme le 20/11/2017

%% RAZ
clear all; clc;

%% Cycle ECE
load cycle_ECE;

%% Données de la Tazzari Zéro
run('init_M1_ASE_be_SE_Tazzari_Zero')

%% Données de la Renault Twizy
run('init_M1_ASE_be_SE_Renault_Twizy')

%% Données de la simulation
% Sélectionner les matrices en fonction du véhicule à simuler
% 
% BAT = ZERO.BAT;
% HACH = ZERO.HACH;
% MCC = ZERO.MCC;
% TRANS = ZERO.TRANS;
% CHAS = ZERO.CHAS;
% ENV = ZERO.ENV;
% COR = ZERO.COR;

BAT = TWIZ.BAT;
HACH = TWIZ.HACH;
MCC = TWIZ.MCC;
TRANS = TWIZ.TRANS;
CHAS = TWIZ.CHAS;
ENV = TWIZ.ENV;
COR =TWIZ.COR;

%----------------------------- code Ajoutez
