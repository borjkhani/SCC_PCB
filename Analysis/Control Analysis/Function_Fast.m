clearvars -except H_C H_PV_Act_06P H_PV_Act_12P H_PV_Act_18P H_PV_Act_25P H_PV_Act_50P H_PV_Act_75P H_PV_Act_100P H_PV_DeAct_100P skipNum Gof_PYRs_C  Gof_PYRs_PV_Act_06P Gof_PYRs_PV_Act_12P Gof_PYRs_PV_Act_18P Gof_PYRs_PV_Act_25P Gof_PYRs_PV_Act_50P Gof_PYRs_PV_Act_75P Gof_PYRs_PV_Act_100P Gof_PYRs_PV_DeAct_100P  

%clear
% clc
close all

run Cell_IDs.m
PYRs=PYRs';
Trial=8;

load('All_cells_Control.mat')

global Cell_Number;

%h=figure;
%Firings_Control = All_cells_Control(:,PYRs);
Firings_Control = All_cells_Control(:,Cell_Number);
%
F_C=cell2mat(Firings_Control);
%%
FB_C(1,:,:)=F_C(1:17,:);
FB_C(2,:,:)=F_C(18:34,:);
FB_C(3,:,:)=F_C(35:51,:);
FB_C(4,:,:)=F_C(52:68,:);

FB_C(5,:,:)=F_C(69:85,:);
FB_C(6,:,:)=F_C(86:102,:);
FB_C(7,:,:)=F_C(103:119,:);
FB_C(8,:,:)=F_C(120:136,:);

BB_Control=mean(FB_C,3);
%
x = 1:17; 
N = size(BB_Control,1);
y = mean(BB_Control);

%%
xx=1:17;
% 
BB_Control(isnan(BB_Control))=0;

yy=mean(BB_Control);
[f_PYRs_C, gof_PYRs_C] = fit(xx.',yy.','gauss1');

% 
if find(Cell_Number==PVs)
     Ce='PV';
    elseif  find(Cell_Number==Sst)
         Ce='Sst';
            elseif  find(Cell_Number==VIP)
                Ce='VIP';
                    elseif find(Cell_Number==PYRs)
                        Ce='PYRs';
end

%% Plot 3 Control Act DeAct_100P

x = 1:17; 
N = size(BB_Control,1);
y = mean(BB_Control);
SEM = std(BB_Control) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals

xx=1:17;

BB_Control(isnan(BB_Control))=0;

yy=mean(BB_Control);
[f_PYRs_C, gof_PYRs_C] = fit(xx.',yy.','gauss1');

if find(Cell_Number==PVs)
     Ce='PV';
    elseif  find(Cell_Number==Sst)
         Ce='Sst';
            elseif  find(Cell_Number==VIP)
                Ce='VIP';
                    elseif find(Cell_Number==PYRs)
                        Ce='PYRs';
 end


