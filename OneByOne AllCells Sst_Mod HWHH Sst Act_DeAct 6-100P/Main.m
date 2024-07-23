clear;
clc;
close all;

% No plots
% run All_Cells_VIP_Mod_OneByOne_HWHH_Fast.m
run All_Cells_Sst_Mod_OneByOne_HWHH_Fast.m

run Main_HWHH_Analysis.m

%%
run Correlation_Analysis.m