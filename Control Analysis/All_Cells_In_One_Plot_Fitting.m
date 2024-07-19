clc
clear
%close all

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

%Cell_Number=286 ;
%Cell_Number=311 ; % PYR L4 P2 90 degrees

%Cell_Number=335 ;
HWHH_C = zeros; %zeros(1,3);
HWHH_PV_Act_06P = zeros; % zeros (1,3);
HWHH_PV_Act_12P = zeros; % zeros (1,3);
HWHH_PV_Act_18P = zeros; % zeros (1,3);
HWHH_PV_Act_25P = zeros; % zeros (1,3);
HWHH_PV_Act_50P = zeros;
HWHH_PV_Act_75P = zeros;
HWHH_PV_Act_100P = zeros;
HWHH_PV_DeAct = zeros;

% for i = 1:12951;
%    if ~ismember(i,skipNum) % if i is not a member of the skipNum array 
%        frame = i;
%        % further work your magic
%    end
% end
run Cell_IDs.m
PYRs=PYRs';
Trial=8;

load('All_cells_Control.mat')
% 

 writerObj = VideoWriter('C','MPEG-4');
 writerObj.FrameRate = 3; % 1 Slow 60 Fast
 open(writerObj);
% 
 F1=figure;
skipNum = [86,510]; %[24,506,PV,Sst];
% pause (2)
for Cell_Number = VIP %VIP %Sst %PVs %1:10 %PYRs %PVs %1:510 % Number of Cells to be Analysed  334
    if ~ismember(Cell_Number,skipNum) % if i is not a member of the skipNum array 

clc
run Cell_IDs.m
PYRs=PYRs';
Trial=8;

load('All_cells_Control.mat')
global Cell_Number;

% NEW April
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

% xx=1:17;
% %figure;
% % 
% BB_Control(isnan(BB_Control))=0;
% yy=mean(BB_Control);
% [f_PYRs_C, gof_PYRs_C] = fit(xx.',yy.','gauss1');
% %P1=plot(f_PYRs_C);
% hold on;

% x = 1:17; 
% N = size(BB_Control,1);
%  y = mean(BB_Control);
% SEM = std(BB_Control) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'o','LineWidth',3)
% grid off
% hold on;

if find(Cell_Number==PVs)
     Ce='PV';
    elseif  find(Cell_Number==Sst)
         Ce='Sst';
            elseif  find(Cell_Number==VIP)
                Ce='VIP';
                    elseif find(Cell_Number==PYRs)
                        Ce='PYRs';
end

%title ([Ce, '  Cell ID: ', num2str(Cell_Number)])


%%
% f_PYRs_C.a1=1
% f_PYRs_PV_Act.a1=1

% figure
% plot(f_PYRs_C,'b')
% hold on;
% plot(f_PYRs_PV_Act,'r')

%% NEW
% X=1:0.01:17;
%      %Coefficients:
% if nonzeros(BB_Control)      
% A1 = f_PYRs_C.a1;  %        
% B1 = f_PYRs_C.b1; %    5.54
% C1 = f_PYRs_C.c1;  %   0.9677
% else 
% A1=0;
% B1=0;
% C1=0;
% end
% F_PYRs_C =  A1*exp(-((X-B1)/C1).^2);

 
% figure
%  plot(F_PYRs_C)
%  hold on;
 %%
% if nonzeros(BB_PV_Act_06P)
% A1 = f_PYRs_PV_Act_06P.a1;  %        
% B1 = f_PYRs_PV_Act_06P.b1; %    5.54
% C1 = f_PYRs_PV_Act_06P.c1;  %   0.9677
% else 
% A1=0;
% B1=0;
% C1=0;
% end    
% F_PYRs_PV_Act_06P =  A1*exp(-((X-B1)/C1).^2);
% 
% if nonzeros(BB_PV_Act_12P)
% A1 = f_PYRs_PV_Act_12P.a1;  %        
% B1 = f_PYRs_PV_Act_12P.b1; %    5.54
% C1 = f_PYRs_PV_Act_12P.c1;  %   0.9677
% else 
% A1=0;
% B1=0;
% C1=0;
% end    
% F_PYRs_PV_Act_12P =  A1*exp(-((X-B1)/C1).^2);

% if nonzeros(BB_PV_Act_18P)
% A1 = f_PYRs_PV_Act_18P.a1;  %        
% B1 = f_PYRs_PV_Act_18P.b1; %    5.54
% C1 = f_PYRs_PV_Act_18P.c1;  %   0.9677
% else 
% A1=0;
% B1=0;
% C1=0;
% end    
% F_PYRs_PV_Act_18P =  A1*exp(-((X-B1)/C1).^2);
%  
% if nonzeros(BB_PV_Act_25P)
% A1 = f_PYRs_PV_Act_25P.a1;  %        
% B1 = f_PYRs_PV_Act_25P.b1; %    5.54
% C1 = f_PYRs_PV_Act_25P.c1;  %   0.9677
% else 
% A1=0;
% B1=0;
% C1=0;
% end    
% F_PYRs_PV_Act_25P =  A1*exp(-((X-B1)/C1).^2);
%  
% if nonzeros(BB_PV_Act_50P)
% A1 = f_PYRs_PV_Act_50P.a1;  %        
% B1 = f_PYRs_PV_Act_50P.b1; %    5.54
% C1 = f_PYRs_PV_Act_50P.c1;  %   0.9677
% else 
% A1=0;
% B1=0;
% C1=0;
% end    
%      
% F_PYRs_PV_Act_50P =  A1*exp(-((X-B1)/C1).^2);
% 
% if nonzeros(BB_PV_Act_75P)
% A1 = f_PYRs_PV_Act_75P.a1;  %        
% B1 = f_PYRs_PV_Act_75P.b1; %    5.54
% C1 = f_PYRs_PV_Act_75P.c1;  %   0.9677
% else 
% A1=0;
% B1=0;
% C1=0;
% end    
%      
% F_PYRs_PV_Act_75P =  A1*exp(-((X-B1)/C1).^2);
% 
% if nonzeros(BB_PV_Act_100P)
% A1 = f_PYRs_PV_Act_100P.a1;  %        
% B1 = f_PYRs_PV_Act_100P.b1; %    5.54
% C1 = f_PYRs_PV_Act_100P.c1;  %   0.9677
% else 
% A1=0;
% B1=0;
% C1=0;
% end    
%      
% F_PYRs_PV_Act_100P =  A1*exp(-((X-B1)/C1).^2);

% if nonzeros(BB_PV_DeAct)
% A1 = f_PYRs_PV_DeAct.a1;  %        
% B1 = f_PYRs_PV_DeAct.b1; %    5.54
% C1 = f_PYRs_PV_DeAct.c1;  %   0.9677
% else 
% A1=0;
% B1=0;
% C1=0;
% end    
%      
% F_PYRs_PV_DeAct =  A1*exp(-((X-B1)/C1).^2);
%%
%X=1:0.01:9;
     %Coefficients:
%% NEW
% A1 = f_PYRs_C.a1;  %        
% B1 = f_PYRs_C.b1; %    5.54
% C1 = f_PYRs_C.c1;  %   0.9677
% F_PYRs_C =  A1*exp(-((X-B1)/C1).^2);
% F_PYRs_C =  F_PYRs_C/max(F_PYRs_C);
% Steps=11.25;
% HWHH_C= Steps*sqrt(log(2)) * C1;
% H_C(Cell_Number,1) = HWHH_C;
% Gof_PYRs_C(Cell_Number,1) = gof_PYRs_C;
%% 

% A1 = f_PYRs_PV_Act_06P.a1;  %        
% B1 = f_PYRs_PV_Act_06P.b1; %    5.54
% C1 = f_PYRs_PV_Act_06P.c1;  %   0.9677
% %f_PYRs_PV_Act(x) =  a1*exp(-((x-b1)/c1)^2)
% F_PYRs_PV_Act_06P =  A1*exp(-((X-B1)/C1).^2);
% F_PYRs_PV_Act_06P = F_PYRs_PV_Act_06P/max(F_PYRs_PV_Act_06P);
% Steps=11.06;
% HWHH_PV_Act_06P= Steps*sqrt(log(2)) * C1;
% H_PV_Act_06P(Cell_Number,1) = HWHH_PV_Act_06P;
% Gof_PYRs_PV_Act_06P(Cell_Number,1) = gof_PYRs_PV_Act_06P;
% 
% A1 = f_PYRs_PV_Act_12P.a1;  %        
% B1 = f_PYRs_PV_Act_12P.b1; %    5.54
% C1 = f_PYRs_PV_Act_12P.c1;  %   0.9677
% %f_PYRs_PV_Act(x) =  a1*exp(-((x-b1)/c1)^2)
% F_PYRs_PV_Act_12P =  A1*exp(-((X-B1)/C1).^2);
% F_PYRs_PV_Act_12P = F_PYRs_PV_Act_12P/max(F_PYRs_PV_Act_12P);
% Steps=11.12;
% HWHH_PV_Act_12P= Steps*sqrt(log(2)) * C1;
% H_PV_Act_12P(Cell_Number,1) = HWHH_PV_Act_12P;
% Gof_PYRs_PV_Act_12P(Cell_Number,1) = gof_PYRs_PV_Act_12P;
% 
% A1 = f_PYRs_PV_Act_18P.a1;  %        
% B1 = f_PYRs_PV_Act_18P.b1; %    5.54
% C1 = f_PYRs_PV_Act_18P.c1;  %   0.9677
% %f_PYRs_PV_Act(x) =  a1*exp(-((x-b1)/c1)^2)
% F_PYRs_PV_Act_18P =  A1*exp(-((X-B1)/C1).^2);
% F_PYRs_PV_Act_18P = F_PYRs_PV_Act_18P/max(F_PYRs_PV_Act_18P);
% Steps=11.18;
% HWHH_PV_Act_18P= Steps*sqrt(log(2)) * C1;
% H_PV_Act_18P(Cell_Number,1) = HWHH_PV_Act_18P;
% Gof_PYRs_PV_Act_18P(Cell_Number,1) = gof_PYRs_PV_Act_18P;
% 
% 
% % figure
% % plot(F_PYRs_C)
% % hold on;
%  %
% A1 = f_PYRs_PV_Act_25P.a1;  %        
% B1 = f_PYRs_PV_Act_25P.b1; %    5.54
% C1 = f_PYRs_PV_Act_25P.c1;  %   0.9677
% %f_PYRs_PV_Act(x) =  a1*exp(-((x-b1)/c1)^2)
% F_PYRs_PV_Act_25P =  A1*exp(-((X-B1)/C1).^2);
% F_PYRs_PV_Act_25P = F_PYRs_PV_Act_25P/max(F_PYRs_PV_Act_25P);
% Steps=11.25;
% HWHH_PV_Act_25P= Steps*sqrt(log(2)) * C1;
% H_PV_Act_25P(Cell_Number,1) = HWHH_PV_Act_25P;
% Gof_PYRs_PV_Act_25P(Cell_Number,1) = gof_PYRs_PV_Act_25P;
% 
% 
% A1 = f_PYRs_PV_Act_50P.a1;  %        
% B1 = f_PYRs_PV_Act_50P.b1; %    5.54
% C1 = f_PYRs_PV_Act_50P.c1;  %   0.9677
% %f_PYRs_PV_Act(x) =  a1*exp(-((x-b1)/c1)^2)
% F_PYRs_PV_Act_50P =  A1*exp(-((X-B1)/C1).^2);
% F_PYRs_PV_Act_50P = F_PYRs_PV_Act_50P/max(F_PYRs_PV_Act_50P);
% Steps=11.25;
% HWHH_PV_Act_50P= Steps*sqrt(log(2)) * C1;
% H_PV_Act_50P(Cell_Number,1) = HWHH_PV_Act_50P;
% Gof_PYRs_PV_Act_50P(Cell_Number,1) = gof_PYRs_PV_Act_50P;
% 
% 
% A1 = f_PYRs_PV_Act_75P.a1;  %        
% B1 = f_PYRs_PV_Act_75P.b1; %    5.54
% C1 = f_PYRs_PV_Act_75P.c1;  %   0.9677
% %f_PYRs_PV_Act(x) =  a1*exp(-((x-b1)/c1)^2)
% F_PYRs_PV_Act_75P =  A1*exp(-((X-B1)/C1).^2);
% F_PYRs_PV_Act_75P = F_PYRs_PV_Act_75P/max(F_PYRs_PV_Act_75P);
% Steps=11.25;
% HWHH_PV_Act_75P= Steps*sqrt(log(2)) * C1;
% H_PV_Act_75P(Cell_Number,1) = HWHH_PV_Act_75P;
% Gof_PYRs_PV_Act_75P(Cell_Number,1) = gof_PYRs_PV_Act_75P;
% 
% A1 = f_PYRs_PV_Act_100P.a1;  %        
% B1 = f_PYRs_PV_Act_100P.b1; %    5.54
% C1 = f_PYRs_PV_Act_100P.c1;  %   0.9677
% %f_PYRs_PV_Act(x) =  a1*exp(-((x-b1)/c1)^2)
% F_PYRs_PV_Act_100P =  A1*exp(-((X-B1)/C1).^2);
% F_PYRs_PV_Act_100P = F_PYRs_PV_Act_100P/max(F_PYRs_PV_Act_100P);
% Steps=11.25;
% HWHH_PV_Act_100P= Steps*sqrt(log(2)) * C1;
% H_PV_Act_100P(Cell_Number,1) = HWHH_PV_Act_100P;
% Gof_PYRs_PV_Act_100P(Cell_Number,1) = gof_PYRs_PV_Act_100P;
% 
% A1 = f_PYRs_PV_DeAct.a1;  %        
% B1 = f_PYRs_PV_DeAct.b1; %    5.54
% C1 = f_PYRs_PV_DeAct.c1;  %   0.9677
% %f_PYRs_PV_Act(x) =  a1*exp(-((x-b1)/c1)^2)
% F_PYRs_PV_DeAct =  A1*exp(-((X-B1)/C1).^2);
% F_PYRs_PV_DeAct = F_PYRs_PV_DeAct/max(F_PYRs_PV_DeAct);
% Steps=11.25;
% HWHH_PV_DeAct= Steps*sqrt(log(2)) * C1;
% H_PV_DeAct(Cell_Number,1) = HWHH_PV_DeAct;
% Gof_PYRs_PV_DeAct(Cell_Number,1) = gof_PYRs_PV_DeAct;
% %% New Plots 3
% FA=figure;
% P1=plot(F_PYRs_C); hold on;
% % P2=plot(F_PYRs_PV_Act_100P); hold on;
% % P3=plot(F_PYRs_PV_DeAct); hold on;
% 
% P1(1).LineWidth = 4;
% % P2(1).LineWidth = 4;
% % P3(1).LineWidth = 4;
% % P4(1).LineWidth = 4;
% % P5(1).LineWidth = 4;
% % P6(1).LineWidth = 4;
% % P7(1).LineWidth = 4;
% % P8(1).LineWidth = 4;
% % 
% % % P1(1).Color= [0.00,0.45,0.74]; % [0.00,0.45,0.74]
% % % P2(1).Color= [0.85,0.33,0.10]; %'g' %0.85,0.33,0.10
% % % P3(1).Color= [0.93,0.69,0.13]; %'y' %0.93,0.69,0.13
% % % P4(1).Color= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% % % P5(1).Color= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% % % P6(1).Color= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
% % % %P7(1).Color= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19
% % 
% P1(1).Color= [0, 0.4470, 0.7410]; % [0.00,0.45,0.74]
% % P2(1).Color= [0.8500, 0.3250, 0.0980]; %'g' %0.85,0.33,0.10
% % P3(1).Color= [0.9290, 0.6940, 0.1250]; %'y' %0.93,0.69,0.13
% % P4(1).Color= [0.4940, 0.1840, 0.5560] %'c' %0.49,0.18,0.56
% % P5(1).Color= [0.4660, 0.6740, 0.1880] %'m' %0.47,0.67,0.19
% % P6(1).Color= [0.3010, 0.7450, 0.9330] %'m' %0.47,0.67,0.19
% % P7(1).Color= [0.6350, 0.0780, 0.1840] %'m' %0.47,0.67,0.19
% % P8(1).Color= [1, 0, 0] %'m' %0.47,0.67,0.19
% % %P9(1).Color= [1, 0, 0] %'m' %0.47,0.67,0.19
% 
% 
% 
% 
% a = get(gca,'XTickLabel');  
% set(gca,'XTickLabel',a,'fontsize',22,'FontWeight','bold')
% 
% xticks       ([ 1    400  800   1200  1600 ])
% xticklabels  ([ 0;  45;  90;   135;  180])
% 
% xlabel('Orientations ({\circ})' )
% ylabel('Norm. Firing rates (HZ)')
% box off
% axis tight;
% %legend ('Control', '', 'PV_A_c_t_1_0_0_%', '', 'PV_D_e_A_c_t', '')
% legend ('Control') %, 'PV_A_c_t_1_0_0_%', 'PV_D_e_A_c_t', '')
% 
% if find(Cell_Number==PVs)
%      Ce='PV';
%     elseif  find(Cell_Number==Sst)
%          Ce='Sst';
%             elseif  find(Cell_Number==VIP)
%                 Ce='VIP';
%                     elseif find(Cell_Number==PYRs)
%                         Ce='PYRs';
% end
% 
% title ([Ce, '  Cell ID: ', num2str(Cell_Number)])
% ylim([-0.02 1.02])
% set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83, 4.38], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
% 
%  
% set(1,'renderer','painters')
% saveas(FA,sprintf('Z_%s %d N.tif',Ce, Cell_Number));
% saveas(FA,sprintf('Z_%s %d N.fig',Ce, Cell_Number));
% saveas(FA,sprintf('Z_%s %d N.eps',Ce, Cell_Number),'psc2');

%%
%nexttile
% %figure;
% x = 1:17; 
% N = size(BB_Control,1);
% y = mean(BB_Control);
% SEM = std(BB_Control) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% X1=errorbar(x, y, CI95,'o','LineWidth',3);
% grid off;
% hold on;
%% New Plots All
%FA_All=figure;
%P1=plot(F_PYRs_C); hold on;
% P2=plot(F_PYRs_PV_Act_06P); hold on;
% P3=plot(F_PYRs_PV_Act_12P); hold on;
% P4=plot(F_PYRs_PV_Act_18P); hold on;
% P5=plot(F_PYRs_PV_Act_25P); hold on;
% P6=plot(F_PYRs_PV_Act_50P); hold on;
% P7=plot(F_PYRs_PV_Act_75P); hold on;
% P8=plot(F_PYRs_PV_Act_100P); hold on;
%P9=plot(F_PYRs_PV_DeAct); hold on;
xx=1:17;
BB_Control(isnan(BB_Control))=0;

yy=mean(BB_Control);
[f_PYRs_C, gof_PYRs_C] = fit(xx.',yy.','gauss1');
P1=plot(f_PYRs_C);
hold on;
%run MyColor2.m
run MyColor3.m
% P1(1).LineWidth = 4;
% P2(1).LineWidth = 4;
% P3(1).LineWidth = 4;
% P4(1).LineWidth = 4;
% P5(1).LineWidth = 4;
% P6(1).LineWidth = 4;
% P7(1).LineWidth = 4;
% P8(1).LineWidth = 4;
% %P9(1).LineWidth = 4;
% 
% P1(1).Color= [0, 0.4470, 0.7410]; % [0.00,0.45,0.74]
% P2(1).Color= [0.8500, 0.3250, 0.0980]; %'g' %0.85,0.33,0.10
% P3(1).Color= [0.9290, 0.6940, 0.1250]; %'y' %0.93,0.69,0.13
% P4(1).Color= [0.4940, 0.1840, 0.5560] %'c' %0.49,0.18,0.56
% P5(1).Color= [0.4660, 0.6740, 0.1880] %'m' %0.47,0.67,0.19
% P6(1).Color= [0.3010, 0.7450, 0.9330] %'m' %0.47,0.67,0.19
% P7(1).Color= [0.6350, 0.0780, 0.1840] %'m' %0.47,0.67,0.19
% P8(1).Color= [1, 0, 0] %'m' %0.47,0.67,0.19
% %P9(1).Color= [0.25, 0.25, 0.25] %'m' %0.47,0.67,0.19

% P1=[0, 0.4470, 0.7410];
% P2=[0.8500, 0.3250, 0.0980];
% P3=[0.9290, 0.6940, 0.1250];
% P4=[0.4940, 0.1840, 0.5560];
% P5=[0.4660, 0.6740, 0.1880];
% P6=[0.3010, 0.7450, 0.9330];
% P7=[0.6350, 0.0780, 0.1840];
% P8=[0, 0.5, 0];


a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',22,'FontWeight','bold')

% xticks       ([ 1    400  800   1200  1600 ])
% xticklabels  ([ 0;  45;  90;   135;  180])

xticks([0 1 5 9 13 17 ])
xticklabels([ 0; 0;  45; 90; 135; 180])

xlabel('Orientations ({\circ})' )
ylabel('Firing rates (HZ)')
box off
axis tight;
%legend ('Control', '', 'PV_A_c_t_1_0_0_%', '', 'PV_D_e_A_c_t', '')
legend ('Control') %, 'PV_A_c_t_0_6_%', 'PV_A_c_t_1_2_%', 'PV_A_c_t_1_8_%', 'PV_A_c_t_2_5_%', 'PV_A_c_t_5_0_%', 'PV_A_c_t_7_5_%', 'PV_A_c_t_1_0_0_%') %, 'PV_D_e_A_c_t', '')

if find(Cell_Number==PVs)
     Ce='PV';
    elseif  find(Cell_Number==Sst)
         Ce='Sst';
            elseif  find(Cell_Number==VIP)
                Ce='VIP';
                    elseif find(Cell_Number==PYRs)
                        Ce='PYRs';
end

title ([Ce, '  Cell ID: ', num2str(Cell_Number)]);
%ylim([-0.02 1.02])
set(gcf, 'Units', 'Inches', 'Position', [1, 1, 2*5.83, 2*4.38], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])

 
% set(1,'renderer','painters')
% saveas(FA_All,sprintf('Z_%s %d All N.tif',Ce,Cell_Number));
% saveas(FA_All,sprintf('Z_%s %d All N.fig',Ce,Cell_Number));
% saveas(FA_All,sprintf('Z_%s %d All N.eps',Ce,Cell_Number),'psc2');

%  F = getframe(F1);
%  writeVideo(writerObj,F)
 
 F = getframe(gcf);
 writeVideo(writerObj,F)
end
end
legend off;
set(1,'renderer','painters')
saveas(F1,sprintf('Z_%s %d All.tif',Ce,Cell_Number));
saveas(F1,sprintf('Z_%s %d All.fig',Ce,Cell_Number));
saveas(F1,sprintf('Z_%s %d All.eps',Ce,Cell_Number),'psc2');


hold on;
close(writerObj);
% save HWHH_PV_Act.mat H_C H_PV_Act_06P H_PV_Act_12P H_PV_Act_18P H_PV_Act_25P H_PV_Act_50P H_PV_Act_75P H_PV_Act_100P H_PV_DeAct
% save Gof_PV_Act.mat  Gof_PYRs_C  Gof_PYRs_PV_Act_06P Gof_PYRs_PV_Act_12P Gof_PYRs_PV_Act_18P Gof_PYRs_PV_Act_25P Gof_PYRs_PV_Act_50P Gof_PYRs_PV_Act_75P Gof_PYRs_PV_Act_100P Gof_PYRs_PV_DeAct 