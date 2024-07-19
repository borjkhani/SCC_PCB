clearvars -except H_C H_PV_Act_06P H_PV_Act_12P H_PV_Act_18P H_PV_Act_25P H_PV_Act_50P H_PV_Act_75P H_PV_Act_100P H_PV_DeAct_100P skipNum Gof_PYRs_C  Gof_PYRs_PV_Act_06P Gof_PYRs_PV_Act_12P Gof_PYRs_PV_Act_18P Gof_PYRs_PV_Act_25P Gof_PYRs_PV_Act_50P Gof_PYRs_PV_Act_75P Gof_PYRs_PV_Act_100P Gof_PYRs_PV_DeAct_100P  

%clear
% clc
close all

run Cell_IDs.m
PYRs=PYRs';
Trial=8;

load('All_cells_Control.mat')

% load('All_cells_PV_Act_06P.mat')
% All_cells_PV_Act_06P=All_cells_PV_Act;
% 
% load('All_cells_PV_Act_12P.mat')
% All_cells_PV_Act_12P=All_cells_PV_Act;
% 
% load('All_cells_PV_Act_18P.mat')
% All_cells_PV_Act_18P=All_cells_PV_Act;
% 
% load('All_cells_PV_Act_25P.mat')
% All_cells_PV_Act_25P=All_cells_PV_Act;
% 
% load('All_cells_PV_Act_50P.mat')
% All_cells_PV_Act_50P=All_cells_PV_Act;
% 
% load('All_cells_PV_Act_75P.mat')
% All_cells_PV_Act_75P=All_cells_PV_Act;
% 
% load('All_cells_PV_Act_100P.mat')
% All_cells_PV_Act_100P=All_cells_PV_Act;
% 
% load('All_cells_PV_DeAct_100P.mat')
% All_cells_PV_DeAct_100P=All_cells_PV_DeAct;

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
%SEM = std(BB_Control) / sqrt(N);                    % Standard Error Of The Mean
%CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%errorbar(x, y, CI95,'o','LineWidth',3);
% grid off
% hold on;
% %%
% Firings_PV_Act_06P = All_cells_PV_Act_06P(:,Cell_Number);
% %
% F_PV_Act_06P=cell2mat(Firings_PV_Act_06P);
% %
% FB_PV_Act_06P(1,:,:)=F_PV_Act_06P(1:17,:);
% FB_PV_Act_06P(2,:,:)=F_PV_Act_06P(18:34,:);
% FB_PV_Act_06P(3,:,:)=F_PV_Act_06P(35:51,:);
% FB_PV_Act_06P(4,:,:)=F_PV_Act_06P(52:68,:);
% 
% FB_PV_Act_06P(5,:,:)=F_PV_Act_06P(69:85,:);
% FB_PV_Act_06P(6,:,:)=F_PV_Act_06P(86:102,:);
% FB_PV_Act_06P(7,:,:)=F_PV_Act_06P(103:119,:);
% FB_PV_Act_06P(8,:,:)=F_PV_Act_06P(120:136,:);
% 
% BB_PV_Act_06P=mean(FB_PV_Act_06P,3);
% %%
% Firings_PV_Act_12P = All_cells_PV_Act_12P(:,Cell_Number);
% %
% F_PV_Act_12P=cell2mat(Firings_PV_Act_12P);
% %
% FB_PV_Act_12P(1,:,:)=F_PV_Act_12P(1:17,:);
% FB_PV_Act_12P(2,:,:)=F_PV_Act_12P(18:34,:);
% FB_PV_Act_12P(3,:,:)=F_PV_Act_12P(35:51,:);
% FB_PV_Act_12P(4,:,:)=F_PV_Act_12P(52:68,:);
% 
% FB_PV_Act_12P(5,:,:)=F_PV_Act_12P(69:85,:);
% FB_PV_Act_12P(6,:,:)=F_PV_Act_12P(86:102,:);
% FB_PV_Act_12P(7,:,:)=F_PV_Act_12P(103:119,:);
% FB_PV_Act_12P(8,:,:)=F_PV_Act_12P(120:136,:);
% 
% BB_PV_Act_12P=mean(FB_PV_Act_12P,3);
% %%
% Firings_PV_Act_18P = All_cells_PV_Act_18P(:,Cell_Number);
% %
% F_PV_Act_18P=cell2mat(Firings_PV_Act_18P);
% %
% FB_PV_Act_18P(1,:,:)=F_PV_Act_18P(1:17,:);
% FB_PV_Act_18P(2,:,:)=F_PV_Act_18P(18:34,:);
% FB_PV_Act_18P(3,:,:)=F_PV_Act_18P(35:51,:);
% FB_PV_Act_18P(4,:,:)=F_PV_Act_18P(52:68,:);
% 
% FB_PV_Act_18P(5,:,:)=F_PV_Act_18P(69:85,:);
% FB_PV_Act_18P(6,:,:)=F_PV_Act_18P(86:102,:);
% FB_PV_Act_18P(7,:,:)=F_PV_Act_18P(103:119,:);
% FB_PV_Act_18P(8,:,:)=F_PV_Act_18P(120:136,:);
% 
% BB_PV_Act_18P=mean(FB_PV_Act_18P,3);
% 
% %%
% Firings_PV_Act_25P = All_cells_PV_Act_25P(:,Cell_Number);
% %
% F_PV_Act_25P=cell2mat(Firings_PV_Act_25P);
% %
% FB_PV_Act_25P(1,:,:)=F_PV_Act_25P(1:17,:);
% FB_PV_Act_25P(2,:,:)=F_PV_Act_25P(18:34,:);
% FB_PV_Act_25P(3,:,:)=F_PV_Act_25P(35:51,:);
% FB_PV_Act_25P(4,:,:)=F_PV_Act_25P(52:68,:);
% 
% FB_PV_Act_25P(5,:,:)=F_PV_Act_25P(69:85,:);
% FB_PV_Act_25P(6,:,:)=F_PV_Act_25P(86:102,:);
% FB_PV_Act_25P(7,:,:)=F_PV_Act_25P(103:119,:);
% FB_PV_Act_25P(8,:,:)=F_PV_Act_25P(120:136,:);
% 
% BB_PV_Act_25P=mean(FB_PV_Act_25P,3);
% %
% % x = 1:17; 
% % N = size(BB_PV_Act_25P,1);
% % y = mean(BB_PV_Act_25P);
% % SEM = std(BB_PV_Act_25P) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% %grid off
% %hold on;
% %%
% Firings_PV_Act_50P = All_cells_PV_Act_50P(:,Cell_Number);
% %
% F_PV_Act_50P=cell2mat(Firings_PV_Act_50P);
% %
% FB_PV_Act_50P(1,:,:)=F_PV_Act_50P(1:17,:);
% FB_PV_Act_50P(2,:,:)=F_PV_Act_50P(18:34,:);
% FB_PV_Act_50P(3,:,:)=F_PV_Act_50P(35:51,:);
% FB_PV_Act_50P(4,:,:)=F_PV_Act_50P(52:68,:);
% 
% FB_PV_Act_50P(5,:,:)=F_PV_Act_50P(69:85,:);
% FB_PV_Act_50P(6,:,:)=F_PV_Act_50P(86:102,:);
% FB_PV_Act_50P(7,:,:)=F_PV_Act_50P(103:119,:);
% FB_PV_Act_50P(8,:,:)=F_PV_Act_50P(120:136,:);
% 
% BB_PV_Act_50P=mean(FB_PV_Act_50P,3);
% %
% % x = 1:17; 
% % N = size(BB_PV_Act_50P,1);
% % y = mean(BB_PV_Act_50P);
% % SEM = std(BB_PV_Act_50P) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off
% % hold on;
% %%
% Firings_PV_Act_75P = All_cells_PV_Act_75P(:,Cell_Number);
% %
% F_PV_Act_75P=cell2mat(Firings_PV_Act_75P);
% %
% FB_PV_Act_75P(1,:,:)=F_PV_Act_75P(1:17,:);
% FB_PV_Act_75P(2,:,:)=F_PV_Act_75P(18:34,:);
% FB_PV_Act_75P(3,:,:)=F_PV_Act_75P(35:51,:);
% FB_PV_Act_75P(4,:,:)=F_PV_Act_75P(52:68,:);
% 
% FB_PV_Act_75P(5,:,:)=F_PV_Act_75P(69:85,:);
% FB_PV_Act_75P(6,:,:)=F_PV_Act_75P(86:102,:);
% FB_PV_Act_75P(7,:,:)=F_PV_Act_75P(103:119,:);
% FB_PV_Act_75P(8,:,:)=F_PV_Act_75P(120:136,:);
% 
% BB_PV_Act_75P=mean(FB_PV_Act_75P,3);
% %
% % x = 1:17; 
% % N = size(BB_PV_Act_75P,1);
% % y = mean(BB_PV_Act_75P);
% % SEM = std(BB_PV_Act_75P) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off
% % hold on;
% 
% %%
% Firings_PV_Act_100P = All_cells_PV_Act_100P(:,Cell_Number);
% %
% F_PV_Act_100P=cell2mat(Firings_PV_Act_100P);
% %
% FB_PV_Act_100P(1,:,:)=F_PV_Act_100P(1:17,:);
% FB_PV_Act_100P(2,:,:)=F_PV_Act_100P(18:34,:);
% FB_PV_Act_100P(3,:,:)=F_PV_Act_100P(35:51,:);
% FB_PV_Act_100P(4,:,:)=F_PV_Act_100P(52:68,:);
% 
% FB_PV_Act_100P(5,:,:)=F_PV_Act_100P(69:85,:);
% FB_PV_Act_100P(6,:,:)=F_PV_Act_100P(86:102,:);
% FB_PV_Act_100P(7,:,:)=F_PV_Act_100P(103:119,:);
% FB_PV_Act_100P(8,:,:)=F_PV_Act_100P(120:136,:);
% 
% BB_PV_Act_100P=mean(FB_PV_Act_100P,3);
% %
% % x = 1:17; 
% % N = size(BB_PV_Act_100P,1);
% % y = mean(BB_PV_Act_100P);
% % SEM = std(BB_PV_Act_100P) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off
% % hold on;
% %%
% Firings_PV_DeAct_100P = All_cells_PV_DeAct_100P(:,Cell_Number);
% %
% F_PV_DeAct_100P=cell2mat(Firings_PV_DeAct_100P);
% %
% FB_PV_DeAct_100P(1,:,:)=F_PV_DeAct_100P(1:17,:);
% FB_PV_DeAct_100P(2,:,:)=F_PV_DeAct_100P(18:34,:);
% FB_PV_DeAct_100P(3,:,:)=F_PV_DeAct_100P(35:51,:);
% FB_PV_DeAct_100P(4,:,:)=F_PV_DeAct_100P(52:68,:);
% 
% FB_PV_DeAct_100P(5,:,:)=F_PV_DeAct_100P(69:85,:);
% FB_PV_DeAct_100P(6,:,:)=F_PV_DeAct_100P(86:102,:);
% FB_PV_DeAct_100P(7,:,:)=F_PV_DeAct_100P(103:119,:);
% FB_PV_DeAct_100P(8,:,:)=F_PV_DeAct_100P(120:136,:);
% 
% BB_PV_DeAct_100P=mean(FB_PV_DeAct_100P,3);
% %
% % x = 1:17; 
% % N = size(BB_PV_DeAct_100P,1);
% % y = mean(BB_PV_DeAct_100P);
% % SEM = std(BB_PV_DeAct_100P) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off
% % hold on;
% %%
% % nexttile
% % %figure;
% % x = 1:17; 
% % N = size(BB_Control,1);
% % y = mean(BB_Control);
% % SEM = std(BB_Control) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off;
% % hold on;
% % axis tight
% 
% 
% if all(BB_PV_Act_06P<=0)
%     BB_PV_Act_06P=BB_Control;
% end
% 
% if all(BB_PV_Act_12P<=0)
%     BB_PV_Act_12P=BB_Control;
% end
% 
% if all(BB_PV_Act_18P<=0)
%     BB_PV_Act_18P=BB_Control;
% end
% 
% 
% PP=0;
% if all(BB_PV_Act_25P<=0)
%     BB_PV_Act_25P=BB_Control;
% end
% 
% % PP=1;
% % x = 1:17; 
% % N = size(BB_PV_Act_25P,1);
% % y = mean(BB_PV_Act_25P);
% % SEM = std(BB_PV_Act_25P) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off;
% % hold on;
% % axis tight
% 
% 
% 
% PP=0;
% if all(BB_PV_Act_50P<=0)
%     BB_PV_Act_50P=BB_Control;
% end
% 
% % PP=1;
% % x = 1:17; 
% % N = size(BB_PV_Act_50P,1);
% % y = mean(BB_PV_Act_50P);
% % SEM = std(BB_PV_Act_50P) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off;
% % hold on;
% % axis tight
% 
% 
% 
% PP=0;
% if all(BB_PV_Act_75P<=0)
%     BB_PV_Act_75P=BB_Control;
% end
% 
% % PP=1;
% % x = 1:17; 
% % N = size(BB_PV_Act_75P,1);
% % y = mean(BB_PV_Act_75P);
% % SEM = std(BB_PV_Act_75P) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off;
% % hold on;
% % axis tight
% 
% 
% 
% PP=0;
% if all(BB_PV_Act_100P<=0)
%     BB_PV_Act_100P=BB_Control;
% end
% 
% % PP=1;
% % x = 1:17; 
% % N = size(BB_PV_Act_100P,1);
% % y = mean(BB_PV_Act_100P);
% % SEM = std(BB_PV_Act_100P) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off;
% % hold on;
% % axis tight
% 
% 
% PP=0;
% if all(BB_PV_DeAct_100P<=0)
%     BB_PV_DeAct_100P=BB_Control;
% end
% 
% % PP=1;
% % x = 1:17; 
% % N = size(BB_PV_DeAct_100P,1);
% % y = mean(BB_PV_DeAct_100P);
% % SEM = std(BB_PV_DeAct_100P) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off;
% % hold on;
% % axis tight


%%
xx=1:17;
%figure;
% 
BB_Control(isnan(BB_Control))=0;
% BB_PV_Act_06P(isnan(BB_PV_Act_06P))=0;
% BB_PV_Act_12P(isnan(BB_PV_Act_12P))=0;
% BB_PV_Act_18P(isnan(BB_PV_Act_18P))=0;
% BB_PV_Act_25P(isnan(BB_PV_Act_25P))=0;
% BB_PV_Act_50P(isnan(BB_PV_Act_50P))=0;
% BB_PV_Act_75P(isnan(BB_PV_Act_75P))=0;
% BB_PV_Act_100P(isnan(BB_PV_Act_100P))=0;
% BB_PV_DeAct_100P(isnan(BB_PV_DeAct_100P))=0;


yy=mean(BB_Control);
[f_PYRs_C, gof_PYRs_C] = fit(xx.',yy.','gauss1');
%P1=plot(f_PYRs_C);
% hold on;

% if all(BB_PV_Act_06P<=0)
%     BB_PV_Act_06P=BB_Control;
% end
% 
% if all(BB_PV_Act_12P<=0)
%     BB_PV_Act_12P=BB_Control;
% end
% 
% if all(BB_PV_Act_18P<=0)
%     BB_PV_Act_18P=BB_Control;
% end
% 
% if all(BB_PV_Act_25P<=0)
%     BB_PV_Act_25P=BB_Control;
%     PP=1;
% end
% 
% if all(BB_PV_Act_50P<=0)
%     BB_PV_Act_50P=BB_Control;
%     PP=1;
% end
% 
% if all(BB_PV_Act_75P<=0)
%     BB_PV_Act_75P=BB_Control;
%     PP=1;
% end
% 
% if all(BB_PV_Act_100P<=0)
%     BB_PV_Act_100P=BB_Control;
%     PP=1;
% end
% 
% if all(BB_PV_DeAct_100P<=0)
%     BB_PV_DeAct_100P=BB_Control;
%     PP=1;
% end
% 
% 
% yy=mean(BB_PV_Act_06P);
% [f_PYRs_PV_Act_06P, gof_PYRs_PV_Act_06P] = fit(xx.',yy.','gauss1');
% 
% yy=mean(BB_PV_Act_12P);
% [f_PYRs_PV_Act_12P, gof_PYRs_PV_Act_12P] = fit(xx.',yy.','gauss1');
% 
% yy=mean(BB_PV_Act_18P);
% [f_PYRs_PV_Act_18P, gof_PYRs_PV_Act_18P] = fit(xx.',yy.','gauss1');
% 
% yy=mean(BB_PV_Act_25P);
% [f_PYRs_PV_Act_25P, gof_PYRs_PV_Act_25P] = fit(xx.',yy.','gauss1');
% %P2=plot(f_PYRs_PV_Act_25P);
% % hold on;
% 
% yy=mean(BB_PV_Act_50P);
% [f_PYRs_PV_Act_50P, gof_PYRs_PV_Act_50P] = fit(xx.',yy.','gauss1');
% %P3=plot(f_PYRs_PV_Act_50P);
% % hold on;
% 
% yy=mean(BB_PV_Act_75P);
% [f_PYRs_PV_Act_75P, gof_PYRs_PV_Act_75P] = fit(xx.',yy.','gauss1');
% %P4=plot(f_PYRs_PV_Act_75P);
% % hold on;
% 
% yy=mean(BB_PV_Act_100P);
% [f_PYRs_PV_Act_100P, gof_PYRs_PV_Act_100P] = fit(xx.',yy.','gauss1');
% %P5=plot(f_PYRs_PV_Act_100P);
% % hold on;
% 
% yy=mean(BB_PV_DeAct_100P);
% [f_PYRs_PV_DeAct_100P, gof_PYRs_PV_DeAct_100P] = fit(xx.',yy.','gauss1');
% %P6=plot(f_PYRs_PV_DeAct_100P);
% % hold on;
% 
% % P1(1).LineWidth = 4;
% % P2(1).LineWidth = 4;
% % P3(1).LineWidth = 4;
% % P4(1).LineWidth = 4;
% % P5(1).LineWidth = 4;
% % P6(1).LineWidth = 4;
% %P7(1).LineWidth = 4;
% 
% % P1(1).Color= [0.00,0.45,0.74]; % [0.00,0.45,0.74]
% % P2(1).Color= [0.85,0.33,0.10]; %'g' %0.85,0.33,0.10
% % P3(1).Color= [0.93,0.69,0.13]; %'y' %0.93,0.69,0.13
% % P4(1).Color= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% % P5(1).Color= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% % P6(1).Color= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
% % P7(1).Color= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19
% 
% %line_color = ['b' 'g' 'y' 'c' 'm' 'r'];
% 
% % a = get(gca,'XTickLabel');  
% % set(gca,'XTickLabel',a,'fontsize',18,'FontWeight','bold')
% 
% % xticks([0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17])
% % xticklabels([ 0; 0; 11; 22; 33;  45; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135; 146; 157; 168; 180])
% 
% % xticks([0 1 5 9 13 17 ])
% % xticklabels([ 0; 0;  45; 90; 135; 180])
% % axis tight
% 
% 
% % xlabel('Orientations ({\circ})' )
% % ylabel('Firing rates (HZ)')

%title ('Mean firing rates in the column (all cells) in 4 trials')
%xticklabels
% box off

%legend ('Control', 'PV_A_c_t', 'PV_D_e_A_c_t',  'PV_A_c_t', 'PV_D_e_A_c_t', 'PV_A_c_t', 'PV_D_e_A_c_t')

%legend ('Control', 'PV_A_c_t', 'PV_D_e_A_c_t')
%legend (['Control  (RMSE: ', num2str(gof_PYRs_C.rmse,2),')'],['PV_A_c_t_2_5_%     (RMSE: ', num2str(gof_PYRs_PV_Act_25P.rmse,2), ')'], ['PV_A_c_t_5_0_%     (RMSE: ', num2str(gof_PYRs_PV_Act_50P.rmse,2), ')'],['PV_A_c_t_7_5_%     (RMSE: ', num2str(gof_PYRs_PV_Act_75P.rmse,2), ')'],['PV_A_c_t_1_0_0_%     (RMSE: ', num2str(gof_PYRs_PV_Act_100P.rmse,2), ')'])
% legend (['Control'],['PV_A_c_t_2_5_%'], ['PV_A_c_t_5_0_%'], ['PV_A_c_t_7_5_%'],['PV_A_c_t_1_0_0_%'], ['PV_D_e_A_c_t'])

%title ('Pyramidal Cell Tuning Curve:', Cell_Number)

if find(Cell_Number==PVs)
     Ce='PV';
    elseif  find(Cell_Number==Sst)
         Ce='Sst';
            elseif  find(Cell_Number==VIP)
                Ce='VIP';
                    elseif find(Cell_Number==PYRs)
                        Ce='PYRs';
end

% title ([Ce, '  Cell ID: ', num2str(Cell_Number)])

%
%ylim([-1 40])

%
% set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83, 4.38], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])

%set(gcf, 'Units', 'Inches', 'Position', [0, 0, 3, 2.5], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
%saveas(h,sprintf('FIG.eps'));
%saveas(gca, 'FIG1%d.eps','psc2',Cell_Number);

% set(1,'renderer','painters')
% saveas(h,sprintf('Z_%s %d All.tif',Ce,Cell_Number));
% saveas(h,sprintf('Z_%s %d All.fig',Ce,Cell_Number));
% saveas(gca,sprintf('Z_%s %d All.eps',Ce,Cell_Number),'psc2');


%% Plot 3 Control Act DeAct_100P

%nexttile
%h=figure;
x = 1:17; 
N = size(BB_Control,1);
y = mean(BB_Control);
SEM = std(BB_Control) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%errorbar(x, y, CI95,'o','LineWidth',3);
% grid off;
% hold on;
% axis tight


% PP=0;
% if all(BB_PV_Act_100P<=0)
%     BB_PV_Act_100P=BB_Control;
% end
% 
% PP=1;
% x = 1:17; 
% N = size(BB_PV_Act_100P,1);
% y = mean(BB_PV_Act_100P);
% SEM = std(BB_PV_Act_100P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off;
% % hold on;
% % axis tight
% 
% 
% PP=0;
% if all(BB_PV_DeAct_100P<=0)
%     BB_PV_DeAct_100P=BB_Control;
% end
% 
% PP=1;
% x = 1:17; 
% N = size(BB_PV_DeAct_100P,1);
% y = mean(BB_PV_DeAct_100P);
% SEM = std(BB_PV_DeAct_100P) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% %errorbar(x, y, CI95,'o','LineWidth',3);
% % grid off;
% % hold on;
% % axis tight


%
xx=1:17;
%figure;
% 
BB_Control(isnan(BB_Control))=0;
% BB_PV_Act_100P(isnan(BB_PV_Act_100P))=0;
% BB_PV_DeAct_100P(isnan(BB_PV_DeAct_100P))=0;
% 

yy=mean(BB_Control);
[f_PYRs_C, gof_PYRs_C] = fit(xx.',yy.','gauss1');
%P1=plot(f_PYRs_C);
%hold on;


% if all(BB_PV_Act_100P<=0)
%     BB_PV_Act_100P=BB_Control;
%     PP=1;
% end
% 
% if all(BB_PV_DeAct_100P<=0)
%     BB_PV_DeAct_100P=BB_Control;
%     PP=1;
% end
% 
% 
% yy=mean(BB_PV_Act_100P);
% [f_PYRs_PV_Act_100P, gof_PYRs_PV_Act_100P] = fit(xx.',yy.','gauss1');
% %P2=plot(f_PYRs_PV_Act_100P);
% %hold on;
% 
% yy=mean(BB_PV_DeAct_100P);
% [f_PYRs_PV_DeAct_100P, gof_PYRs_PV_DeAct_100P] = fit(xx.',yy.','gauss1');
% %P3=plot(f_PYRs_PV_DeAct_100P);
% %hold on;
% 
% % P1(1).LineWidth = 4;
% % P2(1).LineWidth = 4;
% % P3(1).LineWidth = 4;
% % P4(1).LineWidth = 4;
% % P5(1).LineWidth = 4;
% % P6(1).LineWidth = 4;
% %P7(1).LineWidth = 4;
% 
% % P1(1).Color= [0.00,0.45,0.74]; % [0.00,0.45,0.74]
% % P2(1).Color= [0.85,0.33,0.10]; %'g' %0.85,0.33,0.10
% % P3(1).Color= [0.93,0.69,0.13]; %'y' %0.93,0.69,0.13
% % P4(1).Color= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% % P5(1).Color= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% % P6(1).Color= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
% % P7(1).Color= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19
% 
% %line_color = ['b' 'g' 'y' 'c' 'm' 'r'];
% 
% % a = get(gca,'XTickLabel');  
% % set(gca,'XTickLabel',a,'fontsize',18,'FontWeight','bold')
% 
% % xticks([0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17])
% % xticklabels([ 0; 0; 11; 22; 33;  45; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135; 146; 157; 168; 180])
% 
% % xticks([0 1 5 9 13 17 ])
% % xticklabels([ 0; 0;  45; 90; 135; 180])
% % axis tight
% % 
% % 
% % xlabel('Orientations ({\circ})' )
% % ylabel('Firing rates (HZ)')
% 
% %title ('Mean firing rates in the column (all cells) in 4 trials')
% %xticklabels
% % box off
% 
% %legend ('Control', 'PV_A_c_t', 'PV_D_e_A_c_t',  'PV_A_c_t', 'PV_D_e_A_c_t', 'PV_A_c_t', 'PV_D_e_A_c_t')
% 
% %legend ('Control', 'PV_A_c_t', 'PV_D_e_A_c_t')
% %legend (['Control  (RMSE: ', num2str(gof_PYRs_C.rmse,2),')'],['PV_A_c_t_2_5_%     (RMSE: ', num2str(gof_PYRs_PV_Act_25P.rmse,2), ')'], ['PV_A_c_t_5_0_%     (RMSE: ', num2str(gof_PYRs_PV_Act_50P.rmse,2), ')'],['PV_A_c_t_7_5_%     (RMSE: ', num2str(gof_PYRs_PV_Act_75P.rmse,2), ')'],['PV_A_c_t_1_0_0_%     (RMSE: ', num2str(gof_PYRs_PV_Act_100P.rmse,2), ')'])
% % legend (['Control'],['PV_A_c_t_1_0_0_%'], ['PV_D_e_A_c_t'])

%title ('Pyramidal Cell Tuning Curve:', Cell_Number)

if find(Cell_Number==PVs)
     Ce='PV';
    elseif  find(Cell_Number==Sst)
         Ce='Sst';
            elseif  find(Cell_Number==VIP)
                Ce='VIP';
                    elseif find(Cell_Number==PYRs)
                        Ce='PYRs';
 end


% title ([Ce, '  Cell ID: ', num2str(Cell_Number)])

%
%ylim([-1 40])

%
% set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83, 4.38], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])

%set(gcf, 'Units', 'Inches', 'Position', [0, 0, 3, 2.5], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
%saveas(h,sprintf('FIG.eps'));
%saveas(gca, 'FIG1%d.eps','psc2',Cell_Number);

% set(1,'renderer','painters')
% saveas(h,sprintf('Z_%s %d.tif',Ce,Cell_Number));
% saveas(h,sprintf('Z_%s %d.fig',Ce,Cell_Number));
% saveas(gca,sprintf('Z_%s %d.eps',Ce,Cell_Number),'psc2');
%%



