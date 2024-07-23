
clear
clc
close all

load('FR_Preferred.mat')
filename = 'FR_Preferred_Orientation_Data_All_Sst_Mod.xlsx';

FR_Data_All = [PKS_C, PKS_Sst_Act_06P, PKS_Sst_Act_12P, PKS_Sst_Act_18P, PKS_Sst_Act_25P, PKS_Sst_Act_50P, PKS_Sst_Act_75P, PKS_Sst_Act_100P, PKS_Sst_DeAct_06P, PKS_Sst_DeAct_12P, PKS_Sst_DeAct_18P, PKS_Sst_DeAct_25P, PKS_Sst_DeAct_50P, PKS_Sst_DeAct_75P, PKS_Sst_DeAct_100P ];
FR_Data_All_T=array2table(FR_Data_All)
FR_Data_All_T.Properties.VariableNames = ["Control","Sst_Act_6%","Sst_Act_12%","Sst_Act_18%","Sst_Act_25%","Sst_Act_50%","Sst_Act_75%","Sst_Act_100%","Sst_DeAct_6%","Sst_DeAct_12%","Sst_DeAct_18%","Sst_DeAct_25%","Sst_DeAct_50%","Sst_DeAct_75%","Sst_DeAct_100%",]

%
%writematrix(FR_Data_All,filename,'Sheet',1,'Range','D1')
writetable(FR_Data_All_T,filename,'Sheet',1,'Range','D1')


run Cell_IDs.m
%%
% Cell conditioning 
H_C_PYRs=PKS_C(PYRs);
H_C_PVs=PKS_C(PVs);
H_C_Sst=PKS_C(Sst);
H_C_VIP=PKS_C(VIP);
%
H_Sst_Act_06P_PYRs=PKS_Sst_Act_06P(PYRs);
H_Sst_Act_12P_PYRs=PKS_Sst_Act_12P(PYRs);
H_Sst_Act_18P_PYRs=PKS_Sst_Act_18P(PYRs);
H_Sst_Act_25P_PYRs=PKS_Sst_Act_25P(PYRs);
H_Sst_Act_50P_PYRs=PKS_Sst_Act_50P(PYRs);
H_Sst_Act_75P_PYRs=PKS_Sst_Act_75P(PYRs);
H_Sst_Act_100P_PYRs=PKS_Sst_Act_100P(PYRs);

H_Sst_DeAct_06P_PYRs=PKS_Sst_DeAct_06P(PYRs);
H_Sst_DeAct_12P_PYRs=PKS_Sst_DeAct_12P(PYRs);
H_Sst_DeAct_18P_PYRs=PKS_Sst_DeAct_18P(PYRs);
H_Sst_DeAct_25P_PYRs=PKS_Sst_DeAct_25P(PYRs);
H_Sst_DeAct_50P_PYRs=PKS_Sst_DeAct_50P(PYRs);
H_Sst_DeAct_75P_PYRs=PKS_Sst_DeAct_75P(PYRs);
H_Sst_DeAct_100P_PYRs=PKS_Sst_DeAct_100P(PYRs);

H_Sst_Act_06P_PVs=PKS_Sst_Act_06P(PVs);
H_Sst_Act_12P_PVs=PKS_Sst_Act_12P(PVs);
H_Sst_Act_18P_PVs=PKS_Sst_Act_18P(PVs);
H_Sst_Act_25P_PVs=PKS_Sst_Act_25P(PVs);
H_Sst_Act_50P_PVs=PKS_Sst_Act_50P(PVs);
H_Sst_Act_75P_PVs=PKS_Sst_Act_75P(PVs);
H_Sst_Act_100P_PVs=PKS_Sst_Act_100P(PVs);

H_Sst_DeAct_06P_PVs=PKS_Sst_DeAct_06P(PVs);
H_Sst_DeAct_12P_PVs=PKS_Sst_DeAct_12P(PVs);
H_Sst_DeAct_18P_PVs=PKS_Sst_DeAct_18P(PVs);
H_Sst_DeAct_25P_PVs=PKS_Sst_DeAct_25P(PVs);
H_Sst_DeAct_50P_PVs=PKS_Sst_DeAct_50P(PVs);
H_Sst_DeAct_75P_PVs=PKS_Sst_DeAct_75P(PVs);
H_Sst_DeAct_100P_PVs=PKS_Sst_DeAct_100P(PVs);

H_Sst_Act_06P_Sst=PKS_Sst_Act_06P(Sst);
H_Sst_Act_12P_Sst=PKS_Sst_Act_12P(Sst);
H_Sst_Act_18P_Sst=PKS_Sst_Act_18P(Sst);
H_Sst_Act_25P_Sst=PKS_Sst_Act_25P(Sst);
H_Sst_Act_50P_Sst=PKS_Sst_Act_50P(Sst);
H_Sst_Act_75P_Sst=PKS_Sst_Act_75P(Sst);
H_Sst_Act_100P_Sst=PKS_Sst_Act_100P(Sst);

H_Sst_DeAct_06P_Sst=PKS_Sst_DeAct_06P(Sst);
H_Sst_DeAct_12P_Sst=PKS_Sst_DeAct_12P(Sst);
H_Sst_DeAct_18P_Sst=PKS_Sst_DeAct_18P(Sst);
H_Sst_DeAct_25P_Sst=PKS_Sst_DeAct_25P(Sst);
H_Sst_DeAct_50P_Sst=PKS_Sst_DeAct_50P(Sst);
H_Sst_DeAct_75P_Sst=PKS_Sst_DeAct_75P(Sst);
H_Sst_DeAct_100P_Sst=PKS_Sst_DeAct_100P(Sst);


H_Sst_Act_06P_VIP=PKS_Sst_Act_06P(VIP);
H_Sst_Act_12P_VIP=PKS_Sst_Act_12P(VIP);
H_Sst_Act_18P_VIP=PKS_Sst_Act_18P(VIP);
H_Sst_Act_25P_VIP=PKS_Sst_Act_25P(VIP);
H_Sst_Act_50P_VIP=PKS_Sst_Act_50P(VIP);
H_Sst_Act_75P_VIP=PKS_Sst_Act_75P(VIP);
H_Sst_Act_100P_VIP=PKS_Sst_Act_100P(VIP);

H_Sst_DeAct_06P_VIP=PKS_Sst_DeAct_06P(VIP);
H_Sst_DeAct_12P_VIP=PKS_Sst_DeAct_12P(VIP);
H_Sst_DeAct_18P_VIP=PKS_Sst_DeAct_18P(VIP);
H_Sst_DeAct_25P_VIP=PKS_Sst_DeAct_25P(VIP);
H_Sst_DeAct_50P_VIP=PKS_Sst_DeAct_50P(VIP);
H_Sst_DeAct_75P_VIP=PKS_Sst_DeAct_75P(VIP);
H_Sst_DeAct_100P_VIP=PKS_Sst_DeAct_100P(VIP);
%%
 
%%
run FR_PYRs_Sst_Mod.m
%run FR_PYRs_Sst_Mod_LV.m
run FR_PYRs_Sst_Mod_LV_BW.m
run Kruskal_Test_PYRs_Sst_Mod.m
%%
 run FR_PV_Sst_Mod.m
%  %run FR_PV_Ssft_Mod_LV.m
   run FR_PV_Sst_Mod_LV_BW.m
  run Kruskal_Test_PV_Sst_Mod.m
%
 %% 
  run FR_VIP_Sst_Mod.m
%  %run FR_VIP_Sst_Mod_LV.m
   run FR_VIP_Sst_Mod_LV_BW.m
% 
  run Kruskal_Test_VIP_Sst_Mod.m
% 
% 
