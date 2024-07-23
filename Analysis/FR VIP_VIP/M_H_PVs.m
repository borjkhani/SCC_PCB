clear
clc
close all
load('BB_PV_Act_DeAct.mat')
load('F_PV_Act_DeAct.mat')

%load('HWHH_PV_Act.mat')
run Cell_IDs.m
%%
% Cell conditioning 
% H_C_PYRs=H_C(PYRs);
% H_C_PVs=H_C(PVs);
% H_C_Sst=H_C(Sst);
% H_C_VIP=H_C(VIP);
% %
% H_PV_Act_06P_PYRs=H_PV_Act_06P(PYRs);
% H_PV_Act_12P_PYRs=H_PV_Act_12P(PYRs);
% H_PV_Act_18P_PYRs=H_PV_Act_18P(PYRs);
% H_PV_Act_25P_PYRs=H_PV_Act_25P(PYRs);
% H_PV_Act_50P_PYRs=H_PV_Act_50P(PYRs);
% H_PV_Act_75P_PYRs=H_PV_Act_75P(PYRs);
% H_PV_Act_100P_PYRs=H_PV_Act_100P(PYRs);
% H_PV_DeAct_06P_PYRs=H_PV_DeAct_06P(PYRs);
% H_PV_DeAct_12P_PYRs=H_PV_DeAct_12P(PYRs);
% H_PV_DeAct_18P_PYRs=H_PV_DeAct_18P(PYRs);
% H_PV_DeAct_25P_PYRs=H_PV_DeAct_25P(PYRs);
% H_PV_DeAct_50P_PYRs=H_PV_DeAct_50P(PYRs);
% H_PV_DeAct_75P_PYRs=H_PV_DeAct_75P(PYRs);
% H_PV_DeAct_100P_PYRs=H_PV_DeAct_100P(PYRs);

% 
% H_PV_Act_06P_PVs=H_PV_Act_06P(PVs);
% H_PV_Act_12P_PVs=H_PV_Act_12P(PVs);
% H_PV_Act_18P_PVs=H_PV_Act_18P(PVs);
% H_PV_Act_25P_PVs=H_PV_Act_25P(PVs);
% H_PV_Act_50P_PVs=H_PV_Act_50P(PVs);
% H_PV_Act_75P_PVs=H_PV_Act_75P(PVs);
% H_PV_Act_100P_PVs=H_PV_Act_100P(PVs);
% H_PV_DeAct_06P_PVs=H_PV_DeAct_06P(PVs);
% H_PV_DeAct_12P_PVs=H_PV_DeAct_12P(PVs);
% H_PV_DeAct_18P_PVs=H_PV_DeAct_18P(PVs);
% H_PV_DeAct_25P_PVs=H_PV_DeAct_25P(PVs);
% H_PV_DeAct_50P_PVs=H_PV_DeAct_50P(PVs);
% H_PV_DeAct_75P_PVs=H_PV_DeAct_75P(PVs);
% H_PV_DeAct_100P_PVs=H_PV_DeAct_100P(PVs);

% 
% H_PV_Act_06P_Sst=H_PV_Act_06P(Sst);
% H_PV_Act_12P_Sst=H_PV_Act_12P(Sst);
% H_PV_Act_18P_Sst=H_PV_Act_18P(Sst);
% H_PV_Act_25P_Sst=H_PV_Act_25P(Sst);
% H_PV_Act_50P_Sst=H_PV_Act_50P(Sst);
% H_PV_Act_75P_Sst=H_PV_Act_75P(Sst);
% H_PV_Act_100P_Sst=H_PV_Act_100P(Sst);
% H_PV_DeAct_06P_Sst=H_PV_DeAct_06P(Sst);
% H_PV_DeAct_12P_Sst=H_PV_DeAct_12P(Sst);
% H_PV_DeAct_18P_Sst=H_PV_DeAct_18P(Sst);
% H_PV_DeAct_25P_Sst=H_PV_DeAct_25P(Sst);
% H_PV_DeAct_50P_Sst=H_PV_DeAct_50P(Sst);
% H_PV_DeAct_75P_Sst=H_PV_DeAct_75P(Sst);
% H_PV_DeAct_100P_Sst=H_PV_DeAct_100P(Sst);

% 
% H_PV_Act_06P_VIP=H_PV_Act_06P(VIP);
% H_PV_Act_12P_VIP=H_PV_Act_12P(VIP);
% H_PV_Act_18P_VIP=H_PV_Act_18P(VIP);
% H_PV_Act_25P_VIP=H_PV_Act_25P(VIP);
% H_PV_Act_50P_VIP=H_PV_Act_50P(VIP);
% H_PV_Act_75P_VIP=H_PV_Act_75P(VIP);
% H_PV_Act_100P_VIP=H_PV_Act_100P(VIP);
% H_PV_DeAct_06P_VIP=H_PV_DeAct_06P(VIP);
% H_PV_DeAct_12P_VIP=H_PV_DeAct_12P(VIP);
% H_PV_DeAct_18P_VIP=H_PV_DeAct_18P(VIP);
% H_PV_DeAct_25P_VIP=H_PV_DeAct_25P(VIP);
% H_PV_DeAct_50P_VIP=H_PV_DeAct_50P(VIP);
% H_PV_DeAct_75P_VIP=H_PV_DeAct_75P(VIP);
% H_PV_DeAct_100P_VIP=H_PV_DeAct_100P(VIP);
%%
% Thr = 1000 ;
% H_PV_Act_06P_PYRs(H_PV_Act_06P_PYRs>Thr)=0;
% 
% H_PV_Act_06P_PVs(H_PV_Act_06P_PVs>Thr)=0;
% H_PV_Act_12P_PVs(H_PV_Act_12P_PVs>Thr)=0;
% H_PV_Act_18P_PVs(H_PV_Act_18P_PVs>Thr)=0;
% H_PV_Act_25P_PVs(H_PV_Act_25P_PVs>Thr)=0;
% H_PV_Act_50P_PVs(H_PV_Act_50P_PVs>Thr)=0;
% H_PV_Act_75P_PVs(H_PV_Act_75P_PVs>Thr)=0;
% H_PV_Act_100P_PVs(H_PV_Act_100P_PVs>Thr)=0;
% 
% H_PV_DeAct_06P_PVs(H_PV_DeAct_06P_PVs>Thr)=0;
% H_PV_DeAct_12P_PVs(H_PV_DeAct_12P_PVs>Thr)=0;
% H_PV_DeAct_18P_PVs(H_PV_DeAct_18P_PVs>Thr)=0;
% H_PV_DeAct_25P_PVs(H_PV_DeAct_25P_PVs>Thr)=0;
% H_PV_DeAct_50P_PVs(H_PV_DeAct_50P_PVs>Thr)=0;
% H_PV_DeAct_75P_PVs(H_PV_DeAct_75P_PVs>Thr)=0;
% H_PV_DeAct_100P_PVs(H_PV_DeAct_100P_PVs>Thr)=0;

H_One_Type_PV_Act = [ 
BB_PV_Act_06P;
BB_PV_Act_12P;
BB_PV_Act_18P;
BB_PV_Act_25P;
BB_PV_Act_50P;
BB_PV_Act_75P;
BB_PV_Act_100P;
];
%
H_One_Type_PV_DeAct = [
BB_PV_DeAct_06P;
BB_PV_DeAct_06P;
BB_PV_DeAct_06P;
BB_PV_DeAct_06P;
BB_PV_DeAct_06P;
BB_PV_DeAct_06P;
BB_PV_DeAct_06P
];

figure;
plot(H_One_Type_PV_Act)
figure;
plot(H_One_Type_PV_DeAct)
%%

% H_One_Type_PV_Act_Mean = [ 
% mean(H_PV_Act_06P_PVs);
% mean(H_PV_Act_12P_PVs);
% mean(H_PV_Act_18P_PVs);
% mean(H_PV_Act_25P_PVs);
% mean(H_PV_Act_50P_PVs);
% mean(H_PV_Act_75P_PVs);
% mean(H_PV_Act_100P_PVs);
% ];
% plot(H_One_Type_PV_Act_Mean)
% %%
% H_One_Type_PV_DeAct_Mean = [
% mean(H_PV_DeAct_06P_PVs);
% mean(H_PV_DeAct_12P_PVs);
% mean(H_PV_DeAct_18P_PVs);
% mean(H_PV_DeAct_25P_PVs);
% mean(H_PV_DeAct_50P_PVs);
% mean(H_PV_DeAct_75P_PVs);
% mean(H_PV_DeAct_100P_PVs)
% ]
% plot(H_One_Type_PV_DeAct_Mean)
% %%
% 
