clear
clc
close all


Cell_NUM = 70;

run Cell_IDs.m
%Cell_Number=254 ; %P3
%Cell_Number=266 ;
%Cell_Number=278 ;

global Cell_Number;
global H_C;
global H_PV_Act_06P;
global H_PV_Act_12P;
global H_PV_Act_18P;
global H_PV_Act_25P;
global H_PV_Act_50P;
global H_PV_Act_75P;
global H_PV_Act_100P;
global H_PV_DeAct;
global H_PV_DeAct_06P;
global H_PV_DeAct_12P;
global H_PV_DeAct_18P;
global H_PV_DeAct_25P;
global H_PV_DeAct_50P;
global H_PV_DeAct_75P;
global H_PV_DeAct_100P;


global skipNum;


H_C = zeros(510,1);
H_PV_Act_06P = zeros(510,1);
H_PV_Act_12P = zeros(510,1);
H_PV_Act_18P = zeros(510,1);
H_PV_Act_25P = zeros(510,1);
H_PV_Act_50P = zeros(510,1);
H_PV_Act_75P = zeros(510,1);
H_PV_Act_100P = zeros(510,1);
H_PV_DeAct = zeros(510,1);
H_PV_DeAct_06P = zeros(510,1);
H_PV_DeAct_12P = zeros(510,1);
H_PV_DeAct_18P = zeros(510,1);
H_PV_DeAct_25P = zeros(510,1);
H_PV_DeAct_50P = zeros(510,1);
H_PV_DeAct_75P = zeros(510,1);
H_PV_DeAct_100P = zeros(510,1);

PYRs=PYRs';
Trial=8;

load('All_cells_Control.mat')
Firings_Control_1 = All_cells_Control;

load('All_cells_PV_Act_06P.mat')
All_cells_PV_Act_06P=All_cells_Control;

load('All_cells_PV_Act_12P.mat')
All_cells_PV_Act_12P=All_cells_Control;

load('All_cells_PV_Act_18P.mat')
All_cells_PV_Act_18P=All_cells_Control;

load('All_cells_PV_Act_25P.mat')
All_cells_PV_Act_25P=All_cells_Control;

load('All_cells_PV_Act_50P.mat')
All_cells_PV_Act_50P=All_cells_Control;

load('All_cells_PV_Act_75P.mat')
All_cells_PV_Act_75P=All_cells_Control;

load('All_cells_PV_Act_100P.mat')
All_cells_PV_Act_100P=All_cells_Control;

% load('All_cells_PV_DeAct.mat')
% All_cells_PV_DeAct=All_cells_PV_DeAct;

load('All_cells_PV_DeAct_06P.mat')
All_cells_PV_DeAct_06P=All_cells_Control;

load('All_cells_PV_DeAct_12P.mat')
All_cells_PV_DeAct_12P=All_cells_Control;

load('All_cells_PV_DeAct_18P.mat')
All_cells_PV_DeAct_18P=All_cells_Control;

load('All_cells_PV_DeAct_25P.mat')
All_cells_PV_DeAct_25P=All_cells_Control;

load('All_cells_PV_DeAct_50P.mat')
All_cells_PV_DeAct_50P=All_cells_Control;

load('All_cells_PV_DeAct_75P.mat')
All_cells_PV_DeAct_75P=All_cells_Control;

load('All_cells_PV_DeAct_100P.mat')
All_cells_PV_DeAct_100P=All_cells_Control;
%%
% %Cell_Number=254 ; %P3
% %Cell_Number=266 ;
% %Cell_Number=278 ;
% 
% 
% %Cell_Number=286 ;
% Cell_Number=311 ; % PYR L4 P2 90 degrees
% %Cell_Number=335 ;
% 
% %Cell_Number=350 ; %P1
% %Cell_Number=362 ;
% %Cell_Number=374 ;
% 
% %Cell_Number=32 ;
% %Cell_Number=57 ;  % L6
% %Cell_Number=81 ;      %  interesting
global Cell_Number;


skipNum = [86,510]; %[24,506,PV,Sst];
%
for Cell_Number = Cell_NUM %PVs %1:510 % Number of Cells to be Analysed 
    if ~ismember(Cell_Number,skipNum) % if i is not a member of the skipNum array 
       
   Cell_Number

%h=figure;
%Firings_Control = All_cells_Control(:,PYRs);
Firings_Control = Firings_Control_1(:,Cell_Number);
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

%SEM = std(BB_Control) / sqrt(N);                    % Standard Error Of The Mean
%CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;
%%
Firings_PV_Act_06P = All_cells_PV_Act_06P(:,Cell_Number);
%
F_PV_Act_06P=cell2mat(Firings_PV_Act_06P);
%
FB_PV_Act_06P(1,:,:)=F_PV_Act_06P(1:17,:);
FB_PV_Act_06P(2,:,:)=F_PV_Act_06P(18:34,:);
FB_PV_Act_06P(3,:,:)=F_PV_Act_06P(35:51,:);
FB_PV_Act_06P(4,:,:)=F_PV_Act_06P(52:68,:);

FB_PV_Act_06P(5,:,:)=F_PV_Act_06P(69:85,:);
FB_PV_Act_06P(6,:,:)=F_PV_Act_06P(86:102,:);
FB_PV_Act_06P(7,:,:)=F_PV_Act_06P(103:119,:);
FB_PV_Act_06P(8,:,:)=F_PV_Act_06P(120:136,:);

BB_PV_Act_06P=mean(FB_PV_Act_06P,3);
%%
Firings_PV_Act_12P = All_cells_PV_Act_12P(:,Cell_Number);
%
F_PV_Act_12P=cell2mat(Firings_PV_Act_12P);
%
FB_PV_Act_12P(1,:,:)=F_PV_Act_12P(1:17,:);
FB_PV_Act_12P(2,:,:)=F_PV_Act_12P(18:34,:);
FB_PV_Act_12P(3,:,:)=F_PV_Act_12P(35:51,:);
FB_PV_Act_12P(4,:,:)=F_PV_Act_12P(52:68,:);

FB_PV_Act_12P(5,:,:)=F_PV_Act_12P(69:85,:);
FB_PV_Act_12P(6,:,:)=F_PV_Act_12P(86:102,:);
FB_PV_Act_12P(7,:,:)=F_PV_Act_12P(103:119,:);
FB_PV_Act_12P(8,:,:)=F_PV_Act_12P(120:136,:);

BB_PV_Act_12P=mean(FB_PV_Act_12P,3);
%%
Firings_PV_Act_18P = All_cells_PV_Act_18P(:,Cell_Number);
%
F_PV_Act_18P=cell2mat(Firings_PV_Act_18P);
%
FB_PV_Act_18P(1,:,:)=F_PV_Act_18P(1:17,:);
FB_PV_Act_18P(2,:,:)=F_PV_Act_18P(18:34,:);
FB_PV_Act_18P(3,:,:)=F_PV_Act_18P(35:51,:);
FB_PV_Act_18P(4,:,:)=F_PV_Act_18P(52:68,:);

FB_PV_Act_18P(5,:,:)=F_PV_Act_18P(69:85,:);
FB_PV_Act_18P(6,:,:)=F_PV_Act_18P(86:102,:);
FB_PV_Act_18P(7,:,:)=F_PV_Act_18P(103:119,:);
FB_PV_Act_18P(8,:,:)=F_PV_Act_18P(120:136,:);

BB_PV_Act_18P=mean(FB_PV_Act_18P,3);

%%
Firings_PV_Act_25P = All_cells_PV_Act_25P(:,Cell_Number);
%
F_PV_Act_25P=cell2mat(Firings_PV_Act_25P);
%
FB_PV_Act_25P(1,:,:)=F_PV_Act_25P(1:17,:);
FB_PV_Act_25P(2,:,:)=F_PV_Act_25P(18:34,:);
FB_PV_Act_25P(3,:,:)=F_PV_Act_25P(35:51,:);
FB_PV_Act_25P(4,:,:)=F_PV_Act_25P(52:68,:);

FB_PV_Act_25P(5,:,:)=F_PV_Act_25P(69:85,:);
FB_PV_Act_25P(6,:,:)=F_PV_Act_25P(86:102,:);
FB_PV_Act_25P(7,:,:)=F_PV_Act_25P(103:119,:);
FB_PV_Act_25P(8,:,:)=F_PV_Act_25P(120:136,:);

BB_PV_Act_25P=mean(FB_PV_Act_25P,3);
%
% x = 1:17; 
% N = size(BB_PV_Act_25P,1);
% y = mean(BB_PV_Act_25P);
% SEM = std(BB_PV_Act_25P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%errorbar(x, y, CI95,'o','LineWidth',3);
%grid off
%hold on;
%%
Firings_PV_Act_50P = All_cells_PV_Act_50P(:,Cell_Number);
%
F_PV_Act_50P=cell2mat(Firings_PV_Act_50P);
%
FB_PV_Act_50P(1,:,:)=F_PV_Act_50P(1:17,:);
FB_PV_Act_50P(2,:,:)=F_PV_Act_50P(18:34,:);
FB_PV_Act_50P(3,:,:)=F_PV_Act_50P(35:51,:);
FB_PV_Act_50P(4,:,:)=F_PV_Act_50P(52:68,:);

FB_PV_Act_50P(5,:,:)=F_PV_Act_50P(69:85,:);
FB_PV_Act_50P(6,:,:)=F_PV_Act_50P(86:102,:);
FB_PV_Act_50P(7,:,:)=F_PV_Act_50P(103:119,:);
FB_PV_Act_50P(8,:,:)=F_PV_Act_50P(120:136,:);

BB_PV_Act_50P=mean(FB_PV_Act_50P,3);
%
% x = 1:17; 
% N = size(BB_PV_Act_50P,1);
% y = mean(BB_PV_Act_50P);
% SEM = std(BB_PV_Act_50P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;
%%
Firings_PV_Act_75P = All_cells_PV_Act_75P(:,Cell_Number);
%
F_PV_Act_75P=cell2mat(Firings_PV_Act_75P);
%
FB_PV_Act_75P(1,:,:)=F_PV_Act_75P(1:17,:);
FB_PV_Act_75P(2,:,:)=F_PV_Act_75P(18:34,:);
FB_PV_Act_75P(3,:,:)=F_PV_Act_75P(35:51,:);
FB_PV_Act_75P(4,:,:)=F_PV_Act_75P(52:68,:);

FB_PV_Act_75P(5,:,:)=F_PV_Act_75P(69:85,:);
FB_PV_Act_75P(6,:,:)=F_PV_Act_75P(86:102,:);
FB_PV_Act_75P(7,:,:)=F_PV_Act_75P(103:119,:);
FB_PV_Act_75P(8,:,:)=F_PV_Act_75P(120:136,:);

BB_PV_Act_75P=mean(FB_PV_Act_75P,3);
%
% x = 1:17; 
% N = size(BB_PV_Act_75P,1);
% y = mean(BB_PV_Act_75P);
% SEM = std(BB_PV_Act_75P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;

%%
Firings_PV_Act_100P = All_cells_PV_Act_100P(:,Cell_Number);
%
F_PV_Act_100P=cell2mat(Firings_PV_Act_100P);
%
FB_PV_Act_100P(1,:,:)=F_PV_Act_100P(1:17,:);
FB_PV_Act_100P(2,:,:)=F_PV_Act_100P(18:34,:);
FB_PV_Act_100P(3,:,:)=F_PV_Act_100P(35:51,:);
FB_PV_Act_100P(4,:,:)=F_PV_Act_100P(52:68,:);

FB_PV_Act_100P(5,:,:)=F_PV_Act_100P(69:85,:);
FB_PV_Act_100P(6,:,:)=F_PV_Act_100P(86:102,:);
FB_PV_Act_100P(7,:,:)=F_PV_Act_100P(103:119,:);
FB_PV_Act_100P(8,:,:)=F_PV_Act_100P(120:136,:);

BB_PV_Act_100P=mean(FB_PV_Act_100P,3);
%
% x = 1:17; 
% N = size(BB_PV_Act_100P,1);
% y = mean(BB_PV_Act_100P);
% SEM = std(BB_PV_Act_100P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;
%%
% Firings_PV_DeAct = All_cells_PV_DeAct(:,Cell_Number);
% %
% F_PV_DeAct=cell2mat(Firings_PV_DeAct);
% %
% FB_PV_DeAct(1,:,:)=F_PV_DeAct(1:17,:);
% FB_PV_DeAct(2,:,:)=F_PV_DeAct(18:34,:);
% FB_PV_DeAct(3,:,:)=F_PV_DeAct(35:51,:);
% FB_PV_DeAct(4,:,:)=F_PV_DeAct(52:68,:);
% 
% FB_PV_DeAct(5,:,:)=F_PV_DeAct(69:85,:);
% FB_PV_DeAct(6,:,:)=F_PV_DeAct(86:102,:);
% FB_PV_DeAct(7,:,:)=F_PV_DeAct(103:119,:);
% FB_PV_DeAct(8,:,:)=F_PV_DeAct(120:136,:);
% 
% BB_PV_DeAct=mean(FB_PV_DeAct,3);
%
% x = 1:17; 
% N = size(BB_PV_DeAct,1);
% y = mean(BB_PV_DeAct);
% SEM = std(BB_PV_DeAct) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;
%%
%%
Firings_PV_DeAct_06P = All_cells_PV_DeAct_06P(:,Cell_Number);
%
F_PV_DeAct_06P=cell2mat(Firings_PV_DeAct_06P);
%
FB_PV_DeAct_06P(1,:,:)=F_PV_DeAct_06P(1:17,:);
FB_PV_DeAct_06P(2,:,:)=F_PV_DeAct_06P(18:34,:);
FB_PV_DeAct_06P(3,:,:)=F_PV_DeAct_06P(35:51,:);
FB_PV_DeAct_06P(4,:,:)=F_PV_DeAct_06P(52:68,:);

FB_PV_DeAct_06P(5,:,:)=F_PV_DeAct_06P(69:85,:);
FB_PV_DeAct_06P(6,:,:)=F_PV_DeAct_06P(86:102,:);
FB_PV_DeAct_06P(7,:,:)=F_PV_DeAct_06P(103:119,:);
FB_PV_DeAct_06P(8,:,:)=F_PV_DeAct_06P(120:136,:);

BB_PV_DeAct_06P=mean(FB_PV_DeAct_06P,3);
%%
Firings_PV_DeAct_12P = All_cells_PV_DeAct_12P(:,Cell_Number);
%
F_PV_DeAct_12P=cell2mat(Firings_PV_DeAct_12P);
%
FB_PV_DeAct_12P(1,:,:)=F_PV_DeAct_12P(1:17,:);
FB_PV_DeAct_12P(2,:,:)=F_PV_DeAct_12P(18:34,:);
FB_PV_DeAct_12P(3,:,:)=F_PV_DeAct_12P(35:51,:);
FB_PV_DeAct_12P(4,:,:)=F_PV_DeAct_12P(52:68,:);

FB_PV_DeAct_12P(5,:,:)=F_PV_DeAct_12P(69:85,:);
FB_PV_DeAct_12P(6,:,:)=F_PV_DeAct_12P(86:102,:);
FB_PV_DeAct_12P(7,:,:)=F_PV_DeAct_12P(103:119,:);
FB_PV_DeAct_12P(8,:,:)=F_PV_DeAct_12P(120:136,:);

BB_PV_DeAct_12P=mean(FB_PV_DeAct_12P,3);
%%
Firings_PV_DeAct_18P = All_cells_PV_DeAct_18P(:,Cell_Number);
%
F_PV_DeAct_18P=cell2mat(Firings_PV_DeAct_18P);
%
FB_PV_DeAct_18P(1,:,:)=F_PV_DeAct_18P(1:17,:);
FB_PV_DeAct_18P(2,:,:)=F_PV_DeAct_18P(18:34,:);
FB_PV_DeAct_18P(3,:,:)=F_PV_DeAct_18P(35:51,:);
FB_PV_DeAct_18P(4,:,:)=F_PV_DeAct_18P(52:68,:);

FB_PV_DeAct_18P(5,:,:)=F_PV_DeAct_18P(69:85,:);
FB_PV_DeAct_18P(6,:,:)=F_PV_DeAct_18P(86:102,:);
FB_PV_DeAct_18P(7,:,:)=F_PV_DeAct_18P(103:119,:);
FB_PV_DeAct_18P(8,:,:)=F_PV_DeAct_18P(120:136,:);

BB_PV_DeAct_18P=mean(FB_PV_DeAct_18P,3);

%%
Firings_PV_DeAct_25P = All_cells_PV_DeAct_25P(:,Cell_Number);
%
F_PV_DeAct_25P=cell2mat(Firings_PV_DeAct_25P);
%
FB_PV_DeAct_25P(1,:,:)=F_PV_DeAct_25P(1:17,:);
FB_PV_DeAct_25P(2,:,:)=F_PV_DeAct_25P(18:34,:);
FB_PV_DeAct_25P(3,:,:)=F_PV_DeAct_25P(35:51,:);
FB_PV_DeAct_25P(4,:,:)=F_PV_DeAct_25P(52:68,:);

FB_PV_DeAct_25P(5,:,:)=F_PV_DeAct_25P(69:85,:);
FB_PV_DeAct_25P(6,:,:)=F_PV_DeAct_25P(86:102,:);
FB_PV_DeAct_25P(7,:,:)=F_PV_DeAct_25P(103:119,:);
FB_PV_DeAct_25P(8,:,:)=F_PV_DeAct_25P(120:136,:);

BB_PV_DeAct_25P=mean(FB_PV_DeAct_25P,3);
%
% x = 1:17; 
% N = size(BB_PV_DeAct_25P,1);
% y = mean(BB_PV_DeAct_25P);
% SEM = std(BB_PV_DeAct_25P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%errorbar(x, y, CI95,'o','LineWidth',3);
%grid off
%hold on;
%%
Firings_PV_DeAct_50P = All_cells_PV_DeAct_50P(:,Cell_Number);
%
F_PV_DeAct_50P=cell2mat(Firings_PV_DeAct_50P);
%
FB_PV_DeAct_50P(1,:,:)=F_PV_DeAct_50P(1:17,:);
FB_PV_DeAct_50P(2,:,:)=F_PV_DeAct_50P(18:34,:);
FB_PV_DeAct_50P(3,:,:)=F_PV_DeAct_50P(35:51,:);
FB_PV_DeAct_50P(4,:,:)=F_PV_DeAct_50P(52:68,:);

FB_PV_DeAct_50P(5,:,:)=F_PV_DeAct_50P(69:85,:);
FB_PV_DeAct_50P(6,:,:)=F_PV_DeAct_50P(86:102,:);
FB_PV_DeAct_50P(7,:,:)=F_PV_DeAct_50P(103:119,:);
FB_PV_DeAct_50P(8,:,:)=F_PV_DeAct_50P(120:136,:);

BB_PV_DeAct_50P=mean(FB_PV_DeAct_50P,3);
%
% x = 1:17; 
% N = size(BB_PV_DeAct_50P,1);
% y = mean(BB_PV_DeAct_50P);
% SEM = std(BB_PV_DeAct_50P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;
%%
Firings_PV_DeAct_75P = All_cells_PV_DeAct_75P(:,Cell_Number);
%
F_PV_DeAct_75P=cell2mat(Firings_PV_DeAct_75P);
%
FB_PV_DeAct_75P(1,:,:)=F_PV_DeAct_75P(1:17,:);
FB_PV_DeAct_75P(2,:,:)=F_PV_DeAct_75P(18:34,:);
FB_PV_DeAct_75P(3,:,:)=F_PV_DeAct_75P(35:51,:);
FB_PV_DeAct_75P(4,:,:)=F_PV_DeAct_75P(52:68,:);

FB_PV_DeAct_75P(5,:,:)=F_PV_DeAct_75P(69:85,:);
FB_PV_DeAct_75P(6,:,:)=F_PV_DeAct_75P(86:102,:);
FB_PV_DeAct_75P(7,:,:)=F_PV_DeAct_75P(103:119,:);
FB_PV_DeAct_75P(8,:,:)=F_PV_DeAct_75P(120:136,:);

BB_PV_DeAct_75P=mean(FB_PV_DeAct_75P,3);
%
% x = 1:17; 
% N = size(BB_PV_DeAct_75P,1);
% y = mean(BB_PV_DeAct_75P);
% SEM = std(BB_PV_DeAct_75P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;

%%
Firings_PV_DeAct_100P = All_cells_PV_DeAct_100P(:,Cell_Number);
%
F_PV_DeAct_100P=cell2mat(Firings_PV_DeAct_100P);
%
FB_PV_DeAct_100P(1,:,:)=F_PV_DeAct_100P(1:17,:);
FB_PV_DeAct_100P(2,:,:)=F_PV_DeAct_100P(18:34,:);
FB_PV_DeAct_100P(3,:,:)=F_PV_DeAct_100P(35:51,:);
FB_PV_DeAct_100P(4,:,:)=F_PV_DeAct_100P(52:68,:);

FB_PV_DeAct_100P(5,:,:)=F_PV_DeAct_100P(69:85,:);
FB_PV_DeAct_100P(6,:,:)=F_PV_DeAct_100P(86:102,:);
FB_PV_DeAct_100P(7,:,:)=F_PV_DeAct_100P(103:119,:);
FB_PV_DeAct_100P(8,:,:)=F_PV_DeAct_100P(120:136,:);

BB_PV_DeAct_100P=mean(FB_PV_DeAct_100P,3);
%
% x = 1:17; 
% N = size(BB_PV_DeAct_100P,1);
% y = mean(BB_PV_DeAct_100P);
% SEM = std(BB_PV_DeAct_100P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;
%%

    end
end
%%



plot(FB_C(1,:),'o')

%%
P_One_Act = [
FB_C;    
FB_PV_Act_06P;
FB_PV_Act_12P;
FB_PV_Act_18P;
FB_PV_Act_25P;
FB_PV_Act_50P;
FB_PV_Act_75P;
FB_PV_Act_100P];

P_One_DeAct = [
FB_C;
FB_PV_DeAct_06P;
FB_PV_DeAct_12P;
FB_PV_DeAct_18P;
FB_PV_DeAct_25P;
FB_PV_DeAct_50P;
FB_PV_DeAct_75P;
FB_PV_DeAct_100P;
];

figure;
imagesc(P_One_Act)
title('Act')
figure;
imagesc(P_One_DeAct)
title('DeAct')
%%
% P_One_Act_2 = [
% FB_C;    
% FB_PV_Act_50P]
% imagesc(P_One_Act_2)
figure;
plot(P_One_Act,'o')
title('Act')

figure;
plot(P_One_DeAct,'o')
title('DeAct')
%%

