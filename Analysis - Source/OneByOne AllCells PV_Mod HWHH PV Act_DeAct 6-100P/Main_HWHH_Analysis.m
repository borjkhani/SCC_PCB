
clear
clc
close all

load('HWHH_Results_PV.mat')
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
H_PV_DeAct_06P_PYRs=H_PV_DeAct_06P(PYRs);
H_PV_DeAct_12P_PYRs=H_PV_DeAct_12P(PYRs);
H_PV_DeAct_18P_PYRs=H_PV_DeAct_18P(PYRs);
H_PV_DeAct_25P_PYRs=H_PV_DeAct_25P(PYRs);
H_PV_DeAct_50P_PYRs=H_PV_DeAct_50P(PYRs);
H_PV_DeAct_75P_PYRs=H_PV_DeAct_75P(PYRs);
H_PV_DeAct_100P_PYRs=H_PV_DeAct_100P(PYRs);


H_PV_Act_06P_PVs=H_PV_Act_06P(PVs);
H_PV_Act_12P_PVs=H_PV_Act_12P(PVs);
H_PV_Act_18P_PVs=H_PV_Act_18P(PVs);
H_PV_Act_25P_PVs=H_PV_Act_25P(PVs);
H_PV_Act_50P_PVs=H_PV_Act_50P(PVs);
H_PV_Act_75P_PVs=H_PV_Act_75P(PVs);
H_PV_Act_100P_PVs=H_PV_Act_100P(PVs);
H_PV_DeAct_06P_PVs=H_PV_DeAct_06P(PVs);
H_PV_DeAct_12P_PVs=H_PV_DeAct_12P(PVs);
H_PV_DeAct_18P_PVs=H_PV_DeAct_18P(PVs);
H_PV_DeAct_25P_PVs=H_PV_DeAct_25P(PVs);
H_PV_DeAct_50P_PVs=H_PV_DeAct_50P(PVs);
H_PV_DeAct_75P_PVs=H_PV_DeAct_75P(PVs);
H_PV_DeAct_100P_PVs=H_PV_DeAct_100P(PVs);

H_PV_Act_06P_Sst=H_PV_Act_06P(Sst);
H_PV_Act_12P_Sst=H_PV_Act_12P(Sst);
H_PV_Act_18P_Sst=H_PV_Act_18P(Sst);
H_PV_Act_25P_Sst=H_PV_Act_25P(Sst);
H_PV_Act_50P_Sst=H_PV_Act_50P(Sst);
H_PV_Act_75P_Sst=H_PV_Act_75P(Sst);
H_PV_Act_100P_Sst=H_PV_Act_100P(Sst);
H_PV_DeAct_06P_Sst=H_PV_DeAct_06P(Sst);
H_PV_DeAct_12P_Sst=H_PV_DeAct_12P(Sst);
H_PV_DeAct_18P_Sst=H_PV_DeAct_18P(Sst);
H_PV_DeAct_25P_Sst=H_PV_DeAct_25P(Sst);
H_PV_DeAct_50P_Sst=H_PV_DeAct_50P(Sst);
H_PV_DeAct_75P_Sst=H_PV_DeAct_75P(Sst);
H_PV_DeAct_100P_Sst=H_PV_DeAct_100P(Sst);


H_PV_Act_06P_VIP=H_PV_Act_06P(VIP);
H_PV_Act_12P_VIP=H_PV_Act_12P(VIP);
H_PV_Act_18P_VIP=H_PV_Act_18P(VIP);
H_PV_Act_25P_VIP=H_PV_Act_25P(VIP);
H_PV_Act_50P_VIP=H_PV_Act_50P(VIP);
H_PV_Act_75P_VIP=H_PV_Act_75P(VIP);
H_PV_Act_100P_VIP=H_PV_Act_100P(VIP);
H_PV_DeAct_06P_VIP=H_PV_DeAct_06P(VIP);
H_PV_DeAct_12P_VIP=H_PV_DeAct_12P(VIP);
H_PV_DeAct_18P_VIP=H_PV_DeAct_18P(VIP);
H_PV_DeAct_25P_VIP=H_PV_DeAct_25P(VIP);
H_PV_DeAct_50P_VIP=H_PV_DeAct_50P(VIP);
H_PV_DeAct_75P_VIP=H_PV_DeAct_75P(VIP);
H_PV_DeAct_100P_VIP=H_PV_DeAct_100P(VIP);

H_PV_DeAct_75P_PVs(28,1)= 10; 

%%

run HWHH_PYRs_PV_Mod.m
run HWHH_PYRs_PV_Mod_LV.m
run HWHH_PYRs_PV_Mod_LV_BW.m
run Kruskal_Test_PYRs_PV_Mod.m

run HWHH_Sst_PV_Mod.m
run HWHH_Sst_PV_Mod_LV.m
run HWHH_Sst_PV_Mod_LV_BW.m
run Kruskal_Test_Sst_PV_Mod.m


run HWHH_VIP_PV_Mod.m
run HWHH_VIP_PV_Mod_LV.m
run HWHH_VIP_PV_Mod_LV_BW.m
run Kruskal_Test_VIP_PV_Mod.m


