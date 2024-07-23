close all
clc
clear

run Cell_IDs.m 

load('All_cells_Control.mat')
Firings_Control_1 = All_cells_Control;

load('All_cells_Sst_Act_06P.mat')
All_cells_Sst_Act_06P=All_cells_Control;

load('All_cells_Sst_Act_12P.mat')
All_cells_Sst_Act_12P=All_cells_Control;

load('All_cells_Sst_Act_18P.mat')
All_cells_Sst_Act_18P=All_cells_Control;

load('All_cells_Sst_Act_25P.mat')
All_cells_Sst_Act_25P=All_cells_Control;

load('All_cells_Sst_Act_50P.mat')
All_cells_Sst_Act_50P=All_cells_Control;

load('All_cells_Sst_Act_75P.mat')
All_cells_Sst_Act_75P=All_cells_Control;

load('All_cells_Sst_Act_100P.mat')
All_cells_Sst_Act_100P=All_cells_Control;

% load('All_cells_Sst_DeAct.mat')
% All_cells_Sst_DeAct=All_cells_Sst_DeAct;

load('All_cells_Sst_DeAct_06P.mat')
All_cells_Sst_DeAct_06P=All_cells_Control;

load('All_cells_Sst_DeAct_12P.mat')
All_cells_Sst_DeAct_12P=All_cells_Control;

load('All_cells_Sst_DeAct_18P.mat')
All_cells_Sst_DeAct_18P=All_cells_Control;

load('All_cells_Sst_DeAct_25P.mat')
All_cells_Sst_DeAct_25P=All_cells_Control;

load('All_cells_Sst_DeAct_50P.mat')
All_cells_Sst_DeAct_50P=All_cells_Control;

load('All_cells_Sst_DeAct_75P.mat')
All_cells_Sst_DeAct_75P=All_cells_Control;

load('All_cells_Sst_DeAct_100P.mat')
All_cells_Sst_DeAct_100P=All_cells_Control;

MQ=3;
%%
Cell_Number = Sst;

Firings_Control = Firings_Control_1(:,Cell_Number);
%
%F_C=cell2mat(Firings_Control);
% FB_C(1,:,:)=F_C(1:17,:);
% FB_C(2,:,:)=F_C(18:34,:);
% FB_C(3,:,:)=F_C(35:51,:);
% FB_C(4,:,:)=F_C(52:68,:);
% 
% FB_C(5,:,:)=F_C(69:85,:);
% FB_C(6,:,:)=F_C(86:102,:);
% FB_C(7,:,:)=F_C(103:119,:);
% FB_C(8,:,:)=F_C(120:136,:);
% 
% BB_Control=mean(FB_C,MQ);


%pcolor(BB_Control);
%%
Firings_Sst_Act_06P = All_cells_Sst_Act_06P(:,Cell_Number);
%
% F_Sst_Act_06P=cell2mat(Firings_Sst_Act_06P);
% %
% FB_Sst_Act_06P(1,:,:)=F_Sst_Act_06P(1:17,:);
% FB_Sst_Act_06P(2,:,:)=F_Sst_Act_06P(18:34,:);
% FB_Sst_Act_06P(3,:,:)=F_Sst_Act_06P(35:51,:);
% FB_Sst_Act_06P(4,:,:)=F_Sst_Act_06P(52:68,:);
% 
% FB_Sst_Act_06P(5,:,:)=F_Sst_Act_06P(69:85,:);
% FB_Sst_Act_06P(6,:,:)=F_Sst_Act_06P(86:102,:);
% FB_Sst_Act_06P(7,:,:)=F_Sst_Act_06P(103:119,:);
% FB_Sst_Act_06P(8,:,:)=F_Sst_Act_06P(120:136,:);
% 
% BB_Sst_Act_06P=mean(FB_Sst_Act_06P,MQ);
%%
Firings_Sst_Act_12P = All_cells_Sst_Act_12P(:,Cell_Number);
%
% F_Sst_Act_12P=cell2mat(Firings_Sst_Act_12P);
% %
% FB_Sst_Act_12P(1,:,:)=F_Sst_Act_12P(1:17,:);
% FB_Sst_Act_12P(2,:,:)=F_Sst_Act_12P(18:34,:);
% FB_Sst_Act_12P(3,:,:)=F_Sst_Act_12P(35:51,:);
% FB_Sst_Act_12P(4,:,:)=F_Sst_Act_12P(52:68,:);
% 
% FB_Sst_Act_12P(5,:,:)=F_Sst_Act_12P(69:85,:);
% FB_Sst_Act_12P(6,:,:)=F_Sst_Act_12P(86:102,:);
% FB_Sst_Act_12P(7,:,:)=F_Sst_Act_12P(103:119,:);
% FB_Sst_Act_12P(8,:,:)=F_Sst_Act_12P(120:136,:);
% 
% BB_Sst_Act_12P=mean(FB_Sst_Act_12P,MQ);
%%
Firings_Sst_Act_18P = All_cells_Sst_Act_18P(:,Cell_Number);
%
% F_Sst_Act_18P=cell2mat(Firings_Sst_Act_18P);
% %
% FB_Sst_Act_18P(1,:,:)=F_Sst_Act_18P(1:17,:);
% FB_Sst_Act_18P(2,:,:)=F_Sst_Act_18P(18:34,:);
% FB_Sst_Act_18P(3,:,:)=F_Sst_Act_18P(35:51,:);
% FB_Sst_Act_18P(4,:,:)=F_Sst_Act_18P(52:68,:);
% 
% FB_Sst_Act_18P(5,:,:)=F_Sst_Act_18P(69:85,:);
% FB_Sst_Act_18P(6,:,:)=F_Sst_Act_18P(86:102,:);
% FB_Sst_Act_18P(7,:,:)=F_Sst_Act_18P(103:119,:);
% FB_Sst_Act_18P(8,:,:)=F_Sst_Act_18P(120:136,:);
% 
% BB_Sst_Act_18P=mean(FB_Sst_Act_18P,MQ);

%%
Firings_Sst_Act_25P = All_cells_Sst_Act_25P(:,Cell_Number);
%
% F_Sst_Act_25P=cell2mat(Firings_Sst_Act_25P);
% %
% FB_Sst_Act_25P(1,:,:)=F_Sst_Act_25P(1:17,:);
% FB_Sst_Act_25P(2,:,:)=F_Sst_Act_25P(18:34,:);
% FB_Sst_Act_25P(3,:,:)=F_Sst_Act_25P(35:51,:);
% FB_Sst_Act_25P(4,:,:)=F_Sst_Act_25P(52:68,:);
% 
% FB_Sst_Act_25P(5,:,:)=F_Sst_Act_25P(69:85,:);
% FB_Sst_Act_25P(6,:,:)=F_Sst_Act_25P(86:102,:);
% FB_Sst_Act_25P(7,:,:)=F_Sst_Act_25P(103:119,:);
% FB_Sst_Act_25P(8,:,:)=F_Sst_Act_25P(120:136,:);
% 
% BB_Sst_Act_25P=mean(FB_Sst_Act_25P,MQ);
%
% x = 1:17; 
% N = size(BB_Sst_Act_25P,1);
% y = mean(BB_Sst_Act_25P);
% SEM = std(BB_Sst_Act_25P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%errorbar(x, y, CI95,'o','LineWidth',3);
%grid off
%hold on;
%%
Firings_Sst_Act_50P = All_cells_Sst_Act_50P(:,Cell_Number);
%
% F_Sst_Act_50P=cell2mat(Firings_Sst_Act_50P);
% %
% FB_Sst_Act_50P(1,:,:)=F_Sst_Act_50P(1:17,:);
% FB_Sst_Act_50P(2,:,:)=F_Sst_Act_50P(18:34,:);
% FB_Sst_Act_50P(3,:,:)=F_Sst_Act_50P(35:51,:);
% FB_Sst_Act_50P(4,:,:)=F_Sst_Act_50P(52:68,:);
% 
% FB_Sst_Act_50P(5,:,:)=F_Sst_Act_50P(69:85,:);
% FB_Sst_Act_50P(6,:,:)=F_Sst_Act_50P(86:102,:);
% FB_Sst_Act_50P(7,:,:)=F_Sst_Act_50P(103:119,:);
% FB_Sst_Act_50P(8,:,:)=F_Sst_Act_50P(120:136,:);
% 
% BB_Sst_Act_50P=mean(FB_Sst_Act_50P,MQ);
% %
% x = 1:17; 
% N = size(BB_Sst_Act_50P,1);
% y = mean(BB_Sst_Act_50P);
% SEM = std(BB_Sst_Act_50P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;
%%
Firings_Sst_Act_75P = All_cells_Sst_Act_75P(:,Cell_Number);
%
% F_Sst_Act_75P=cell2mat(Firings_Sst_Act_75P);
% %
% FB_Sst_Act_75P(1,:,:)=F_Sst_Act_75P(1:17,:);
% FB_Sst_Act_75P(2,:,:)=F_Sst_Act_75P(18:34,:);
% FB_Sst_Act_75P(3,:,:)=F_Sst_Act_75P(35:51,:);
% FB_Sst_Act_75P(4,:,:)=F_Sst_Act_75P(52:68,:);
% 
% FB_Sst_Act_75P(5,:,:)=F_Sst_Act_75P(69:85,:);
% FB_Sst_Act_75P(6,:,:)=F_Sst_Act_75P(86:102,:);
% FB_Sst_Act_75P(7,:,:)=F_Sst_Act_75P(103:119,:);
% FB_Sst_Act_75P(8,:,:)=F_Sst_Act_75P(120:136,:);
% 
% BB_Sst_Act_75P=mean(FB_Sst_Act_75P,MQ);
% %
% x = 1:17; 
% N = size(BB_Sst_Act_75P,1);
% y = mean(BB_Sst_Act_75P);
% SEM = std(BB_Sst_Act_75P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;

%%
Firings_Sst_Act_100P = All_cells_Sst_Act_100P(:,Cell_Number);
%
% F_Sst_Act_100P=cell2mat(Firings_Sst_Act_100P);
% %
% FB_Sst_Act_100P(1,:,:)=F_Sst_Act_100P(1:17,:);
% FB_Sst_Act_100P(2,:,:)=F_Sst_Act_100P(18:34,:);
% FB_Sst_Act_100P(3,:,:)=F_Sst_Act_100P(35:51,:);
% FB_Sst_Act_100P(4,:,:)=F_Sst_Act_100P(52:68,:);
% 
% FB_Sst_Act_100P(5,:,:)=F_Sst_Act_100P(69:85,:);
% FB_Sst_Act_100P(6,:,:)=F_Sst_Act_100P(86:102,:);
% FB_Sst_Act_100P(7,:,:)=F_Sst_Act_100P(103:119,:);
% FB_Sst_Act_100P(8,:,:)=F_Sst_Act_100P(120:136,:);
% 
% BB_Sst_Act_100P=mean(FB_Sst_Act_100P,MQ);
%%

Firings_Sst_DeAct_06P = All_cells_Sst_DeAct_06P(:,Cell_Number);
%
% F_Sst_DeAct_06P=cell2mat(Firings_Sst_DeAct_06P);
% %
% FB_Sst_DeAct_06P(1,:,:)=F_Sst_DeAct_06P(1:17,:);
% FB_Sst_DeAct_06P(2,:,:)=F_Sst_DeAct_06P(18:34,:);
% FB_Sst_DeAct_06P(3,:,:)=F_Sst_DeAct_06P(35:51,:);
% FB_Sst_DeAct_06P(4,:,:)=F_Sst_DeAct_06P(52:68,:);
% 
% FB_Sst_DeAct_06P(5,:,:)=F_Sst_DeAct_06P(69:85,:);
% FB_Sst_DeAct_06P(6,:,:)=F_Sst_DeAct_06P(86:102,:);
% FB_Sst_DeAct_06P(7,:,:)=F_Sst_DeAct_06P(103:119,:);
% FB_Sst_DeAct_06P(8,:,:)=F_Sst_DeAct_06P(120:136,:);
% 
% BB_Sst_DeAct_06P=mean(FB_Sst_DeAct_06P,MQ);
%%
Firings_Sst_DeAct_12P = All_cells_Sst_DeAct_12P(:,Cell_Number);
%
% F_Sst_DeAct_12P=cell2mat(Firings_Sst_DeAct_12P);
% %
% FB_Sst_DeAct_12P(1,:,:)=F_Sst_DeAct_12P(1:17,:);
% FB_Sst_DeAct_12P(2,:,:)=F_Sst_DeAct_12P(18:34,:);
% FB_Sst_DeAct_12P(3,:,:)=F_Sst_DeAct_12P(35:51,:);
% FB_Sst_DeAct_12P(4,:,:)=F_Sst_DeAct_12P(52:68,:);
% 
% FB_Sst_DeAct_12P(5,:,:)=F_Sst_DeAct_12P(69:85,:);
% FB_Sst_DeAct_12P(6,:,:)=F_Sst_DeAct_12P(86:102,:);
% FB_Sst_DeAct_12P(7,:,:)=F_Sst_DeAct_12P(103:119,:);
% FB_Sst_DeAct_12P(8,:,:)=F_Sst_DeAct_12P(120:136,:);
% 
% BB_Sst_DeAct_12P=mean(FB_Sst_DeAct_12P,MQ);
%%
Firings_Sst_DeAct_18P = All_cells_Sst_DeAct_18P(:,Cell_Number);
%
% F_Sst_DeAct_18P=cell2mat(Firings_Sst_DeAct_18P);
% %
% FB_Sst_DeAct_18P(1,:,:)=F_Sst_DeAct_18P(1:17,:);
% FB_Sst_DeAct_18P(2,:,:)=F_Sst_DeAct_18P(18:34,:);
% FB_Sst_DeAct_18P(3,:,:)=F_Sst_DeAct_18P(35:51,:);
% FB_Sst_DeAct_18P(4,:,:)=F_Sst_DeAct_18P(52:68,:);
% 
% FB_Sst_DeAct_18P(5,:,:)=F_Sst_DeAct_18P(69:85,:);
% FB_Sst_DeAct_18P(6,:,:)=F_Sst_DeAct_18P(86:102,:);
% FB_Sst_DeAct_18P(7,:,:)=F_Sst_DeAct_18P(103:119,:);
% FB_Sst_DeAct_18P(8,:,:)=F_Sst_DeAct_18P(120:136,:);
% 
% BB_Sst_DeAct_18P=mean(FB_Sst_DeAct_18P,MQ);

%%
Firings_Sst_DeAct_25P = All_cells_Sst_DeAct_25P(:,Cell_Number);
%
% F_Sst_DeAct_25P=cell2mat(Firings_Sst_DeAct_25P);
% %
% FB_Sst_DeAct_25P(1,:,:)=F_Sst_DeAct_25P(1:17,:);
% FB_Sst_DeAct_25P(2,:,:)=F_Sst_DeAct_25P(18:34,:);
% FB_Sst_DeAct_25P(3,:,:)=F_Sst_DeAct_25P(35:51,:);
% FB_Sst_DeAct_25P(4,:,:)=F_Sst_DeAct_25P(52:68,:);
% 
% FB_Sst_DeAct_25P(5,:,:)=F_Sst_DeAct_25P(69:85,:);
% FB_Sst_DeAct_25P(6,:,:)=F_Sst_DeAct_25P(86:102,:);
% FB_Sst_DeAct_25P(7,:,:)=F_Sst_DeAct_25P(103:119,:);
% FB_Sst_DeAct_25P(8,:,:)=F_Sst_DeAct_25P(120:136,:);
% 
% BB_Sst_DeAct_25P=mean(FB_Sst_DeAct_25P,MQ);
%
% x = 1:17; 
% N = size(BB_Sst_DeAct_25P,1);
% y = mean(BB_Sst_DeAct_25P);
% SEM = std(BB_Sst_DeAct_25P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%errorbar(x, y, CI95,'o','LineWidth',3);
%grid off
%hold on;
%%
Firings_Sst_DeAct_50P = All_cells_Sst_DeAct_50P(:,Cell_Number);
%
% F_Sst_DeAct_50P=cell2mat(Firings_Sst_DeAct_50P);
% %
% FB_Sst_DeAct_50P(1,:,:)=F_Sst_DeAct_50P(1:17,:);
% FB_Sst_DeAct_50P(2,:,:)=F_Sst_DeAct_50P(18:34,:);
% FB_Sst_DeAct_50P(3,:,:)=F_Sst_DeAct_50P(35:51,:);
% FB_Sst_DeAct_50P(4,:,:)=F_Sst_DeAct_50P(52:68,:);
% 
% FB_Sst_DeAct_50P(5,:,:)=F_Sst_DeAct_50P(69:85,:);
% FB_Sst_DeAct_50P(6,:,:)=F_Sst_DeAct_50P(86:102,:);
% FB_Sst_DeAct_50P(7,:,:)=F_Sst_DeAct_50P(103:119,:);
% FB_Sst_DeAct_50P(8,:,:)=F_Sst_DeAct_50P(120:136,:);
% 
% BB_Sst_DeAct_50P=mean(FB_Sst_DeAct_50P,MQ);
%
% x = 1:17; 
% N = size(BB_Sst_DeAct_50P,1);
% y = mean(BB_Sst_DeAct_50P);
% SEM = std(BB_Sst_DeAct_50P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;
%%
Firings_Sst_DeAct_75P = All_cells_Sst_DeAct_75P(:,Cell_Number);
%
% F_Sst_DeAct_75P=cell2mat(Firings_Sst_DeAct_75P);
% %
% FB_Sst_DeAct_75P(1,:,:)=F_Sst_DeAct_75P(1:17,:);
% FB_Sst_DeAct_75P(2,:,:)=F_Sst_DeAct_75P(18:34,:);
% FB_Sst_DeAct_75P(3,:,:)=F_Sst_DeAct_75P(35:51,:);
% FB_Sst_DeAct_75P(4,:,:)=F_Sst_DeAct_75P(52:68,:);
% 
% FB_Sst_DeAct_75P(5,:,:)=F_Sst_DeAct_75P(69:85,:);
% FB_Sst_DeAct_75P(6,:,:)=F_Sst_DeAct_75P(86:102,:);
% FB_Sst_DeAct_75P(7,:,:)=F_Sst_DeAct_75P(103:119,:);
% FB_Sst_DeAct_75P(8,:,:)=F_Sst_DeAct_75P(120:136,:);
% 
% BB_Sst_DeAct_75P=mean(FB_Sst_DeAct_75P,MQ);
%
% x = 1:17; 
% N = size(BB_Sst_DeAct_75P,1);
% y = mean(BB_Sst_DeAct_75P);
% SEM = std(BB_Sst_DeAct_75P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;

%%
Firings_Sst_DeAct_100P = All_cells_Sst_DeAct_100P(:,Cell_Number);
%
% F_Sst_DeAct_100P=cell2mat(Firings_Sst_DeAct_100P);
% %
% FB_Sst_DeAct_100P(1,:,:)=F_Sst_DeAct_100P(1:17,:);
% FB_Sst_DeAct_100P(2,:,:)=F_Sst_DeAct_100P(18:34,:);
% FB_Sst_DeAct_100P(3,:,:)=F_Sst_DeAct_100P(35:51,:);
% FB_Sst_DeAct_100P(4,:,:)=F_Sst_DeAct_100P(52:68,:);
% 
% FB_Sst_DeAct_100P(5,:,:)=F_Sst_DeAct_100P(69:85,:);
% FB_Sst_DeAct_100P(6,:,:)=F_Sst_DeAct_100P(86:102,:);
% FB_Sst_DeAct_100P(7,:,:)=F_Sst_DeAct_100P(103:119,:);
% FB_Sst_DeAct_100P(8,:,:)=F_Sst_DeAct_100P(120:136,:);
% 
% BB_Sst_DeAct_100P=mean(FB_Sst_DeAct_100P,MQ);
%
% x = 1:17; 
% N = size(BB_Sst_DeAct_100P,1);
% y = mean(BB_Sst_DeAct_100P);
% SEM = std(BB_Sst_DeAct_100P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;
%%
jj=1;
Trial=8;
for jj=1:length(Sst)
for ii=1:Trial

MM_C(ii)=(max(Firings_Control{ii, jj}));

MM_Sst_Act_06P(ii)=(max(Firings_Sst_Act_06P{ii, jj}));
MM_Sst_Act_12P(ii)=(max(Firings_Sst_Act_12P{ii, jj}));
MM_Sst_Act_18P(ii)=(max(Firings_Sst_Act_18P{ii, jj}));
MM_Sst_Act_25P(ii)=(max(Firings_Sst_Act_25P{ii, jj}));
MM_Sst_Act_50P(ii)=(max(Firings_Sst_Act_50P{ii, jj}));
MM_Sst_Act_75P(ii)=(max(Firings_Sst_Act_75P{ii, jj}));
MM_Sst_Act_100P(ii)=(max(Firings_Sst_Act_100P{ii, jj}));

MM_Sst_DeAct_06P(ii)=(max(Firings_Sst_DeAct_06P{ii, jj}));
MM_Sst_DeAct_12P(ii)=(max(Firings_Sst_DeAct_12P{ii, jj}));
MM_Sst_DeAct_18P(ii)=(max(Firings_Sst_DeAct_18P{ii, jj}));
MM_Sst_DeAct_25P(ii)=(max(Firings_Sst_DeAct_25P{ii, jj}));
MM_Sst_DeAct_50P(ii)=(max(Firings_Sst_DeAct_50P{ii, jj}));
MM_Sst_DeAct_75P(ii)=(max(Firings_Sst_DeAct_75P{ii, jj}));
MM_Sst_DeAct_100P(ii)=(max(Firings_Sst_DeAct_100P{ii, jj}));

end
Avg_C(jj)=mean(MM_C);

Avg_Sst_Act_06P(jj)=mean(MM_Sst_Act_06P);
Avg_Sst_Act_12P(jj)=mean(MM_Sst_Act_12P);
Avg_Sst_Act_18P(jj)=mean(MM_Sst_Act_18P);
Avg_Sst_Act_25P(jj)=mean(MM_Sst_Act_25P);
Avg_Sst_Act_50P(jj)=mean(MM_Sst_Act_50P);
Avg_Sst_Act_75P(jj)=mean(MM_Sst_Act_75P);
Avg_Sst_Act_100P(jj)=mean(MM_Sst_Act_100P);

Avg_Sst_DeAct_06P(jj)=mean(MM_Sst_DeAct_06P);
Avg_Sst_DeAct_12P(jj)=mean(MM_Sst_DeAct_12P);
Avg_Sst_DeAct_18P(jj)=mean(MM_Sst_DeAct_18P);
Avg_Sst_DeAct_25P(jj)=mean(MM_Sst_DeAct_25P);
Avg_Sst_DeAct_50P(jj)=mean(MM_Sst_DeAct_50P);
Avg_Sst_DeAct_75P(jj)=mean(MM_Sst_DeAct_75P);
Avg_Sst_DeAct_100P(jj)=mean(MM_Sst_DeAct_100P);

end

%%
%%
A_C  =  Avg_C
A_06 =  Avg_Sst_Act_06P
A_12 =  Avg_Sst_Act_12P
A_18 =  Avg_Sst_Act_18P
A_25 =  Avg_Sst_Act_25P
A_50 =  Avg_Sst_Act_50P
A_75 =  Avg_Sst_Act_75P
A_100 = Avg_Sst_Act_100P

%%
%% kruskalwallis Test
Group(1:1:length(A_C),1) = A_C;
Group(1:length(A_06),2) = A_06; 
Group(1:length(A_12),3) = A_12; 
Group(1:length(A_18),4) = A_18; 

Group(1:length(A_25),5) = A_25; 
Group(1:length(A_50),6) = A_50; 
Group(1:length(A_75),7) = A_75; 
Group(1:length(A_100),8) = A_100; 

figure
kruskalwallis(Group)
%
figure
[p,tbl,stats] = kruskalwallis(Group,[],'off')
[c,m,h,nms] = multcompare(stats);
c1=zeros(28,7);
c1=c;
c1(1,7)=p;
c1(2:end,7)=NaN;
CC = array2table(c1)
%PP= array2table(p)
CC.Properties.VariableNames(1:7) = {'1st group','2nd group','Lower (95% confidence)','diff. est. group means','Upper (95% confidence)','P-values','P-value(all)'}
%
save FR_L_Sst_Sst_Mod_Act_KW_St.mat p tbl stats c m h nms
filename = 'FR_L_Sst_Sst_Mod_Act_KW_St.xlsx';
%writematrix(c,filename,'Sheet',1,'Range','D1')
writetable(CC,filename,'Sheet',1,'Range','D1')
%writetable(PP,filename,'Sheet',1,'Range','J2')

%%

h=figure

boxplot([A_C', A_06', A_12', A_18', A_25', A_50', A_75', A_100'   ])

xticklabels({'C','6%','12%','18%','25%','50%','75%','100%'})
xticks([1 :8])

%ylim=([0 Lim])

%

% a = get(gca,'XTickLabel');  
% set(gca,'XTickLabel',a,'fontsize',16,'FontWeight','normal')
% 
% xlabel('Sst Activation' )
% ylabel('Sst Firing Rates (Hz)')
% box off

%set(gcf, 'Units', 'Inches', 'Position', [1, 1, 8, 8], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
%saveas(h,sprintf('FIG.eps'));

%run Main_Upd_2.m
hold on;
med = median(A_C);
%plot(1,med,'ro-','Color','k'); hold on
med1 = median(A_06);
med2 = median(A_12);
med3 = median(A_18);
med4 = median(A_25);
med5 = median(A_50);
med6 = median(A_75);
med7 = median(A_100);

Med=[med med1 med2 med3 med4 med5 med6 med7 ];
save Med_FR_Sst_Sst_Act.mat Med

% 
close all
figure
x11 = 1:8;
y11 = Med;
scatter(x11,y11,25,'LineWidth',2);
%


lh = lsline; 
p2 = polyfit(get(lh,'xdata'),get(lh,'ydata'),1)
boxplot([A_C', A_06', A_12', A_18', A_25', A_50', A_75', A_100'   ],'Symbol', 'o','OutlierSize',2)
%ylim=([0 Lim])


% B=[max(A_C'), max(A_06'), max(A_12'), max(A_18'), max(A_25'), max(A_50'), max(A_75'), max(A_100')];
% Lim=max(B)*1.3;
% ylim=([0 Lim])

xticklabels({'C','6%','12%','18%','25%','50%','75%','100%'})
xticks([1 :8])
xlabel('Sst Activation' )
ylabel('Sst Firing Rates (Hz)')
box off
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16,'FontWeight','normal')

%
hold on
XX=1:1:8;
YY=p2(1)*XX+p2(2);

[r p] = corrcoef([0 6 12 18 25 50 75 100],Med)

plot(YY,'LineWidth',1.3,'Color',"#D95319")
%ylim=([0 Lim])
%
t=text(1, 80, ['Y=' num2str(p2(1,1)), '*X+' num2str(p2(1,2)) , '\newline', 'r=' num2str(r(1,2)),'\newline', 'p=' num2str(p(1,2)) ], 'FontSize', 8);

% t=text(1, 90, ['Y = ' num2str(p2(1,1)), ' * X + ' num2str(p2(1,2)) ],'FontSize', 8);
% t=text(1, 85, ['r  = ' num2str(r(1,2))],'FontSize', 8);
% t=text(1, 80, ['p = ' num2str(p(1,2))],'FontSize', 8);

%

% hold on
% XX=1:1:8;
% YY=p2(1)*XX+p2(2);

%
[h_06,p_06] = ttest2(A_C,A_06)
[h_12,p_12] = ttest2(A_C,A_12)
[h_18,p_18] = ttest2(A_C,A_18)
[h_25,p_25] = ttest2(A_C,A_25)
[h_50,p_50] = ttest2(A_C,A_50)
[h_75,p_75] = ttest2(A_C,A_75)
[h_100,p_100] = ttest2(A_C,A_100)


H_Act_06 = h_06
P_Act_06 = p_06

H_Act_12 = h_12
P_Act_12 = p_12

H_Act_18 = h_18
P_Act_18 = p_18

H_Act_25 = h_25
P_Act_25 = p_25

H_Act_50 = h_50
P_Act_50 = p_50

H_Act_75 = h_75
P_Act_75 = p_75

H_Act_100 = h_100
P_Act_100 = p_100


yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.50)])
xt = get(gca, 'XTick');

hold on
if h_06==1 
plot(xt([1 2]), [1 1]*max(yt)*1.36, '-k')%,  mean(xt([1 2])), max(yt)*1.121, '*k')
end

hold on
if h_12==1 
plot(xt([1 3]), [1 1]*max(yt)*1.37, '-k')%,  mean(xt([1 3])), max(yt)*1.18, '*k')
end

hold on
if h_18==1 
plot(xt([1 4]), [1 1]*max(yt)*1.38, '-k')%,  mean(xt([1 4])), max(yt)*1.18, '*k')
end

hold on
if h_25==1 
plot(xt([1 5]), [1 1]*max(yt)*1.39, '-k')%,  mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_50==1
hold on
plot(xt([1 6]), [1 1]*max(yt)*1.40, '-k')  %mean(xt([1 3])), max(yt)*1.16, '*k')
end

if h_75==1
hold on
plot(xt([1 7]), [1 1]*max(yt)*1.41, '-k')  %mean(xt([1 4])), max(yt)*1.17, '*k')
end

if h_100==1
hold on
plot(xt([1 8]), [1 1]*max(yt)*1.42, '-k', mean(xt([1 8])), max(yt)*1.45, '*k')
end

%
mean0 = mean(A_C);
plot(1,mean0,'*','Color','g'); hold on

mean1 = mean(A_06);
plot(2,mean1,'*','Color','g'); hold on;

mean2 = mean(A_12);
plot(3,mean2,'*','Color','g'); hold on;

mean3 = mean(A_18);
plot(4,mean3,'*','Color','g'); hold on;

mean4 = mean(A_25);
plot(5,mean4,'*','Color','g'); hold on;

mean5 = mean(A_50);
plot(6,mean5,'*','Color','g'); hold on;

mean6 = mean(A_75);
plot(7,mean6,'*','Color','g'); hold on;

mean7 = mean(A_100);
plot(8,mean7,'*','Color','g'); hold on;

hold on
%
set(1,'renderer','painters')
saveas(gca,sprintf('Sst_Act_U_L.tif'));
saveas(gca,sprintf('Sst_Act_U_L.fig'));
saveas(gca,sprintf('Sst_Act_U_L.png'));
saveas(gca,sprintf('Sst_Act_U_L.eps','psc2'));

%%
A_C  =  Avg_C;
A_06 =  Avg_Sst_DeAct_06P;
A_12 =  Avg_Sst_DeAct_12P
A_18 =  Avg_Sst_DeAct_18P
A_25 =  Avg_Sst_DeAct_25P
A_50 =  Avg_Sst_DeAct_50P
A_75 =  Avg_Sst_DeAct_75P
A_100 = Avg_Sst_DeAct_100P
%%
%% kruskalwallis Test
Group(1:1:length(A_C),1) = A_C;
Group(1:length(A_06),2) = A_06; 
Group(1:length(A_12),3) = A_12; 
Group(1:length(A_18),4) = A_18; 

Group(1:length(A_25),5) = A_25; 
Group(1:length(A_50),6) = A_50; 
Group(1:length(A_75),7) = A_75; 
Group(1:length(A_100),8) = A_100; 

figure
kruskalwallis(Group)
%
figure
[p,tbl,stats] = kruskalwallis(Group,[],'off')
[c,m,h,nms] = multcompare(stats);
c1=zeros(28,7);
c1=c;
c1(1,7)=p;
c1(2:end,7)=NaN;
CC = array2table(c1)
%PP= array2table(p)
CC.Properties.VariableNames(1:7) = {'1st group','2nd group','Lower (95% confidence)','diff. est. group means','Upper (95% confidence)','P-values','P-value(all)'}
%
save FR_L_Sst_Sst_Mod_DeAct_KW_St.mat p tbl stats c m h nms
filename = 'FR_L_Sst_Sst_Mod_DeAct_KW_St.xlsx';
%writematrix(c,filename,'Sheet',1,'Range','D1')
writetable(CC,filename,'Sheet',1,'Range','D1')
%writetable(PP,filename,'Sheet',1,'Range','J2')
%%
h=figure

boxplot([A_C', A_06', A_12', A_18', A_25', A_50', A_75', A_100'   ])
%
hold on;
med = median(A_C);
%plot(1,med,'ro-','Color','k'); hold on
med1 = median(A_06);
med2 = median(A_12);
med3 = median(A_18);
med4 = median(A_25);
med5 = median(A_50);
med6 = median(A_75);
med7 = median(A_100);

Med=[med med1 med2 med3 med4 med5 med6 med7 ];
save Med_FR_Sst_Sst_DeAct.mat Med

% 
close all
figure
x11 = 1:8;
y11 = Med;
scatter(x11,y11,25,'LineWidth',2);
%
lh = lsline; 
p2 = polyfit(get(lh,'xdata'),get(lh,'ydata'),1)
boxplot([A_C', A_06', A_12', A_18', A_25', A_50', A_75', A_100'   ],'Symbol', 'o','OutlierSize',2)

xticklabels({'C','6%','12%','18%','25%','50%','75%','100%'})
xticks([1 :8])
% xlabel('Sst Activation' )
% ylabel('Sst Firing Rates (Hz)')
box off
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16,'FontWeight','normal')

%
hold on
XX=1:1:8;
YY=p2(1)*XX+p2(2);

[r p] = corrcoef([0 6 12 18 25 50 75 100],Med)

plot(YY,'LineWidth',1.3,'Color',"#D95319")
%ylim=([0 Lim])
%
t=text(1, 32, ['Y=' num2str(p2(1,1)), '*X+' num2str(p2(1,2)) , '\newline', 'r=' num2str(r(1,2)),'\newline', 'p=' num2str(p(1,2)) ], 'FontSize', 8);

% t=text(1, 2, ['Y = ' num2str(p2(1,1)), ' * X + ' num2str(p2(1,2)) ],'FontSize', 8);
% t=text(1, 1.5, ['r  = ' num2str(r(1,2))],'FontSize', 8);
% t=text(1, 1, ['p = ' num2str(p(1,2))],'FontSize', 8);
%
xticklabels({'C','6%','12%','18%','25%','50%','75%','100%'})
xticks([1 :8])
%lineOut.Parent.Xticks.String = '0 ';
% lineOut.Parent.YLabel.String = 'Sst Firing Rates (Hz)';
% lineOut.Parent.FontSize = 20;
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16,'FontWeight','normal')

%xticks([ 1 2 3 4 5 6 7 8 ])
%xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%' }) %'Sst_DeAct 6%'; 'Sst_DeAct 12%'; 'Sst_DeAct 18%'; 'Sst_DeAct 25%'; 'Sst_DeAct 50%'; 'Sst_DeAct 75%'; 'Sst_DeAct 100%'})
%title('Sst_A_c_t')
xlabel('Sst Suppression' )
ylabel('Sst Firing Rates (Hz)')
box off

%set(gcf, 'Units', 'Inches', 'Position', [1, 1, 8, 8], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
%saveas(h,sprintf('FIG.eps'));
%
[h_06,p_06] = ttest2(A_C,A_06)
[h_12,p_12] = ttest2(A_C,A_12)
[h_18,p_18] = ttest2(A_C,A_18)
[h_25,p_25] = ttest2(A_C,A_25)
[h_50,p_50] = ttest2(A_C,A_50)
[h_75,p_75] = ttest2(A_C,A_75)
[h_100,p_100] = ttest2(A_C,A_100)


H_DeAct_06 = h_06
P_DeAct_06 = p_06

H_DeAct_12 = h_12
P_DeAct_12 = p_12

H_DeAct_18 = h_18
P_DeAct_18 = p_18

H_DeAct_25 = h_25
P_DeAct_25 = p_25

H_DeAct_50 = h_50
P_DeAct_50 = p_50

H_DeAct_75 = h_75
P_DeAct_75 = p_75

H_DeAct_100 = h_100
P_DeAct_100 = p_100


yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.18)])
xt = get(gca, 'XTick');

hold on
if h_06==1 
plot(xt([1 2]), [1 1]*max(yt)*1.120, '-k')%,  mean(xt([1 2])), max(yt)*1.121, '*k')
end

hold on
if h_12==1 
plot(xt([1 3]), [1 1]*max(yt)*1.125, '-k')%,  mean(xt([1 3])), max(yt)*1.18, '*k')
end

hold on
if h_18==1 
plot(xt([1 4]), [1 1]*max(yt)*1.130, '-k')%,  mean(xt([1 4])), max(yt)*1.18, '*k')
end

hold on
if h_25==1 
plot(xt([1 5]), [1 1]*max(yt)*1.135, '-k')%,  mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_50==1
hold on
plot(xt([1 6]), [1 1]*max(yt)*1.140, '-k')  %mean(xt([1 3])), max(yt)*1.16, '*k')
end

if h_75==1
hold on
plot(xt([1 7]), [1 1]*max(yt)*1.145, '-k')  %mean(xt([1 4])), max(yt)*1.17, '*k')
end

if h_100==1
hold on
plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k', mean(xt([1 8])), max(yt)*1.17, '*k')
end

%
mean0 = mean(A_C);
plot(1,mean0,'*','Color','g'); hold on

mean1 = mean(A_06);
plot(2,mean1,'*','Color','g'); hold on;

mean2 = mean(A_12);
plot(3,mean2,'*','Color','g'); hold on;

mean3 = mean(A_18);
plot(4,mean3,'*','Color','g'); hold on;

mean4 = mean(A_25);
plot(5,mean4,'*','Color','g'); hold on;

mean5 = mean(A_50);
plot(6,mean5,'*','Color','g'); hold on;

mean6 = mean(A_75);
plot(7,mean6,'*','Color','g'); hold on;

mean7 = mean(A_100);
plot(8,mean7,'*','Color','g'); hold on;

hold on
%
set(1,'renderer','painters')
saveas(gca,sprintf('Sst_DeAct_U_L.tif'));
saveas(gca,sprintf('Sst_DeAct_U_L.fig'));
saveas(gca,sprintf('Sst_DeAct_U_L.png'));
saveas(gca,sprintf('Sst_DeAct_U_L.eps','psc2'));
%%

%% H_DeAct_06

% Define the data
data = [H_Act_06, P_Act_06; H_Act_12, P_Act_12; H_Act_18, P_Act_18; H_Act_25, P_Act_25; H_Act_50, P_Act_50; H_Act_75, P_Act_75; H_Act_100, P_Act_100; ...
        H_DeAct_06, P_DeAct_06; H_DeAct_12, P_DeAct_12; H_DeAct_18, P_DeAct_18; H_DeAct_25, P_DeAct_25; H_DeAct_50, P_DeAct_50; H_DeAct_75, P_DeAct_75; H_DeAct_100, P_DeAct_100];

% Define row names
rowNames = {'Act_6%', 'Act_12%', 'Act_18%', 'Act_25%', 'Act_50%', 'Act_75%', 'Act_100%', ...
            'DeAct_6%', 'DeAct_12%', 'DeAct_18%', 'DeAct_25%', 'DeAct_50%', 'DeAct_75%', 'DeAct_100%'};

% Combine data and row names into a table
results = array2table(data, 'VariableNames', {'h_value', 'p_value'}, 'RowNames', rowNames);

% Specify the file name
fileName = 'FR_Sst_Sst_Mod.xlsx';

% Write the table to an Excel file
writetable(results, fileName, 'WriteRowNames', true);

fprintf('Data saved to %s with row names included.\n', fileName);


