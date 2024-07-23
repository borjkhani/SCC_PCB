Thr = 45; 
H_C_PYRs(H_C_PYRs>Thr)=0;
H_VIP_Act_06P_PYRs(H_VIP_Act_06P_PYRs>Thr)=0;
H_VIP_Act_12P_PYRs(H_VIP_Act_12P_PYRs>Thr)=0;
H_VIP_Act_18P_PYRs(H_VIP_Act_18P_PYRs>Thr)=0;
H_VIP_Act_25P_PYRs(H_VIP_Act_25P_PYRs>Thr)=0;
H_VIP_Act_50P_PYRs(H_VIP_Act_50P_PYRs>Thr)=0;
H_VIP_Act_75P_PYRs(H_VIP_Act_75P_PYRs>Thr)=0;
H_VIP_Act_100P_PYRs(H_VIP_Act_100P_PYRs>Thr)=0;

H_VIP_DeAct_06P_PYRs(H_VIP_DeAct_06P_PYRs>Thr)=0;
H_VIP_DeAct_12P_PYRs(H_VIP_DeAct_12P_PYRs>Thr)=0;
H_VIP_DeAct_18P_PYRs(H_VIP_DeAct_18P_PYRs>Thr)=0;
H_VIP_DeAct_25P_PYRs(H_VIP_DeAct_25P_PYRs>Thr)=0;
H_VIP_DeAct_50P_PYRs(H_VIP_DeAct_50P_PYRs>Thr)=0;
H_VIP_DeAct_75P_PYRs(H_VIP_DeAct_75P_PYRs>Thr)=0;
H_VIP_DeAct_100P_PYRs(H_VIP_DeAct_100P_PYRs>Thr)=0;


% Remove Zeros
H_C1_PYRs=nonzeros(H_C_PYRs);
H_VIP_Act_06P1_PYRs=nonzeros(H_VIP_Act_06P_PYRs);
H_VIP_Act_12P1_PYRs=nonzeros(H_VIP_Act_12P_PYRs);
H_VIP_Act_18P1_PYRs=nonzeros(H_VIP_Act_18P_PYRs);
H_VIP_Act_25P1_PYRs=nonzeros(H_VIP_Act_25P_PYRs);
H_VIP_Act_50P1_PYRs=nonzeros(H_VIP_Act_50P_PYRs);
H_VIP_Act_75P1_PYRs=nonzeros(H_VIP_Act_75P_PYRs);
H_VIP_Act_100P1_PYRs=nonzeros(H_VIP_Act_100P_PYRs);

H_VIP_DeAct_06P1_PYRs=nonzeros(H_VIP_DeAct_06P_PYRs);
H_VIP_DeAct_12P1_PYRs=nonzeros(H_VIP_DeAct_12P_PYRs);
H_VIP_DeAct_18P1_PYRs=nonzeros(H_VIP_DeAct_18P_PYRs);
H_VIP_DeAct_25P1_PYRs=nonzeros(H_VIP_DeAct_25P_PYRs);
H_VIP_DeAct_50P1_PYRs=nonzeros(H_VIP_DeAct_50P_PYRs);
H_VIP_DeAct_75P1_PYRs=nonzeros(H_VIP_DeAct_75P_PYRs);
H_VIP_DeAct_100P1_PYRs=nonzeros(H_VIP_DeAct_100P_PYRs);

%%
 figure;
 
%  M1=mean(H_C);
%  M2=mean(H_VIP_Act);
%  M3=mean(H_VIP_DeAct);

 M1=mean(H_C1_PYRs);
 M2=mean(H_VIP_Act_06P1_PYRs);
 M3=mean(H_VIP_Act_12P1_PYRs);
 M4=mean(H_VIP_Act_18P1_PYRs);
 M5=mean(H_VIP_Act_25P1_PYRs);
 M6=mean(H_VIP_Act_50P1_PYRs);
 M7=mean(H_VIP_Act_75P1_PYRs);
 M8=mean(H_VIP_Act_100P1_PYRs);
 
 M9=mean(H_VIP_DeAct_06P1_PYRs);
 M10=mean(H_VIP_DeAct_12P1_PYRs);
 M11=mean(H_VIP_DeAct_18P1_PYRs);
 M12=mean(H_VIP_DeAct_25P1_PYRs);
 M13=mean(H_VIP_DeAct_50P1_PYRs);
 M14=mean(H_VIP_DeAct_75P1_PYRs);
 M15=mean(H_VIP_DeAct_100P1_PYRs);
 %M=mean(mean(H_C));
 
M= [M1 M2 M3 M4 M5 M6 M7 M8 M9 M10 M11 M12 M13 M14 M15];
C=bar(M)
hold on 
%  x=1;
%  bar(M1)
%  hold on;

 %%
% % x=1:8
% x=1;
%  y = mean(H_C);
%  N = size(H_C,1);
%  SEM = std(H_C) / sqrt(N);
%  CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%  E1=errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold on;
% 
% %
% % M2=mean(H_VIP_Act);
% %M=mean(mean(H_VIP_Act));
%  
% %  x=2;
% %  bar(M2)
% %  hold on;
% 
%  x=2;
% %x=1:8
%  y = mean(H_VIP_Act);
%  N = size(H_VIP_Act,1);
%  SEM = std(H_VIP_Act / sqrt(N));
%  CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%  E2=errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold on;
% 
% x=3;
% %x=1:8
%  y = mean(H_VIP_DeAct);
%  N = size(H_VIP_DeAct,1);
%  SEM = std(H_VIP_DeAct / sqrt(N));
%  CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%  E3=errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold on;

% x=1:8
x=1;
 y = mean(H_C1_PYRs);
 N = size(H_C1_PYRs,1);
 SEM = std(H_C1_PYRs) / sqrt(N);
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E1=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

%
% M2=mean(H_VIP_Act);
%M=mean(mean(H_VIP_Act));
 
%  x=2;
%  bar(M2)
%  hold on;

x=2;
%x=1:8
 y = mean(H_VIP_Act_06P1_PYRs);
 N = size(H_VIP_Act_06P1_PYRs,1);
 SEM = std(H_VIP_Act_06P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=3;
%x=1:8
 y = mean(H_VIP_Act_12P1_PYRs);
 N = size(H_VIP_Act_12P1_PYRs,1);
 SEM = std(H_VIP_Act_12P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=4;
%x=1:8
 y = mean(H_VIP_Act_18P1_PYRs);
 N = size(H_VIP_Act_18P1_PYRs,1);
 SEM = std(H_VIP_Act_18P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=5;
%x=1:8
 y = mean(H_VIP_Act_25P1_PYRs);
 N = size(H_VIP_Act_25P1_PYRs,1);
 SEM = std(H_VIP_Act_25P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=6;
%x=1:8
 y = mean(H_VIP_Act_50P1_PYRs);
 N = size(H_VIP_Act_50P1_PYRs,1);
 SEM = std(H_VIP_Act_50P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E3=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=7;
%x=1:8
 y = mean(H_VIP_Act_75P1_PYRs);
 N = size(H_VIP_Act_75P1_PYRs,1);
 SEM = std(H_VIP_Act_75P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E4=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=8;
%x=1:8
 y = mean(H_VIP_Act_100P1_PYRs);
 N = size(H_VIP_Act_100P1_PYRs,1);
 SEM = std(H_VIP_Act_100P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E5=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;
%%
x=9;
%x=1:8
 y = mean(H_VIP_DeAct_06P1_PYRs);
 N = size(H_VIP_DeAct_06P1_PYRs,1);
 SEM = std(H_VIP_DeAct_06P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=10;
%x=1:8
 y = mean(H_VIP_DeAct_12P1_PYRs);
 N = size(H_VIP_DeAct_12P1_PYRs,1);
 SEM = std(H_VIP_DeAct_12P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=11;
%x=1:8
 y = mean(H_VIP_DeAct_18P1_PYRs);
 N = size(H_VIP_DeAct_18P1_PYRs,1);
 SEM = std(H_VIP_DeAct_18P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=12;
%x=1:8
 y = mean(H_VIP_DeAct_25P1_PYRs);
 N = size(H_VIP_DeAct_25P1_PYRs,1);
 SEM = std(H_VIP_DeAct_25P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=13;
%x=1:8
 y = mean(H_VIP_DeAct_50P1_PYRs);
 N = size(H_VIP_DeAct_50P1_PYRs,1);
 SEM = std(H_VIP_DeAct_50P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E3=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=14;
%x=1:8
 y = mean(H_VIP_DeAct_75P1_PYRs);
 N = size(H_VIP_DeAct_75P1_PYRs,1);
 SEM = std(H_VIP_DeAct_75P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E4=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=15;
%x=1:8
 y = mean(H_VIP_DeAct_100P1_PYRs);
 N = size(H_VIP_DeAct_100P1_PYRs,1);
 SEM = std(H_VIP_DeAct_100P1_PYRs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E5=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;
%%
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',14,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
xticklabels({ 'Control'; 'VIP_A_c_t_0_6_%'; 'VIP_A_c_t_1_2_%'; 'VIP_A_c_t_1_8_%'; 'VIP_A_c_t_2_5_%'; 'VIP_A_c_t_5_0_%'; 'VIP_A_c_t_7_5_%'; 'VIP_A_c_t_1_0_0_%';'VIP_D_e_A_c_t_0_6_%'; 'VIP_D_e_A_c_t_1_2_%'; 'VIP_D_e_A_c_t_1_8_%'; 'VIP_D_e_A_c_t_2_5_%'; 'VIP_D_e_A_c_t_5_0_%'; 'VIP_D_e_A_c_t_7_5_%'; 'VIP_D_e_A_c_t_1_0_0_%' })

xlabel('Simulations' )
ylabel('PYRs HWHH ({\circ})')
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'Bar.tif')
%title ('Mean firing rates in the column (all cells) in 4 trials')
%xticklabels
box off

%legend ('Control', 'VIP_A_c_t', 'VIP_D_e_A_c_t',  'VIP_A_c_t', 'VIP_D_e_A_c_t', 'VIP_A_c_t', 'VIP_D_e_A_c_t')
%legend ('Control', 'VIP_A_c_t', 'VIP_D_e_A_c_t')
%%
C.FaceColor = 'flat';
C.CData(1,:) = [0, 0.4470, 0.7410]; %[1 0 0];
C.CData(2,:) = [0.8500, 0.3250, 0.0980]; %[0 1 0];
C.CData(3,:) = [0.9290, 0.6940, 0.1250]; %[0 0 1];
C.CData(4,:) = [0.4940, 0.1840, 0.5560];
C.CData(5,:) = [0.4660, 0.6740, 0.1880];

C.CData(6,:) = [0.3010, 0.7450, 0.9330];
C.CData(7,:) = [0.6350, 0.0780, 0.1840];
C.CData(8,:) = [0, 0.5, 0];

% P1=[0, 0.4470, 0.7410];
% P2=[0.8500, 0.3250, 0.0980];
% P3=[0.9290, 0.6940, 0.1250];
% P4=[0.4940, 0.1840, 0.5560];
% P5=[0.4660, 0.6740, 0.1880];
% P6=[0.3010, 0.7450, 0.9330];
% P7=[0.6350, 0.0780, 0.1840];
% P8=[0, 0.5, 0];


E1.Color = 'k';
E2.Color = 'k';
E3.Color = 'k';
E4.Color = 'k';
E5.Color = 'k';

E6.Color = 'k';
E7.Color = 'k';
E8.Color = 'k';

%%

figure;

T1=length(H_C1_PYRs)
T2=length(H_VIP_Act_06P1_PYRs)
T3=length(H_VIP_Act_12P1_PYRs)
T4=length(H_VIP_Act_18P1_PYRs)
T5=length(H_VIP_Act_25P1_PYRs)
T6=length(H_VIP_Act_50P1_PYRs)
T7=length(H_VIP_Act_75P1_PYRs)
T8=length(H_VIP_Act_100P1_PYRs)

T9=length(H_VIP_DeAct_06P1_PYRs)
T10=length(H_VIP_DeAct_12P1_PYRs)
T11=length(H_VIP_DeAct_18P1_PYRs)
T12=length(H_VIP_DeAct_25P1_PYRs)
T13=length(H_VIP_DeAct_50P1_PYRs)
T14=length(H_VIP_DeAct_75P1_PYRs)
T15=length(H_VIP_DeAct_100P1_PYRs)


H=[H_C1_PYRs' H_VIP_Act_06P1_PYRs' H_VIP_Act_12P1_PYRs' H_VIP_Act_18P1_PYRs' H_VIP_Act_25P1_PYRs' H_VIP_Act_50P1_PYRs' H_VIP_Act_75P1_PYRs' H_VIP_Act_100P1_PYRs' H_VIP_DeAct_06P1_PYRs' H_VIP_DeAct_12P1_PYRs' H_VIP_DeAct_18P1_PYRs' H_VIP_DeAct_25P1_PYRs' H_VIP_DeAct_50P1_PYRs' H_VIP_DeAct_75P1_PYRs' H_VIP_DeAct_100P1_PYRs'];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8),8*ones(1,T9),9*ones(1,T10),10*ones(1,T11),11*ones(1,T12),12*ones(1,T13),13*ones(1,T14),14*ones(1,T15)]

boxplot(H,T)



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
xticklabels({ 'Control'; 'VIP_Act 06%'; 'VIP_Act 12%'; 'VIP_Act 18%'; 'VIP_Act 25%'; 'VIP_Act 50%'; 'VIP_Act 75%'; 'VIP_Act 100%';'VIP_DeAct 06%'; 'VIP_DeAct 12%'; 'VIP_DeAct 18%'; 'VIP_DeAct 25%'; 'VIP_DeAct 50%'; 'VIP_DeAct 75%'; 'VIP_DeAct 100%'})

xlabel('Simulations' )
ylabel('PYRs HWHH ({\circ})')
box off

set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'0.tif')

%% ttest
[h_06,p_06] = ttest2(H_C1_PYRs,H_VIP_Act_06P1_PYRs) %H_C1,H_VIP_Act1 
[h_12,p_12] = ttest2(H_C1_PYRs,H_VIP_Act_12P1_PYRs) %H_C1,H_VIP_Act1 
[h_18,p_18] = ttest2(H_C1_PYRs,H_VIP_Act_18P1_PYRs) %H_C1,H_VIP_Act1 
[h_25,p_25] = ttest2(H_C1_PYRs,H_VIP_Act_25P1_PYRs) %H_C1,H_VIP_Act1 
[h_50,p_50] = ttest2(H_C1_PYRs,H_VIP_Act_50P1_PYRs) %H_C1,H_VIP_Act1 
[h_75,p_75] = ttest2(H_C1_PYRs,H_VIP_Act_75P1_PYRs) %H_C1,H_VIP_Act1 
[h_100,p_100] = ttest2(H_C1_PYRs,H_VIP_Act_100P1_PYRs) %H_C1,H_VIP_Act1 

[h_06_DeAct,p_06_DeAct] = ttest2(H_C1_PYRs,H_VIP_DeAct_06P1_PYRs) %H_C1,H_VIP_DeAct1 
[h_12_DeAct,p_12_DeAct] = ttest2(H_C1_PYRs,H_VIP_DeAct_12P1_PYRs) %H_C1,H_VIP_DeAct1 
[h_18_DeAct,p_18_DeAct] = ttest2(H_C1_PYRs,H_VIP_DeAct_18P1_PYRs) %H_C1,H_VIP_DeAct1 
[h_25_DeAct,p_25_DeAct] = ttest2(H_C1_PYRs,H_VIP_DeAct_25P1_PYRs) %H_C1,H_VIP_DeAct1 
[h_50_DeAct,p_50_DeAct] = ttest2(H_C1_PYRs,H_VIP_DeAct_50P1_PYRs) %H_C1,H_VIP_DeAct1 
[h_75_DeAct,p_75_DeAct] = ttest2(H_C1_PYRs,H_VIP_DeAct_75P1_PYRs) %H_C1,H_VIP_DeAct1 
[h_100_DeAct,p_100_DeAct] = ttest2(H_C1_PYRs,H_VIP_DeAct_100P1_PYRs) %H_C1,H_VIP_DeAct1 


%%
figure;

T1=length(H_C1_PYRs)
T2=length(H_VIP_Act_06P1_PYRs)
T3=length(H_VIP_Act_12P1_PYRs)
T4=length(H_VIP_Act_18P1_PYRs)
T5=length(H_VIP_Act_25P1_PYRs)
T6=length(H_VIP_Act_50P1_PYRs)
T7=length(H_VIP_Act_75P1_PYRs)
T8=length(H_VIP_Act_100P1_PYRs)

T9=length(H_VIP_DeAct_06P1_PYRs)
T10=length(H_VIP_DeAct_12P1_PYRs)
T11=length(H_VIP_DeAct_18P1_PYRs)
T12=length(H_VIP_DeAct_25P1_PYRs)
T13=length(H_VIP_DeAct_50P1_PYRs)
T14=length(H_VIP_DeAct_75P1_PYRs)
T15=length(H_VIP_DeAct_100P1_PYRs)


H=[H_C1_PYRs' H_VIP_Act_06P1_PYRs' H_VIP_Act_12P1_PYRs' H_VIP_Act_18P1_PYRs' H_VIP_Act_25P1_PYRs' H_VIP_Act_50P1_PYRs' H_VIP_Act_75P1_PYRs' H_VIP_Act_100P1_PYRs' H_VIP_DeAct_06P1_PYRs' H_VIP_DeAct_12P1_PYRs' H_VIP_DeAct_18P1_PYRs' H_VIP_DeAct_25P1_PYRs' H_VIP_DeAct_50P1_PYRs' H_VIP_DeAct_75P1_PYRs' H_VIP_DeAct_100P1_PYRs' ];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8),8*ones(1,T9),9*ones(1,T10),10*ones(1,T11),11*ones(1,T12),12*ones(1,T13),13*ones(1,T14),14*ones(1,T15)];

%boxplot(H,T)
i = 15;  % number of boxplots
x = 1:i;
%colors = rand(i, 3);
% P1= [0 0.4470 0.8410];      %[0.00,0.45,0.74]; % [0.00,0.45,0.74]
% P2= [0.9000 0.2250 0.0580]; %[0.85,0.33,0.10]; %'g' %0.85,0.33,0.10
% P3= [0.9290 0.6940 0.1250]; %[0.93,0.69,0.13]; %'y' %0.93,0.69,0.13
% P4= [0.9290 0.6940 0.1250];
% P5= [0.9290 0.6940 0.1250];

P1=[0, 0.4470, 0.7410];
P2=[0.8500, 0.3250, 0.0980];
P3=[0.9290, 0.6940, 0.1250];
P4=[0.4940, 0.1840, 0.5560];
P5=[0.4660, 0.6740, 0.1880];
P6=[0.3010, 0.7450, 0.9330];
P7=[0.6350, 0.0780, 0.1840];
P8=[0, 0.5, 0];
P9=[0, 0.5, 0];
P10=[0, 0.5, 0];
P11=[0, 0.5, 0];
P12=[0, 0.5, 0];
P13=[0, 0.5, 0];
P14=[0, 0.5, 0];
P15=[0, 0.5, 0];

% P1= [0.00,0.45,0.74] % [0.00,0.45,0.74]
% P2= [0.85,0.33,0.10] %'g' %0.85,0.33,0.10
% P3= [0.93,0.69,0.13] %'y' %0.93,0.69,0.13
% P4= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% P5= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% P6= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
% P7= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19
% P8= [0.74,0.25,0.25] %'m' %0.47,0.67,0.19
% P9(1).Color= [0.87,0.45,0.75] %'m' %0.47,0.67,0.19

colors = [ P15;P14;P13;P12;P11;P10;P9; P8;P7;P6;P5;P4;P3;P2;P1];


boxplot(H,T) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
xticklabels({ 'Control'; 'VIP_Act 06%'; 'VIP_Act 12%'; 'VIP_Act 18%'; 'VIP_Act 25%'; 'VIP_Act 50%'; 'VIP_Act 75%'; 'VIP_Act 100%'; 'VIP_DeAct 06%'; 'VIP_DeAct 12%'; 'VIP_DeAct 18%'; 'VIP_DeAct 25%'; 'VIP_DeAct 50%'; 'VIP_DeAct 75%'; 'VIP_DeAct 100%'})

xlabel('Simulations' )
ylabel('PYRs HWHH ({\circ})')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.27)])
xt = get(gca, 'XTick');

hold on
if h_06==1 
plot(xt([1 2]), [1 1]*max(yt)*1.13, '-k',  mean(xt([1 2])), max(yt)*1.21, '*k')
end

hold on
if h_12==1 
plot(xt([1 3]), [1 1]*max(yt)*1.14, '-k')%,  mean(xt([1 3])), max(yt)*1.18, '*k')
end

hold on
if h_18==1 
plot(xt([1 4]), [1 1]*max(yt)*1.15, '-k')%,  mean(xt([1 4])), max(yt)*1.18, '*k')
end

hold on
if h_25==1 
plot(xt([1 5]), [1 1]*max(yt)*1.16, '-k')%,  mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_50==1
hold on
plot(xt([1 6]), [1 1]*max(yt)*1.17, '-k')  %mean(xt([1 3])), max(yt)*1.16, '*k')
end

if h_75==1
hold on
plot(xt([1 7]), [1 1]*max(yt)*1.18, '-k')  %mean(xt([1 4])), max(yt)*1.17, '*k')
end

if h_100==1
hold on
plot(xt([1 8]), [1 1]*max(yt)*1.19, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_06_DeAct==1
hold on
plot(xt([1 9]), [1 1]*max(yt)*1.20, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_12_DeAct==1
hold on
plot(xt([1 10]), [1 1]*max(yt)*1.21, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_18_DeAct==1
hold on
plot(xt([1 11]), [1 1]*max(yt)*1.22, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_25_DeAct==1
hold on
plot(xt([1 12]), [1 1]*max(yt)*1.23, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_50_DeAct==1
hold on
plot(xt([1 13]), [1 1]*max(yt)*1.24, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_75_DeAct==1
hold on
plot(xt([1 14]), [1 1]*max(yt)*1.25, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_100_DeAct==1
hold on
plot(xt([1 15]), [1 1]*max(yt)*1.26, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'0_P.tif')



%

%
% med = median(H_C1);
% plot(1,med,'ro-'); hold on
% 
% med1 = median(H_VIP_Act_25P1);
% plot(2,med1,'ro-'); hold on;
% 
% med2 = median(H_VIP_Act_50P1);
% plot(3,med2,'ro-'); hold on;
% 
% med3 = median(H_VIP_Act_75P1);
% plot(4,med3,'ro-'); hold on;
% 
% med4 = median(H_VIP_Act_100P1);
% plot(5,med4,'ro-'); hold on;
% 
% Med=[med med1 med2 med3 med4];
% plot(Med,'Color','b'); hold on;

%%
% med = median(H);
% % Visualize the result
% figure
% boxplot(Data)
% hold on
% plot(med,'ro-')


% yt = get(gca, 'YTick');
% axis([xlim    0  ceil(max(yt)*1.2)])
% xt = get(gca, 'XTick');
% hold on
% plot(xt([1 3]), [1 1]*max(yt)*1.13, '-k',  mean(xt([1 3])), max(yt)*1.15, '*k')
% hold off
% 
% yt = get(gca, 'YTick');
% axis([xlim    0  ceil(max(yt)*1.2)])
% xt = get(gca, 'XTick');
% hold on
% plot(xt([1 4]), [1 1]*max(yt)*1.13, '-k',  mean(xt([1 4])), max(yt)*1.15, '*k')
% hold off
% 
% yt = get(gca, 'YTick');
% axis([xlim    0  ceil(max(yt)*1.2)])
% xt = get(gca, 'XTick');
% hold on
% plot(xt([1 5]), [1 1]*max(yt)*1.13, '-k',  mean(xt([1 5])), max(yt)*1.15, '*k')
% hold off
%
%%
% yt = get(gca, 'YTick');
% axis([xlim    0  ceil(max(yt)*1.22)])
% xt = get(gca, 'XTick');
% hold on
% plot(xt([1 3]), [1 1]*max(yt)*1.135, '-k',  mean(xt([1 3])), max(yt)*1.155, '*k')
% hold off
% 
% yt = get(gca, 'YTick');
% axis([xlim    0  ceil(max(yt)*1.24)])
% xt = get(gca, 'XTick');
% hold on
% plot(xt([1 4]), [1 1]*max(yt)*1.14, '-k',  mean(xt([1 4])), max(yt)*1.16, '*k')
% hold off


set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'0_P.tif')
%%
% %% Original Code
% figure
% d = randi(10, 20, 3);
% figure(1)
% boxplot(d)
% yt = get(gca, 'YTick');
% axis([xlim    0  ceil(max(yt)*1.2)])
% xt = get(gca, 'XTick');
% hold on
% plot(xt([1 3]), [1 1]*max(yt)*1.1, '-k',  mean(xt([2 3])), max(yt)*1.15, '*k')
% hold off

%%

figure;

T1=length(H_C1_PYRs)
T2=length(H_VIP_Act_06P1_PYRs)
T3=length(H_VIP_Act_12P1_PYRs)
T4=length(H_VIP_Act_18P1_PYRs)
T5=length(H_VIP_Act_25P1_PYRs)
T6=length(H_VIP_Act_50P1_PYRs)
T7=length(H_VIP_Act_75P1_PYRs)
T8=length(H_VIP_Act_100P1_PYRs)

T9=length(H_VIP_DeAct_06P1_PYRs)
T10=length(H_VIP_DeAct_12P1_PYRs)
T11=length(H_VIP_DeAct_18P1_PYRs)
T12=length(H_VIP_DeAct_25P1_PYRs)
T13=length(H_VIP_DeAct_50P1_PYRs)
T14=length(H_VIP_DeAct_75P1_PYRs)
T15=length(H_VIP_DeAct_100P1_PYRs)



% H=[H_C1_PYRs' H_VIP_Act_06P1_PYRs' H_VIP_Act_12P1_PYRs' H_VIP_Act_18P1_PYRs'  H_VIP_Act_25P1_PYRs' H_VIP_Act_50P1_PYRs' H_VIP_Act_75P1_PYRs' H_VIP_Act_100P1_PYRs' H_VIP_DeAct_06P1_PYRs' H_VIP_DeAct_12P1_PYRs' H_VIP_DeAct_18P1_PYRs'  H_VIP_DeAct_25P1_PYRs' H_VIP_DeAct_50P1_PYRs' H_VIP_DeAct_75P1_PYRs' H_VIP_DeAct_100P1_PYRs' ];
% T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8),8*ones(1,T9),9*ones(1,T10),10*ones(1,T11),11*ones(1,T12),12*ones(1,T13),13*ones(1,T14),14*ones(1,T15)];

H=[H_C1_PYRs' H_VIP_Act_06P1_PYRs' H_VIP_Act_12P1_PYRs' H_VIP_Act_18P1_PYRs' H_VIP_Act_25P1_PYRs' H_VIP_Act_50P1_PYRs' H_VIP_Act_75P1_PYRs' H_VIP_Act_100P1_PYRs' H_VIP_DeAct_06P1_PYRs' H_VIP_DeAct_12P1_PYRs' H_VIP_DeAct_18P1_PYRs' H_VIP_DeAct_25P1_PYRs' H_VIP_DeAct_50P1_PYRs' H_VIP_DeAct_75P1_PYRs' H_VIP_DeAct_100P1_PYRs' ];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8),8*ones(1,T9),9*ones(1,T10),10*ones(1,T11),11*ones(1,T12),12*ones(1,T13),13*ones(1,T14),14*ones(1,T15)];



%boxplot(H,T)
i = 15;  % number of boxplots
x = 1:i;
%colors = rand(i, 3);
% P1= [0 0.4470 0.8410];      %[0.00,0.45,0.74]; % [0.00,0.45,0.74]
% P2= [0.9000 0.2250 0.0580]; %[0.85,0.33,0.10]; %'g' %0.85,0.33,0.10
% P3= [0.9290 0.6940 0.1250]; %[0.93,0.69,0.13]; %'y' %0.93,0.69,0.13
% P4= [0.9290 0.6940 0.1250];
% P5= [0.9290 0.6940 0.1250];

P1=[0, 0.4470, 0.7410];
P2=[0.8500, 0.3250, 0.0980];
P3=[0.9290, 0.6940, 0.1250];
P4=[0.4940, 0.1840, 0.5560];
P5=[0.4660, 0.6740, 0.1880];
P6=[0.3010, 0.7450, 0.9330];
P7=[0.6350, 0.0780, 0.1840];
P8=[0, 0.5, 0];

P9=[0.8500, 0.3250, 0.0980];
P10=[0.9290, 0.6940, 0.1250];
P11=[0.4940, 0.1840, 0.5560];
P12=[0.4660, 0.6740, 0.1880];
P13=[0.3010, 0.7450, 0.9330];
P14=[0.6350, 0.0780, 0.1840];
P15=[0, 0.5, 0];

% P1= [0.00,0.45,0.74] % [0.00,0.45,0.74]
% P2= [0.85,0.33,0.10] %'g' %0.85,0.33,0.10
% P3= [0.93,0.69,0.13] %'y' %0.93,0.69,0.13
% P4= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% P5= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% P6= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
% P7= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19
% P8= [0.74,0.25,0.25] %'m' %0.47,0.67,0.19

colors = [ P15;P14;P13;P12;P11;P10;P9; P8;P7;P6;P5;P4;P3;P2;P1];


boxplot(H,T) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
xticklabels({ 'Control'; 'VIP_Act 6%'; 'VIP_Act 12%'; 'VIP_Act 18%'; 'VIP_Act 25%'; 'VIP_Act 50%'; 'VIP_Act 75%'; 'VIP_Act 100%'; 'VIP_DeAct 6%'; 'VIP_DeAct 12%'; 'VIP_DeAct 18%'; 'VIP_DeAct 25%'; 'VIP_DeAct 50%'; 'VIP_DeAct 75%'; 'VIP_DeAct 100%'})

xlabel('Simulations' )
ylabel('PYRs HWHH ({\circ})')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.27)])
xt = get(gca, 'XTick');
hold on
if h_06==1 
plot(xt([1 2]), [1 1]*max(yt)*1.13, '-k',  mean(xt([1 2])), max(yt)*1.21, '*k')
end

hold on
if h_12==1 
plot(xt([1 3]), [1 1]*max(yt)*1.14, '-k')%,  mean(xt([1 3])), max(yt)*1.18, '*k')
end

hold on
if h_18==1 
plot(xt([1 4]), [1 1]*max(yt)*1.15, '-k')%,  mean(xt([1 4])), max(yt)*1.18, '*k')
end

hold on
if h_25==1 
plot(xt([1 5]), [1 1]*max(yt)*1.16, '-k')%,  mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_50==1
hold on
plot(xt([1 6]), [1 1]*max(yt)*1.17, '-k',  mean(xt([1 8])), max(yt)*1.21, '*k')
end

if h_75==1
hold on
plot(xt([1 7]), [1 1]*max(yt)*1.18, '-k')  %mean(xt([1 4])), max(yt)*1.17, '*k')
end

if h_100==1
hold on
plot(xt([1 8]), [1 1]*max(yt)*1.19, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_06_DeAct==1
hold on
plot(xt([1 9]), [1 1]*max(yt)*1.20, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_12_DeAct==1
hold on
plot(xt([1 10]), [1 1]*max(yt)*1.21, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_18_DeAct==1
hold on
plot(xt([1 11]), [1 1]*max(yt)*1.22, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_25_DeAct==1
hold on
plot(xt([1 12]), [1 1]*max(yt)*1.23, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_50_DeAct==1
hold on
plot(xt([1 13]), [1 1]*max(yt)*1.24, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_75_DeAct==1
hold on
plot(xt([1 14]), [1 1]*max(yt)*1.25, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_100_DeAct==1
hold on
plot(xt([1 15]), [1 1]*max(yt)*1.26, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end
%

%
med = median(H_C1_PYRs);
plot(1,med,'ro-','Color','k'); hold on

med1 = median(H_VIP_Act_06P1_PYRs);
plot(2,med1,'ro-','Color','k'); hold on;

med2 = median(H_VIP_Act_12P1_PYRs);
plot(3,med2,'ro-','Color','k'); hold on;

med3 = median(H_VIP_Act_18P1_PYRs);
plot(4,med3,'ro-','Color','k'); hold on;

med4 = median(H_VIP_Act_25P1_PYRs);
plot(5,med4,'ro-','Color','k'); hold on;

med5 = median(H_VIP_Act_50P1_PYRs);
plot(6,med5,'ro-','Color','k'); hold on;

med6 = median(H_VIP_Act_75P1_PYRs);
plot(7,med6,'ro-','Color','k'); hold on;

med7 = median(H_VIP_Act_100P1_PYRs);
plot(8,med7,'ro-','Color','k'); hold on;

med8 = median(H_VIP_DeAct_06P1_PYRs);
plot(9,med1,'ro-','Color','k'); hold on;

med9 = median(H_VIP_DeAct_12P1_PYRs);
plot(10,med2,'ro-','Color','k'); hold on;

med10 = median(H_VIP_DeAct_18P1_PYRs);
plot(11,med3,'ro-','Color','k'); hold on;

med11 = median(H_VIP_DeAct_25P1_PYRs);
plot(12,med4,'ro-','Color','k'); hold on;

med12 = median(H_VIP_DeAct_50P1_PYRs);
plot(13,med5,'ro-','Color','k'); hold on;

med13 = median(H_VIP_DeAct_75P1_PYRs);
plot(14,med6,'ro-','Color','k'); hold on;

med14 = median(H_VIP_DeAct_100P1_PYRs);
plot(15,med7,'ro-','Color','k'); hold on;


Med=[med med1 med2 med3 med4 med5 med6 med7 med8 med9 med10 med11 med12 med13 med14 ];
plot(Med,'Color','k','LineStyle',':','LineWidth',3 ); hold on;

set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [5.83*2, 4.38*2])
% saveas(gcf,'0_P_C.tif')

saveas(gcf,'0_PYRs_VIP_Mod.tif')
saveas(gcf,'0_PYRs_VIP_Mod.fig')
saveas(gcf,'0_PYRs_VIP_Mod.eps','psc2')
%%
figure;

T1=length(H_C1_PYRs)
T2=length(H_VIP_Act_06P1_PYRs)
T3=length(H_VIP_Act_12P1_PYRs)
T4=length(H_VIP_Act_18P1_PYRs)
T5=length(H_VIP_Act_25P1_PYRs)
T6=length(H_VIP_Act_50P1_PYRs)
T7=length(H_VIP_Act_75P1_PYRs)
T8=length(H_VIP_Act_100P1_PYRs)

T9=length(H_VIP_DeAct_06P1_PYRs)
T10=length(H_VIP_DeAct_12P1_PYRs)
T11=length(H_VIP_DeAct_18P1_PYRs)
T12=length(H_VIP_DeAct_25P1_PYRs)
T13=length(H_VIP_DeAct_50P1_PYRs)
T14=length(H_VIP_DeAct_75P1_PYRs)
T15=length(H_VIP_DeAct_100P1_PYRs)



% H=[H_C1_PYRs' H_VIP_Act_06P1_PYRs' H_VIP_Act_12P1_PYRs' H_VIP_Act_18P1_PYRs'  H_VIP_Act_25P1_PYRs' H_VIP_Act_50P1_PYRs' H_VIP_Act_75P1_PYRs' H_VIP_Act_100P1_PYRs' H_VIP_DeAct_06P1_PYRs' H_VIP_DeAct_12P1_PYRs' H_VIP_DeAct_18P1_PYRs'  H_VIP_DeAct_25P1_PYRs' H_VIP_DeAct_50P1_PYRs' H_VIP_DeAct_75P1_PYRs' H_VIP_DeAct_100P1_PYRs' ];
% T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8),8*ones(1,T9),9*ones(1,T10),10*ones(1,T11),11*ones(1,T12),12*ones(1,T13),13*ones(1,T14),14*ones(1,T15)];

H=[H_C1_PYRs' H_VIP_Act_06P1_PYRs' H_VIP_Act_12P1_PYRs' H_VIP_Act_18P1_PYRs' H_VIP_Act_25P1_PYRs' H_VIP_Act_50P1_PYRs' H_VIP_Act_75P1_PYRs' H_VIP_Act_100P1_PYRs' ]; %H_VIP_DeAct_06P1_PYRs' H_VIP_DeAct_12P1_PYRs' H_VIP_DeAct_18P1_PYRs' H_VIP_DeAct_25P1_PYRs' H_VIP_DeAct_50P1_PYRs' H_VIP_DeAct_75P1_PYRs' H_VIP_DeAct_100P1_PYRs' ];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8)]; %,8*ones(1,T9),9*ones(1,T10),10*ones(1,T11),11*ones(1,T12),12*ones(1,T13),13*ones(1,T14),14*ones(1,T15)];



%boxplot(H,T)
i = 8;  % number of boxplots
x = 1:i;
%colors = rand(i, 3);
% P1= [0 0.4470 0.8410];      %[0.00,0.45,0.74]; % [0.00,0.45,0.74]
% P2= [0.9000 0.2250 0.0580]; %[0.85,0.33,0.10]; %'g' %0.85,0.33,0.10
% P3= [0.9290 0.6940 0.1250]; %[0.93,0.69,0.13]; %'y' %0.93,0.69,0.13
% P4= [0.9290 0.6940 0.1250];
% P5= [0.9290 0.6940 0.1250];

P1=[0, 0.4470, 0.7410];
P2=[0.8500, 0.3250, 0.0980];
P3=[0.9290, 0.6940, 0.1250];
P4=[0.4940, 0.1840, 0.5560];
P5=[0.4660, 0.6740, 0.1880];
P6=[0.3010, 0.7450, 0.9330];
P7=[0.6350, 0.0780, 0.1840];
P8=[0, 0.5, 0];

% P1= [0.00,0.45,0.74] % [0.00,0.45,0.74]
% P2= [0.85,0.33,0.10] %'g' %0.85,0.33,0.10
% P3= [0.93,0.69,0.13] %'y' %0.93,0.69,0.13
% P4= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% P5= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% P6= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
% P7= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19
% P8= [0.74,0.25,0.25] %'m' %0.47,0.67,0.19

colors = [ P8;P7;P6;P5;P4;P3;P2;P1];


boxplot(H,T) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; 'VIP_Act 6%'; 'VIP_Act 12%'; 'VIP_Act 18%'; 'VIP_Act 25%'; 'VIP_Act 50%'; 'VIP_Act 75%'; 'VIP_Act 100%'}) %; 'VIP_DeAct 6%'; 'VIP_DeAct 12%'; 'VIP_DeAct 18%'; 'VIP_DeAct 25%'; 'VIP_DeAct 50%'; 'VIP_DeAct 75%'; 'VIP_DeAct 100%'})

xlabel('Simulations' )
ylabel('PYRs HWHH ({\circ})')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.21)])
xt = get(gca, 'XTick');
hold on
if h_06==1 
plot(xt([1 2]), [1 1]*max(yt)*1.120, '-k'); %,  mean(xt([1 2])), max(yt)*1.21, '*k')
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
plot(xt([1 7]), [1 1]*max(yt)*1.145, '-k')%,  mean(xt([1 7])), max(yt)*1.17, '*k')
end

if h_100==1
hold on
plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k',  mean(xt([1 8])), max(yt)*1.158, '*k')
end
%

%
med = median(H_C1_PYRs);
plot(1,med,'ro-','Color','k'); hold on

med1 = median(H_VIP_Act_06P1_PYRs);
plot(2,med1,'ro-','Color','k'); hold on;

med2 = median(H_VIP_Act_12P1_PYRs);
plot(3,med2,'ro-','Color','k'); hold on;

med3 = median(H_VIP_Act_18P1_PYRs);
plot(4,med3,'ro-','Color','k'); hold on;

med4 = median(H_VIP_Act_25P1_PYRs);
plot(5,med4,'ro-','Color','k'); hold on;

med5 = median(H_VIP_Act_50P1_PYRs);
plot(6,med5,'ro-','Color','k'); hold on;

med6 = median(H_VIP_Act_75P1_PYRs);
plot(7,med6,'ro-','Color','k'); hold on;

med7 = median(H_VIP_Act_100P1_PYRs);
plot(8,med7,'ro-','Color','k'); hold on;

% med8 = median(H_VIP_DeAct_06P1_PYRs);
% plot(9,med1,'ro-','Color','k'); hold on;
% 
% med9 = median(H_VIP_DeAct_12P1_PYRs);
% plot(10,med2,'ro-','Color','k'); hold on;
% 
% med10 = median(H_VIP_DeAct_18P1_PYRs);
% plot(11,med3,'ro-','Color','k'); hold on;
% 
% med11 = median(H_VIP_DeAct_25P1_PYRs);
% plot(12,med4,'ro-','Color','k'); hold on;
% 
% med12 = median(H_VIP_DeAct_50P1_PYRs);
% plot(13,med5,'ro-','Color','k'); hold on;
% 
% med13 = median(H_VIP_DeAct_75P1_PYRs);
% plot(14,med6,'ro-','Color','k'); hold on;
% 
% med14 = median(H_VIP_DeAct_100P1_PYRs);
% plot(15,med7,'ro-','Color','k'); hold on;


Med=[med med1 med2 med3 med4 med5 med6 med7 ];% med8 med9 med10 med11 med12 med13 med14 ];
plot(Med,'Color','k','LineStyle',':','LineWidth',3 ); hold on;

set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [5.83*2, 4.38*2])
% saveas(gcf,'0_P_C.tif')

saveas(gcf,'0_PYRs_VIP_Mod_Act.tif')
saveas(gcf,'0_PYRs_VIP_Mod_Act.fig')
saveas(gcf,'0_PYRs_VIP_Mod_Act.eps','psc2')

%%
figure;

T1=length(H_C1_PYRs)
T2=length(H_VIP_Act_06P1_PYRs)
T3=length(H_VIP_Act_12P1_PYRs)
T4=length(H_VIP_Act_18P1_PYRs)
T5=length(H_VIP_Act_25P1_PYRs)
T6=length(H_VIP_Act_50P1_PYRs)
T7=length(H_VIP_Act_75P1_PYRs)
T8=length(H_VIP_Act_100P1_PYRs)

T9=length(H_VIP_DeAct_06P1_PYRs)
T10=length(H_VIP_DeAct_12P1_PYRs)
T11=length(H_VIP_DeAct_18P1_PYRs)
T12=length(H_VIP_DeAct_25P1_PYRs)
T13=length(H_VIP_DeAct_50P1_PYRs)
T14=length(H_VIP_DeAct_75P1_PYRs)
T15=length(H_VIP_DeAct_100P1_PYRs)



% H=[H_C1_PYRs' H_VIP_Act_06P1_PYRs' H_VIP_Act_12P1_PYRs' H_VIP_Act_18P1_PYRs'  H_VIP_Act_25P1_PYRs' H_VIP_Act_50P1_PYRs' H_VIP_Act_75P1_PYRs' H_VIP_Act_100P1_PYRs' H_VIP_DeAct_06P1_PYRs' H_VIP_DeAct_12P1_PYRs' H_VIP_DeAct_18P1_PYRs'  H_VIP_DeAct_25P1_PYRs' H_VIP_DeAct_50P1_PYRs' H_VIP_DeAct_75P1_PYRs' H_VIP_DeAct_100P1_PYRs' ];
% T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8),8*ones(1,T9),9*ones(1,T10),10*ones(1,T11),11*ones(1,T12),12*ones(1,T13),13*ones(1,T14),14*ones(1,T15)];

H=[H_C1_PYRs' H_VIP_DeAct_06P1_PYRs' H_VIP_DeAct_12P1_PYRs' H_VIP_DeAct_18P1_PYRs' H_VIP_DeAct_25P1_PYRs' H_VIP_DeAct_50P1_PYRs' H_VIP_DeAct_75P1_PYRs' H_VIP_DeAct_100P1_PYRs' ];
T=[zeros(1,T1),8*ones(1,T9),9*ones(1,T10),10*ones(1,T11),11*ones(1,T12),12*ones(1,T13),13*ones(1,T14),14*ones(1,T15)];



%boxplot(H,T)
i = 8;  % number of boxplots
x = 1:i;
%colors = rand(i, 3);
% P1= [0 0.4470 0.8410];      %[0.00,0.45,0.74]; % [0.00,0.45,0.74]
% P2= [0.9000 0.2250 0.0580]; %[0.85,0.33,0.10]; %'g' %0.85,0.33,0.10
% P3= [0.9290 0.6940 0.1250]; %[0.93,0.69,0.13]; %'y' %0.93,0.69,0.13
% P4= [0.9290 0.6940 0.1250];
% P5= [0.9290 0.6940 0.1250];

P1=[0, 0.4470, 0.7410];
P2=[0.8500, 0.3250, 0.0980];
P3=[0.9290, 0.6940, 0.1250];
P4=[0.4940, 0.1840, 0.5560];
P5=[0.4660, 0.6740, 0.1880];
P6=[0.3010, 0.7450, 0.9330];
P7=[0.6350, 0.0780, 0.1840];
P8=[0, 0.5, 0];

% P1= [0.00,0.45,0.74] % [0.00,0.45,0.74]
% P2= [0.85,0.33,0.10] %'g' %0.85,0.33,0.10
% P3= [0.93,0.69,0.13] %'y' %0.93,0.69,0.13
% P4= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% P5= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% P6= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
% P7= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19
% P8= [0.74,0.25,0.25] %'m' %0.47,0.67,0.19

colors = [ P8;P7;P6;P5;P4;P3;P2;P1];


boxplot(H,T) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; 'VIP_DeAct 6%'; 'VIP_DeAct 12%'; 'VIP_DeAct 18%'; 'VIP_DeAct 25%'; 'VIP_DeAct 50%'; 'VIP_DeAct 75%'; 'VIP_DeAct 100%'})

xlabel('Simulations' )
ylabel('PYRs HWHH ({\circ})')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.21)])
xt = get(gca, 'XTick');
hold on

if h_06_DeAct==1
hold on
plot(xt([1 2]), [1 1]*max(yt)*1.120, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_12_DeAct==1
hold on
plot(xt([1 3]), [1 1]*max(yt)*1.125, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_18_DeAct==1
hold on
plot(xt([1 4]), [1 1]*max(yt)*1.130, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_25_DeAct==1
hold on
plot(xt([1 5]), [1 1]*max(yt)*1.135, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_50_DeAct==1
hold on
plot(xt([1 6]), [1 1]*max(yt)*1.140, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_75_DeAct==1
hold on
plot(xt([1 7]), [1 1]*max(yt)*1.145, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_100_DeAct==1
hold on
plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k',  mean(xt([1 8])), max(yt)*1.155, '*k')
end

%

%
med = median(H_C1_PYRs);
plot(1,med,'ro-','Color','k'); hold on

% med1 = median(H_VIP_Act_06P1_PYRs);
% plot(2,med1,'ro-','Color','k'); hold on;
% 
% med2 = median(H_VIP_Act_12P1_PYRs);
% plot(3,med2,'ro-','Color','k'); hold on;
% 
% med3 = median(H_VIP_Act_18P1_PYRs);
% plot(4,med3,'ro-','Color','k'); hold on;
% 
% med4 = median(H_VIP_Act_25P1_PYRs);
% plot(5,med4,'ro-','Color','k'); hold on;
% 
% med5 = median(H_VIP_Act_50P1_PYRs);
% plot(6,med5,'ro-','Color','k'); hold on;
% 
% med6 = median(H_VIP_Act_75P1_PYRs);
% plot(7,med6,'ro-','Color','k'); hold on;
% 
% med7 = median(H_VIP_Act_100P1_PYRs);
% plot(8,med7,'ro-','Color','k'); hold on;

med8 = median(H_VIP_DeAct_06P1_PYRs);
plot(9,med1,'ro-','Color','k'); hold on;

med9 = median(H_VIP_DeAct_12P1_PYRs);
plot(10,med2,'ro-','Color','k'); hold on;

med10 = median(H_VIP_DeAct_18P1_PYRs);
plot(11,med3,'ro-','Color','k'); hold on;

med11 = median(H_VIP_DeAct_25P1_PYRs);
plot(12,med4,'ro-','Color','k'); hold on;

med12 = median(H_VIP_DeAct_50P1_PYRs);
plot(13,med5,'ro-','Color','k'); hold on;

med13 = median(H_VIP_DeAct_75P1_PYRs);
plot(14,med6,'ro-','Color','k'); hold on;

med14 = median(H_VIP_DeAct_100P1_PYRs);
plot(15,med7,'ro-','Color','k'); hold on;


Med=[med med8 med9 med10 med11 med12 med13 med14 ];
plot(Med,'Color','k','LineStyle',':','LineWidth',3 ); hold on;

set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [5.83*2, 4.38*2])
% saveas(gcf,'0_P_C.tif')

saveas(gcf,'0_PYRs_VIP_Mod_DeAct.tif')
saveas(gcf,'0_PYRs_VIP_Mod_DeAct.fig')
saveas(gcf,'0_PYRs_VIP_Mod_DeAct.eps','psc2')

%%
% Define the data
data = [h_06, p_06; h_12, p_12; h_18, p_18; h_25, p_25; h_50, p_50; h_75, p_75; h_100, p_100; ...
        h_06_DeAct, p_06_DeAct; h_12_DeAct, p_12_DeAct; h_18_DeAct, p_18_DeAct; h_25_DeAct, p_25_DeAct; h_50_DeAct, p_50_DeAct; h_75_DeAct, p_75_DeAct; h_100_DeAct, p_100_DeAct];

% Define row names
rowNames = {'Act_6%', 'Act_12%', 'Act_18%', 'Act_25%', 'Act_50%', 'Act_75%', 'Act_100%', ...
            'DeAct_6%', 'DeAct_12%', 'DeAct_18%', 'DeAct_25%', 'DeAct_50%', 'DeAct_75%', 'DeAct_100%'};

% Combine data and row names into a table
results = array2table(data, 'VariableNames', {'h_value', 'p_value'}, 'RowNames', rowNames);

% Specify the file name
fileName = 'HWHH_PYRs_VIP_Mod.xlsx';

% Write the table to an Excel file
writetable(results, fileName, 'WriteRowNames', true);

fprintf('Data saved to %s with row names included.\n', fileName);


