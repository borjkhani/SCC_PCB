
clear
clc
close all

load('HWHH_PV_Act.mat')
run Cell_IDs.m
%%
% Cell conditioning 
H_C_PYRs=H_C(PYRs);
H_C_PVs=H_C(PVs);
H_C_Sst=H_C(Sst);
H_C_VIP=H_C(VIP);
%
H_PV_Act_06P_PYRs=H_PV_Act_06P(PYRs);
H_PV_Act_12P_PYRs=H_PV_Act_12P(PYRs);
H_PV_Act_18P_PYRs=H_PV_Act_18P(PYRs);
H_PV_Act_25P_PYRs=H_PV_Act_25P(PYRs);
H_PV_Act_50P_PYRs=H_PV_Act_50P(PYRs);
H_PV_Act_75P_PYRs=H_PV_Act_75P(PYRs);
H_PV_Act_100P_PYRs=H_PV_Act_100P(PYRs);
H_PV_DeAct_100P_PYRs=H_PV_DeAct_100P(PYRs);

H_PV_Act_06P_PVs=H_PV_Act_06P(PVs);
H_PV_Act_12P_PVs=H_PV_Act_12P(PVs);
H_PV_Act_18P_PVs=H_PV_Act_18P(PVs);
H_PV_Act_25P_PVs=H_PV_Act_25P(PVs);
H_PV_Act_50P_PVs=H_PV_Act_50P(PVs);
H_PV_Act_75P_PVs=H_PV_Act_75P(PVs);
H_PV_Act_100P_PVs=H_PV_Act_100P(PVs);
H_PV_DeAct_100P_PVs=H_PV_DeAct_100P(PVs);

H_PV_Act_06P_Sst=H_PV_Act_06P(Sst);
H_PV_Act_12P_Sst=H_PV_Act_12P(Sst);
H_PV_Act_18P_Sst=H_PV_Act_18P(Sst);
H_PV_Act_25P_Sst=H_PV_Act_25P(Sst);
H_PV_Act_50P_Sst=H_PV_Act_50P(Sst);
H_PV_Act_75P_Sst=H_PV_Act_75P(Sst);
H_PV_Act_100P_Sst=H_PV_Act_100P(Sst);
H_PV_DeAct_100P_Sst=H_PV_DeAct_100P(Sst);

H_PV_Act_06P_VIP=H_PV_Act_06P(VIP);
H_PV_Act_12P_VIP=H_PV_Act_12P(VIP);
H_PV_Act_18P_VIP=H_PV_Act_18P(VIP);
H_PV_Act_25P_VIP=H_PV_Act_25P(VIP);
H_PV_Act_50P_VIP=H_PV_Act_50P(VIP);
H_PV_Act_75P_VIP=H_PV_Act_75P(VIP);
H_PV_Act_100P_VIP=H_PV_Act_100P(VIP);
H_PV_DeAct_100P_VIP=H_PV_DeAct_100P(VIP);

%%

run HWHH_PYRs_PV_Mod.m

run HWHH_Sst_PV_Mod.m

run HWHH_VIP_PV_Mod.m

