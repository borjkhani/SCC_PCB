Thr = 250; 
H_C_VIP(H_C_VIP>Thr)=NaN;
H_Sst_Act_06P_VIP(H_Sst_Act_06P_VIP>Thr)=NaN;
H_Sst_Act_12P_VIP(H_Sst_Act_12P_VIP>Thr)=NaN;
H_Sst_Act_18P_VIP(H_Sst_Act_18P_VIP>Thr)=NaN;
H_Sst_Act_25P_VIP(H_Sst_Act_25P_VIP>Thr)=NaN;
H_Sst_Act_50P_VIP(H_Sst_Act_50P_VIP>Thr)=NaN;
H_Sst_Act_75P_VIP(H_Sst_Act_75P_VIP>Thr)=NaN;
H_Sst_Act_100P_VIP(H_Sst_Act_100P_VIP>Thr)=NaN;

H_Sst_DeAct_06P_VIP(H_Sst_DeAct_06P_VIP>Thr)=NaN;
H_Sst_DeAct_12P_VIP(H_Sst_DeAct_12P_VIP>Thr)=NaN;
H_Sst_DeAct_18P_VIP(H_Sst_DeAct_18P_VIP>Thr)=NaN;
H_Sst_DeAct_25P_VIP(H_Sst_DeAct_25P_VIP>Thr)=NaN;
H_Sst_DeAct_50P_VIP(H_Sst_DeAct_50P_VIP>Thr)=NaN;
H_Sst_DeAct_75P_VIP(H_Sst_DeAct_75P_VIP>Thr)=NaN;
H_Sst_DeAct_100P_VIP(H_Sst_DeAct_100P_VIP>Thr)=NaN;


% % Remove Zeros
% H_C1_VIP=nonzeros(H_C_VIP);
% H_Sst_Act_06P1_VIP=nonzeros(H_Sst_Act_06P_VIP);
% H_Sst_Act_12P1_VIP=nonzeros(H_Sst_Act_12P_VIP);
% H_Sst_Act_18P1_VIP=nonzeros(H_Sst_Act_18P_VIP);
% H_Sst_Act_25P1_VIP=nonzeros(H_Sst_Act_25P_VIP);
% H_Sst_Act_50P1_VIP=nonzeros(H_Sst_Act_50P_VIP);
% H_Sst_Act_75P1_VIP=nonzeros(H_Sst_Act_75P_VIP);
% H_Sst_Act_100P1_VIP=nonzeros(H_Sst_Act_100P_VIP);
% 
% H_Sst_DeAct_06P1_VIP=nonzeros(H_Sst_DeAct_06P_VIP);
% H_Sst_DeAct_12P1_VIP=nonzeros(H_Sst_DeAct_12P_VIP);
% H_Sst_DeAct_18P1_VIP=nonzeros(H_Sst_DeAct_18P_VIP);
% H_Sst_DeAct_25P1_VIP=nonzeros(H_Sst_DeAct_25P_VIP);
% H_Sst_DeAct_50P1_VIP=nonzeros(H_Sst_DeAct_50P_VIP);
% H_Sst_DeAct_75P1_VIP=nonzeros(H_Sst_DeAct_75P_VIP);
% H_Sst_DeAct_100P1_VIP=nonzeros(H_Sst_DeAct_100P_VIP);

H_C1_VIP=H_C_VIP;
H_Sst_Act_06P1_VIP=H_Sst_Act_06P_VIP;
H_Sst_Act_12P1_VIP=H_Sst_Act_12P_VIP;
H_Sst_Act_18P1_VIP=H_Sst_Act_18P_VIP;
H_Sst_Act_25P1_VIP=H_Sst_Act_25P_VIP;
H_Sst_Act_50P1_VIP=H_Sst_Act_50P_VIP;
H_Sst_Act_75P1_VIP=H_Sst_Act_75P_VIP;
H_Sst_Act_100P1_VIP=H_Sst_Act_100P_VIP;

H_Sst_DeAct_06P1_VIP=H_Sst_DeAct_06P_VIP;
H_Sst_DeAct_12P1_VIP=H_Sst_DeAct_12P_VIP;
H_Sst_DeAct_18P1_VIP=H_Sst_DeAct_18P_VIP;
H_Sst_DeAct_25P1_VIP=H_Sst_DeAct_25P_VIP;
H_Sst_DeAct_50P1_VIP=H_Sst_DeAct_50P_VIP;
H_Sst_DeAct_75P1_VIP=H_Sst_DeAct_75P_VIP;
H_Sst_DeAct_100P1_VIP=H_Sst_DeAct_100P_VIP;


%%
H_C1_VIP=H_C1_VIP(~isnan(H_C1_VIP));
H_Sst_Act_06P1_VIP=H_Sst_Act_06P1_VIP(~isnan(H_Sst_Act_06P1_VIP));
H_Sst_Act_12P1_VIP=H_Sst_Act_12P1_VIP(~isnan(H_Sst_Act_12P1_VIP));
H_Sst_Act_18P1_VIP=H_Sst_Act_18P1_VIP(~isnan(H_Sst_Act_18P1_VIP));
H_Sst_Act_25P1_VIP=H_Sst_Act_25P1_VIP(~isnan(H_Sst_Act_25P1_VIP));
H_Sst_Act_50P1_VIP=H_Sst_Act_50P1_VIP(~isnan(H_Sst_Act_50P1_VIP));
H_Sst_Act_75P1_VIP=H_Sst_Act_75P1_VIP(~isnan(H_Sst_Act_75P1_VIP));
H_Sst_Act_100P1_VIP=H_Sst_Act_100P1_VIP(~isnan(H_Sst_Act_100P1_VIP));

H_Sst_DeAct_06P1_VIP=H_Sst_DeAct_06P1_VIP(~isnan(H_Sst_DeAct_06P1_VIP));
H_Sst_DeAct_12P1_VIP=H_Sst_DeAct_12P1_VIP(~isnan(H_Sst_DeAct_12P1_VIP));
H_Sst_DeAct_18P1_VIP=H_Sst_DeAct_18P1_VIP(~isnan(H_Sst_DeAct_18P1_VIP));
H_Sst_DeAct_25P1_VIP=H_Sst_DeAct_25P1_VIP(~isnan(H_Sst_DeAct_25P1_VIP));
H_Sst_DeAct_50P1_VIP=H_Sst_DeAct_50P1_VIP(~isnan(H_Sst_DeAct_50P1_VIP));
H_Sst_DeAct_75P1_VIP=H_Sst_DeAct_75P1_VIP(~isnan(H_Sst_DeAct_75P1_VIP));
H_Sst_DeAct_100P1_VIP=H_Sst_DeAct_100P1_VIP(~isnan(H_Sst_DeAct_100P1_VIP));

%%
 figure;
 
%  M1=mean(H_C);
%  M2=mean(H_Sst_Act);
%  M3=mean(H_Sst_DeAct);

 M1=mean(H_C1_VIP);
 M2=mean(H_Sst_Act_06P1_VIP);
 M3=mean(H_Sst_Act_12P1_VIP);
 M4=mean(H_Sst_Act_18P1_VIP);
 M5=mean(H_Sst_Act_25P1_VIP);
 M6=mean(H_Sst_Act_50P1_VIP);
 M7=mean(H_Sst_Act_75P1_VIP);
 M8=mean(H_Sst_Act_100P1_VIP);
 
 M9=mean(H_Sst_DeAct_06P1_VIP);
 M10=mean(H_Sst_DeAct_12P1_VIP);
 M11=mean(H_Sst_DeAct_18P1_VIP);
 M12=mean(H_Sst_DeAct_25P1_VIP);
 M13=mean(H_Sst_DeAct_50P1_VIP);
 M14=mean(H_Sst_DeAct_75P1_VIP);
 M15=mean(H_Sst_DeAct_100P1_VIP);
 
 %M=mean(mean(H_C));
 
M= [M1 M2 M3 M4 M5 M6 M7 M8 M9 M10 M11 M12 M13 M14 M15 ];
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
% % M2=mean(H_Sst_Act);
% %M=mean(mean(H_Sst_Act));
%  
% %  x=2;
% %  bar(M2)
% %  hold on;
% 
%  x=2;
% %x=1:8
%  y = mean(H_Sst_Act);
%  N = size(H_Sst_Act,1);
%  SEM = std(H_Sst_Act / sqrt(N));
%  CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%  E2=errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold on;
% 
% x=3;
% %x=1:8
%  y = mean(H_Sst_DeAct);
%  N = size(H_Sst_DeAct,1);
%  SEM = std(H_Sst_DeAct / sqrt(N));
%  CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%  E3=errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold on;

% x=1:8
x=1;
 y = mean(H_C1_VIP);
 N = size(H_C1_VIP,1);
 SEM = std(H_C1_VIP) / sqrt(N);
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E1=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

%
% M2=mean(H_Sst_Act);
%M=mean(mean(H_Sst_Act));
 
%  x=2;
%  bar(M2)
%  hold on;

x=2;
%x=1:8
 y = mean(H_Sst_Act_06P1_VIP);
 N = size(H_Sst_Act_06P1_VIP,1);
 SEM = std(H_Sst_Act_06P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=3;
%x=1:8
 y = mean(H_Sst_Act_12P1_VIP);
 N = size(H_Sst_Act_12P1_VIP,1);
 SEM = std(H_Sst_Act_12P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=4;
%x=1:8
 y = mean(H_Sst_Act_18P1_VIP);
 N = size(H_Sst_Act_18P1_VIP,1);
 SEM = std(H_Sst_Act_18P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=5;
%x=1:8
 y = mean(H_Sst_Act_25P1_VIP);
 N = size(H_Sst_Act_25P1_VIP,1);
 SEM = std(H_Sst_Act_25P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=6;
%x=1:8
 y = mean(H_Sst_Act_50P1_VIP);
 N = size(H_Sst_Act_50P1_VIP,1);
 SEM = std(H_Sst_Act_50P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E3=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=7;
%x=1:8
 y = mean(H_Sst_Act_75P1_VIP);
 N = size(H_Sst_Act_75P1_VIP,1);
 SEM = std(H_Sst_Act_75P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E4=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=8;
%x=1:8
 y = mean(H_Sst_Act_100P1_VIP);
 N = size(H_Sst_Act_100P1_VIP,1);
 SEM = std(H_Sst_Act_100P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E5=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;
%%
x=9;
%x=1:8
 y = mean(H_Sst_DeAct_06P1_VIP);
 N = size(H_Sst_DeAct_06P1_VIP,1);
 SEM = std(H_Sst_DeAct_06P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=10;
%x=1:8
 y = mean(H_Sst_DeAct_12P1_VIP);
 N = size(H_Sst_DeAct_12P1_VIP,1);
 SEM = std(H_Sst_DeAct_12P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=11;
%x=1:8
 y = mean(H_Sst_DeAct_18P1_VIP);
 N = size(H_Sst_DeAct_18P1_VIP,1);
 SEM = std(H_Sst_DeAct_18P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=12;
%x=1:8
 y = mean(H_Sst_DeAct_25P1_VIP);
 N = size(H_Sst_DeAct_25P1_VIP,1);
 SEM = std(H_Sst_DeAct_25P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=13;
%x=1:8
 y = mean(H_Sst_DeAct_50P1_VIP);
 N = size(H_Sst_DeAct_50P1_VIP,1);
 SEM = std(H_Sst_DeAct_50P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E3=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=14;
%x=1:8
 y = mean(H_Sst_DeAct_75P1_VIP);
 N = size(H_Sst_DeAct_75P1_VIP,1);
 SEM = std(H_Sst_DeAct_75P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E4=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=15;
%x=1:8
 y = mean(H_Sst_DeAct_100P1_VIP);
 N = size(H_Sst_DeAct_100P1_VIP,1);
 SEM = std(H_Sst_DeAct_100P1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E5=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;
%%
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',14,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
xticklabels({ 'Control'; 'Sst_A_c_t_0_6_%'; 'Sst_A_c_t_1_2_%'; 'Sst_A_c_t_1_8_%'; 'Sst_A_c_t_2_5_%'; 'Sst_A_c_t_5_0_%'; 'Sst_A_c_t_7_5_%'; 'Sst_A_c_t_1_0_0_%'; 'Sst_D_e_A_c_t_0_6_%'; 'Sst_D_e_A_c_t_1_2_%'; 'Sst_D_e_A_c_t_1_8_%'; 'Sst_D_e_A_c_t_2_5_%'; 'Sst_D_e_A_c_t_5_0_%'; 'Sst_D_e_A_c_t_7_5_%'; 'Sst_D_e_A_c_t_1_0_0_%' })

xlabel('Simulations' )
ylabel('VIP FR(spikes/s)')
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'Bar.tif')
%title ('Mean firing rates in the column (all cells) in 4 trials')
%xticklabels
box off

%legend ('Control', 'PV_A_c_t', 'PV_D_e_A_c_t',  'PV_A_c_t', 'PV_D_e_A_c_t', 'PV_A_c_t', 'PV_D_e_A_c_t')
%legend ('Control', 'PV_A_c_t', 'PV_D_e_A_c_t')
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
C.CData(9,:) = [0, 0.4470, 0.7410]; %[1 0 0];
C.CData(10,:) = [0.8500, 0.3250, 0.0980]; %[0 1 0];
C.CData(11,:) = [0.9290, 0.6940, 0.1250]; %[0 0 1];
C.CData(12,:) = [0.4940, 0.1840, 0.5560];
C.CData(13,:) = [0.4660, 0.6740, 0.1880];
C.CData(14,:) = [0.3010, 0.7450, 0.9330];
C.CData(15,:) = [0.6350, 0.0780, 0.1840];

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
E9.Color = 'k';
E10.Color = 'k';
E11.Color = 'k';
E12.Color = 'k';
E13.Color = 'k';
E14.Color = 'k';
E15.Color = 'k';
%%

figure;

T1=length(H_C1_VIP)
T2=length(H_Sst_Act_06P1_VIP)
T3=length(H_Sst_Act_12P1_VIP)
T4=length(H_Sst_Act_18P1_VIP)
T5=length(H_Sst_Act_25P1_VIP)
T6=length(H_Sst_Act_50P1_VIP)
T7=length(H_Sst_Act_75P1_VIP)
T8=length(H_Sst_Act_100P1_VIP)
T9=length(H_Sst_DeAct_06P1_VIP)
T10=length(H_Sst_DeAct_12P1_VIP)
T11=length(H_Sst_DeAct_18P1_VIP)
T12=length(H_Sst_DeAct_25P1_VIP)
T13=length(H_Sst_DeAct_50P1_VIP)
T14=length(H_Sst_DeAct_75P1_VIP)
T15=length(H_Sst_DeAct_100P1_VIP)


H=[H_C1_VIP' H_Sst_Act_06P1_VIP' H_Sst_Act_12P1_VIP' H_Sst_Act_18P1_VIP' H_Sst_Act_25P1_VIP' H_Sst_Act_50P1_VIP' H_Sst_Act_75P1_VIP' H_Sst_Act_100P1_VIP' H_Sst_DeAct_06P1_VIP' H_Sst_DeAct_12P1_VIP' H_Sst_DeAct_18P1_VIP' H_Sst_DeAct_25P1_VIP' H_Sst_DeAct_50P1_VIP' H_Sst_DeAct_75P1_VIP' H_Sst_DeAct_100P1_VIP'];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8),8*ones(1,T9),9*ones(1,T10),10*ones(1,T11),11*ones(1,T12),12*ones(1,T13),13*ones(1,T14),14*ones(1,T15)]

boxplot(H,T)



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
xticklabels({ 'Control'; 'Sst_Act 06%'; 'Sst_Act 12%'; 'Sst_Act 18%'; 'Sst_Act 25%'; 'Sst_Act 50%'; 'Sst_Act 75%'; 'Sst_Act 100%'; 'Sst_DeAct 06%'; 'Sst_DeAct 12%'; 'Sst_DeAct 18%'; 'Sst_DeAct 25%'; 'Sst_DeAct 50%'; 'Sst_DeAct 75%'; 'Sst_DeAct 100%'})

xlabel('Simulations' )
ylabel('VIP FR(spikes/s)')
box off

set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'0.tif')

%% ttest
[h_06,p_06] = ttest2(H_C1_VIP,H_Sst_Act_06P1_VIP) %H_C1,H_Sst_Act1 
[h_12,p_12] = ttest2(H_C1_VIP,H_Sst_Act_12P1_VIP) %H_C1,H_Sst_Act1 
[h_18,p_18] = ttest2(H_C1_VIP,H_Sst_Act_18P1_VIP) %H_C1,H_Sst_Act1 
[h_25,p_25] = ttest2(H_C1_VIP,H_Sst_Act_25P1_VIP) %H_C1,H_Sst_Act1 
[h_50,p_50] = ttest2(H_C1_VIP,H_Sst_Act_50P1_VIP) %H_C1,H_Sst_Act1 
[h_75,p_75] = ttest2(H_C1_VIP,H_Sst_Act_75P1_VIP) %H_C1,H_Sst_Act1 
[h_100,p_100] = ttest2(H_C1_VIP,H_Sst_Act_100P1_VIP) %H_C1,H_Sst_Act1 

[h_06_DeAct,p_06_DeAct] = ttest2(H_C1_VIP,H_Sst_DeAct_06P1_VIP) %H_C1,H_Sst_DeAct1 
[h_12_DeAct,p_12_DeAct] = ttest2(H_C1_VIP,H_Sst_DeAct_12P1_VIP) %H_C1,H_Sst_DeAct1 
[h_18_DeAct,p_18_DeAct] = ttest2(H_C1_VIP,H_Sst_DeAct_18P1_VIP) %H_C1,H_Sst_DeAct1 
[h_25_DeAct,p_25_DeAct] = ttest2(H_C1_VIP,H_Sst_DeAct_25P1_VIP) %H_C1,H_Sst_DeAct1 
[h_50_DeAct,p_50_DeAct] = ttest2(H_C1_VIP,H_Sst_DeAct_50P1_VIP) %H_C1,H_Sst_DeAct1 
[h_75_DeAct,p_75_DeAct] = ttest2(H_C1_VIP,H_Sst_DeAct_75P1_VIP) %H_C1,H_Sst_DeAct1 
[h_100_DeAct,p_100_DeAct] = ttest2(H_C1_VIP,H_Sst_DeAct_100P1_VIP) %H_C1,H_Sst_DeAct1 

%%
figure;

T1=length(H_C1_VIP)
T2=length(H_Sst_Act_06P1_VIP)
T3=length(H_Sst_Act_12P1_VIP)
T4=length(H_Sst_Act_18P1_VIP)
T5=length(H_Sst_Act_25P1_VIP)
T6=length(H_Sst_Act_50P1_VIP)
T7=length(H_Sst_Act_75P1_VIP)
T8=length(H_Sst_Act_100P1_VIP)
T9=length(H_Sst_DeAct_06P1_VIP)
T10=length(H_Sst_DeAct_12P1_VIP)
T11=length(H_Sst_DeAct_18P1_VIP)
T12=length(H_Sst_DeAct_25P1_VIP)
T13=length(H_Sst_DeAct_50P1_VIP)
T14=length(H_Sst_DeAct_75P1_VIP)
T15=length(H_Sst_DeAct_100P1_VIP)


H=[H_C1_VIP' H_Sst_Act_06P1_VIP' H_Sst_Act_12P1_VIP' H_Sst_Act_18P1_VIP' H_Sst_Act_25P1_VIP' H_Sst_Act_50P1_VIP' H_Sst_Act_75P1_VIP' H_Sst_Act_100P1_VIP' H_Sst_DeAct_06P1_VIP' H_Sst_DeAct_12P1_VIP' H_Sst_DeAct_18P1_VIP' H_Sst_DeAct_25P1_VIP' H_Sst_DeAct_50P1_VIP' H_Sst_DeAct_75P1_VIP' H_Sst_DeAct_100P1_VIP' ];
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
P9=[0, 0.4470, 0.7410];
P10=[0.8500, 0.3250, 0.0980];
P11=[0.9290, 0.6940, 0.1250];
P12=[0.4940, 0.1840, 0.5560];
P13=[0.4660, 0.6740, 0.1880];
P14=[0.3010, 0.7450, 0.9330];
P15=[0.6350, 0.0780, 0.1840];

% P1= [0.00,0.45,0.74] % [0.00,0.45,0.74]
% P2= [0.85,0.33,0.10] %'g' %0.85,0.33,0.10
% P3= [0.93,0.69,0.13] %'y' %0.93,0.69,0.13
% P4= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% P5= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% P6= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
% P7= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19
% P8= [0.74,0.25,0.25] %'m' %0.47,0.67,0.19
% P9(1).Color= [0.87,0.45,0.75] %'m' %0.47,0.67,0.19

colors = [P15;P14;P13;P12;P11;P10;P9;  P8;P7;P6;P5;P4;P3;P2;P1];


boxplot(H,T) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
xticklabels({ 'Control'; 'Sst_Act 06%'; 'Sst_Act 12%'; 'Sst_Act 18%'; 'Sst_Act 25%'; 'Sst_Act 50%'; 'Sst_Act 75%'; 'Sst_Act 100%'; 'Sst_DeAct 06%'; 'Sst_DeAct 12%'; 'Sst_DeAct 18%'; 'Sst_DeAct 25%'; 'Sst_DeAct 50%'; 'Sst_DeAct 75%'; 'Sst_DeAct 100%'})

xlabel('Simulations' )
ylabel('VIP FR(spikes/s)')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.2)])
xt = get(gca, 'XTick');

hold on
if h_06==1 
plot(xt([1 2]), [1 1]*max(yt)*1.120, '-k',  mean(xt([1 2])), max(yt)*1.21, '*k')
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
plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_06_DeAct==1
hold on
plot(xt([1 9]), [1 1]*max(yt)*1.155, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_12_DeAct==1
hold on
plot(xt([1 10]), [1 1]*max(yt)*1.160, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_18_DeAct==1
hold on
plot(xt([1 11]), [1 1]*max(yt)*1.165, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_25_DeAct==1
hold on
plot(xt([1 12]), [1 1]*max(yt)*1.170, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_50_DeAct==1
hold on
plot(xt([1 13]), [1 1]*max(yt)*1.175, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_75_DeAct==1
hold on
plot(xt([1 14]), [1 1]*max(yt)*1.180, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_100_DeAct==1
hold on
plot(xt([1 15]), [1 1]*max(yt)*1.185, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end


set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'0_P.tif')

%

%
% med = median(H_C1);
% plot(1,med,'ro-'); hold on
% 
% med1 = median(H_Sst_Act_25P1);
% plot(2,med1,'ro-'); hold on;
% 
% med2 = median(H_Sst_Act_50P1);
% plot(3,med2,'ro-'); hold on;
% 
% med3 = median(H_Sst_Act_75P1);
% plot(4,med3,'ro-'); hold on;
% 
% med4 = median(H_Sst_Act_100P1);
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

T1=length(H_C1_VIP)
T2=length(H_Sst_Act_06P1_VIP)
T3=length(H_Sst_Act_12P1_VIP)
T4=length(H_Sst_Act_18P1_VIP)
T5=length(H_Sst_Act_25P1_VIP)
T6=length(H_Sst_Act_50P1_VIP)
T7=length(H_Sst_Act_75P1_VIP)
T8=length(H_Sst_Act_100P1_VIP)
T9=length(H_Sst_DeAct_06P1_VIP)
T10=length(H_Sst_DeAct_12P1_VIP)
T11=length(H_Sst_DeAct_18P1_VIP)
T12=length(H_Sst_DeAct_25P1_VIP)
T13=length(H_Sst_DeAct_50P1_VIP)
T14=length(H_Sst_DeAct_75P1_VIP)
T15=length(H_Sst_DeAct_100P1_VIP)

H=[H_C1_VIP' H_Sst_Act_06P1_VIP' H_Sst_Act_12P1_VIP' H_Sst_Act_18P1_VIP'  H_Sst_Act_25P1_VIP' H_Sst_Act_50P1_VIP' H_Sst_Act_75P1_VIP' H_Sst_Act_100P1_VIP' H_Sst_DeAct_06P1_VIP' H_Sst_DeAct_12P1_VIP' H_Sst_DeAct_18P1_VIP'  H_Sst_DeAct_25P1_VIP' H_Sst_DeAct_50P1_VIP' H_Sst_DeAct_75P1_VIP' H_Sst_DeAct_100P1_VIP'];
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
P9=[0, 0.4470, 0.7410];
P10=[0.8500, 0.3250, 0.0980];
P11=[0.9290, 0.6940, 0.1250];
P12=[0.4940, 0.1840, 0.5560];
P13=[0.4660, 0.6740, 0.1880];
P14=[0.3010, 0.7450, 0.9330];
P15=[0.6350, 0.0780, 0.1840];

% P1= [0.00,0.45,0.74] % [0.00,0.45,0.74]
% P2= [0.85,0.33,0.10] %'g' %0.85,0.33,0.10
% P3= [0.93,0.69,0.13] %'y' %0.93,0.69,0.13
% P4= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% P5= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% P6= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
% P7= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19
% P8= [0.74,0.25,0.25] %'m' %0.47,0.67,0.19

colors = [P15;P14;P13;P12;P11;P10;P9; P8;P7;P6;P5;P4;P3;P2;P1];


boxplot(H,T) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15])
xticklabels({ 'Control'; 'Sst_Act 6%'; 'Sst_Act 12%'; 'Sst_Act 18%'; 'Sst_Act 25%'; 'Sst_Act 50%'; 'Sst_Act 75%'; 'Sst_Act 100%'; 'Sst_DeAct 6%'; 'Sst_DeAct 12%'; 'Sst_DeAct 18%'; 'Sst_DeAct 25%'; 'Sst_DeAct 50%'; 'Sst_DeAct 75%'; 'Sst_DeAct 100%'})

xlabel('Simulations' )
ylabel('VIP FR(spikes/s)')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.21)])
xt = get(gca, 'XTick');
hold on

if h_06==1 
plot(xt([1 2]), [1 1]*max(yt)*1.120, '-k',  mean(xt([1 2])), max(yt)*1.21, '*k')
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
plot(xt([1 6]), [1 1]*max(yt)*1.140, '-k',  mean(xt([1 8])), max(yt)*1.21, '*k')
end

if h_75==1
hold on
plot(xt([1 7]), [1 1]*max(yt)*1.145, '-k')  %mean(xt([1 4])), max(yt)*1.17, '*k')
end

if h_100==1
hold on
plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end
%
if h_06_DeAct==1
hold on
plot(xt([1 9]), [1 1]*max(yt)*1.155, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_12_DeAct==1
hold on
plot(xt([1 10]), [1 1]*max(yt)*1.160, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_18_DeAct==1
hold on
plot(xt([1 11]), [1 1]*max(yt)*1.165, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_25_DeAct==1
hold on
plot(xt([1 12]), [1 1]*max(yt)*1.170, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_50_DeAct==1
hold on
plot(xt([1 13]), [1 1]*max(yt)*1.175, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_75_DeAct==1
hold on
plot(xt([1 14]), [1 1]*max(yt)*1.180, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_100_DeAct==1
hold on
plot(xt([1 15]), [1 1]*max(yt)*1.185, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end
%

%
med = median(H_C1_VIP);
plot(1,med,'ro-','Color','k'); hold on

med1 = median(H_Sst_Act_06P1_VIP);
plot(2,med1,'ro-','Color','k'); hold on;

med2 = median(H_Sst_Act_12P1_VIP);
plot(3,med2,'ro-','Color','k'); hold on;

med3 = median(H_Sst_Act_18P1_VIP);
plot(4,med3,'ro-','Color','k'); hold on;

med4 = median(H_Sst_Act_25P1_VIP);
plot(5,med4,'ro-','Color','k'); hold on;

med5 = median(H_Sst_Act_50P1_VIP);
plot(6,med5,'ro-','Color','k'); hold on;

med6 = median(H_Sst_Act_75P1_VIP);
plot(7,med6,'ro-','Color','k'); hold on;

med7 = median(H_Sst_Act_100P1_VIP);
plot(8,med7,'ro-','Color','k'); hold on;

med8 = median(H_Sst_DeAct_06P1_VIP);
plot(9,med8,'ro-','Color','k'); hold on;

med9 = median(H_Sst_DeAct_12P1_VIP);
plot(10,med9,'ro-','Color','k'); hold on;

med10 = median(H_Sst_DeAct_18P1_VIP);
plot(11,med10,'ro-','Color','k'); hold on;

med11 = median(H_Sst_DeAct_25P1_VIP);
plot(12,med11,'ro-','Color','k'); hold on;

med12 = median(H_Sst_DeAct_50P1_VIP);
plot(13,med12,'ro-','Color','k'); hold on;

med13 = median(H_Sst_DeAct_75P1_VIP);
plot(14,med13,'ro-','Color','k'); hold on;

med14 = median(H_Sst_DeAct_100P1_VIP);
plot(15,med14,'ro-','Color','k'); hold on;

Med=[med med1 med2 med3 med4 med5 med6 med7 med8 med9 med10 med11 med12 med13 med14];
plot(Med,'Color','k','LineStyle',':','LineWidth',3 ); hold on;

set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [5.83*2, 4.38*2])
% saveas(gcf,'0_P_C.tif')

saveas(gcf,'FR_0_VIP_Sst_Mod.tif')
saveas(gcf,'FR_0_VIP_Sst_Mod.fig')
saveas(gcf,'FR_0_VIP_Sst_Mod.eps','psc2')

%%
figure;

T1=length(H_C1_VIP)
T2=length(H_Sst_Act_06P1_VIP)
T3=length(H_Sst_Act_12P1_VIP)
T4=length(H_Sst_Act_18P1_VIP)
T5=length(H_Sst_Act_25P1_VIP)
T6=length(H_Sst_Act_50P1_VIP)
T7=length(H_Sst_Act_75P1_VIP)
T8=length(H_Sst_Act_100P1_VIP)
T9=length(H_Sst_DeAct_06P1_VIP)
T10=length(H_Sst_DeAct_12P1_VIP)
T11=length(H_Sst_DeAct_18P1_VIP)
T12=length(H_Sst_DeAct_25P1_VIP)
T13=length(H_Sst_DeAct_50P1_VIP)
T14=length(H_Sst_DeAct_75P1_VIP)
T15=length(H_Sst_DeAct_100P1_VIP)

H=[H_C1_VIP' H_Sst_Act_06P1_VIP' H_Sst_Act_12P1_VIP' H_Sst_Act_18P1_VIP'  H_Sst_Act_25P1_VIP' H_Sst_Act_50P1_VIP' H_Sst_Act_75P1_VIP' H_Sst_Act_100P1_VIP' ]; %H_Sst_DeAct_06P1_VIP' H_Sst_DeAct_12P1_VIP' H_Sst_DeAct_18P1_VIP'  H_Sst_DeAct_25P1_VIP' H_Sst_DeAct_50P1_VIP' H_Sst_DeAct_75P1_VIP' H_Sst_DeAct_100P1_VIP'];
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

colors = [P8;P7;P6;P5;P4;P3;P2;P1];


boxplot(H,T) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; 'Sst_Act 6%'; 'Sst_Act 12%'; 'Sst_Act 18%'; 'Sst_Act 25%'; 'Sst_Act 50%'; 'Sst_Act 75%'; 'Sst_Act 100%' }) %; 'Sst_DeAct 6%'; 'Sst_DeAct 12%'; 'Sst_DeAct 18%'; 'Sst_DeAct 25%'; 'Sst_DeAct 50%'; 'Sst_DeAct 75%'; 'Sst_DeAct 100%'})

xlabel('Simulations' )
ylabel('VIP FR(spikes/s)')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.160)])
xt = get(gca, 'XTick');
hold on

if h_06==1 
plot(xt([1 2]), [1 1]*max(yt)*1.120, '-k',  mean(xt([1 2])), max(yt)*1.21, '*k')
end

hold on
if h_12==1 
plot(xt([1 3]), [1 1]*max(yt)*1.125, '-k')%,  mean(xt([1 3])), max(yt)*1.18, '*k')
end

hold on
if h_18==1 
plot(xt([1 4]), [1 1]*max(yt)*1.130, '-k',  mean(xt([1 4])), max(yt)*1.155, '*k')
end

hold on
if h_25==1 
plot(xt([1 5]), [1 1]*max(yt)*1.135, '-k')%,  mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_50==1
hold on
plot(xt([1 6]), [1 1]*max(yt)*1.140, '-k',  mean(xt([1 8])), max(yt)*1.21, '*k')
end

if h_75==1
hold on
plot(xt([1 7]), [1 1]*max(yt)*1.145, '-k')  %mean(xt([1 4])), max(yt)*1.17, '*k')
end

if h_100==1
hold on
plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end
%
% if h_06_DeAct==1
% hold on
% plot(xt([1 9]), [1 1]*max(yt)*1.155, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_12_DeAct==1
% hold on
% plot(xt([1 10]), [1 1]*max(yt)*1.160, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_18_DeAct==1
% hold on
% plot(xt([1 11]), [1 1]*max(yt)*1.165, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_25_DeAct==1
% hold on
% plot(xt([1 12]), [1 1]*max(yt)*1.170, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_50_DeAct==1
% hold on
% plot(xt([1 13]), [1 1]*max(yt)*1.175, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_75_DeAct==1
% hold on
% plot(xt([1 14]), [1 1]*max(yt)*1.180, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_100_DeAct==1
% hold on
% plot(xt([1 15]), [1 1]*max(yt)*1.185, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
%

%
med = median(H_C1_VIP);
plot(1,med,'ro-','Color','k'); hold on

med1 = median(H_Sst_Act_06P1_VIP);
plot(2,med1,'ro-','Color','k'); hold on;

med2 = median(H_Sst_Act_12P1_VIP);
plot(3,med2,'ro-','Color','k'); hold on;

med3 = median(H_Sst_Act_18P1_VIP);
plot(4,med3,'ro-','Color','k'); hold on;

med4 = median(H_Sst_Act_25P1_VIP);
plot(5,med4,'ro-','Color','k'); hold on;

med5 = median(H_Sst_Act_50P1_VIP);
plot(6,med5,'ro-','Color','k'); hold on;

med6 = median(H_Sst_Act_75P1_VIP);
plot(7,med6,'ro-','Color','k'); hold on;

med7 = median(H_Sst_Act_100P1_VIP);
plot(8,med7,'ro-','Color','k'); hold on;

% med8 = median(H_Sst_DeAct_06P1_VIP);
% plot(9,med8,'ro-','Color','k'); hold on;
% 
% med9 = median(H_Sst_DeAct_12P1_VIP);
% plot(10,med9,'ro-','Color','k'); hold on;
% 
% med10 = median(H_Sst_DeAct_18P1_VIP);
% plot(11,med10,'ro-','Color','k'); hold on;
% 
% med11 = median(H_Sst_DeAct_25P1_VIP);
% plot(12,med11,'ro-','Color','k'); hold on;
% 
% med12 = median(H_Sst_DeAct_50P1_VIP);
% plot(13,med12,'ro-','Color','k'); hold on;
% 
% med13 = median(H_Sst_DeAct_75P1_VIP);
% plot(14,med13,'ro-','Color','k'); hold on;
% 
% med14 = median(H_Sst_DeAct_100P1_VIP);
% plot(15,med14,'ro-','Color','k'); hold on;

Med=[med med1 med2 med3 med4 med5 med6 med7 ]; %med8 med9 med10 med11 med12 med13 med14];
plot(Med,'Color','k','LineStyle',':','LineWidth',3 ); hold on;

set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [5.83*2, 4.38*2])
% saveas(gcf,'0_P_C.tif')

saveas(gcf,'FR_0_VIP_Sst_Mod_Act.tif')
saveas(gcf,'FR_0_VIP_Sst_Mod_Act.fig')
saveas(gcf,'FR_0_VIP_Sst_Mod_Act.eps','psc2')
%%
%%
figure;

T1=length(H_C1_VIP)
T2=length(H_Sst_Act_06P1_VIP)
T3=length(H_Sst_Act_12P1_VIP)
T4=length(H_Sst_Act_18P1_VIP)
T5=length(H_Sst_Act_25P1_VIP)
T6=length(H_Sst_Act_50P1_VIP)
T7=length(H_Sst_Act_75P1_VIP)
T8=length(H_Sst_Act_100P1_VIP)
T9=length(H_Sst_DeAct_06P1_VIP)
T10=length(H_Sst_DeAct_12P1_VIP)
T11=length(H_Sst_DeAct_18P1_VIP)
T12=length(H_Sst_DeAct_25P1_VIP)
T13=length(H_Sst_DeAct_50P1_VIP)
T14=length(H_Sst_DeAct_75P1_VIP)
T15=length(H_Sst_DeAct_100P1_VIP)

H=[H_C1_VIP' H_Sst_DeAct_06P1_VIP' H_Sst_DeAct_12P1_VIP' H_Sst_DeAct_18P1_VIP'  H_Sst_DeAct_25P1_VIP' H_Sst_DeAct_50P1_VIP' H_Sst_DeAct_75P1_VIP' H_Sst_DeAct_100P1_VIP'];
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

colors = [P8;P7;P6;P5;P4;P3;P2;P1];


boxplot(H,T) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; 'Sst_DeAct 6%'; 'Sst_DeAct 12%'; 'Sst_DeAct 18%'; 'Sst_DeAct 25%'; 'Sst_DeAct 50%'; 'Sst_DeAct 75%'; 'Sst_DeAct 100%'})

xlabel('Simulations' )
ylabel('VIP FR(spikes/s)')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.160)])
xt = get(gca, 'XTick');
hold on

% if h_06==1 
% plot(xt([1 2]), [1 1]*max(yt)*1.120, '-k',  mean(xt([1 2])), max(yt)*1.21, '*k')
% end
% 
% hold on
% if h_12==1 
% plot(xt([1 3]), [1 1]*max(yt)*1.125, '-k')%,  mean(xt([1 3])), max(yt)*1.18, '*k')
% end
% 
% hold on
% if h_18==1 
% plot(xt([1 4]), [1 1]*max(yt)*1.130, '-k',  mean(xt([1 4])), max(yt)*1.155, '*k')
% end
% 
% hold on
% if h_25==1 
% plot(xt([1 5]), [1 1]*max(yt)*1.135, '-k')%,  mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_50==1
% hold on
% plot(xt([1 6]), [1 1]*max(yt)*1.140, '-k',  mean(xt([1 8])), max(yt)*1.21, '*k')
% end
% 
% if h_75==1
% hold on
% plot(xt([1 7]), [1 1]*max(yt)*1.145, '-k')  %mean(xt([1 4])), max(yt)*1.17, '*k')
% end
% 
% if h_100==1
% hold on
% plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end

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
plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k', mean(xt([1 8])), max(yt)*1.160, '*k')
end


%
med = median(H_C1_VIP);
plot(1,med,'ro-','Color','k'); hold on

% med1 = median(H_Sst_Act_06P1_VIP);
% plot(2,med1,'ro-','Color','k'); hold on;
% 
% med2 = median(H_Sst_Act_12P1_VIP);
% plot(3,med2,'ro-','Color','k'); hold on;
% 
% med3 = median(H_Sst_Act_18P1_VIP);
% plot(4,med3,'ro-','Color','k'); hold on;
% 
% med4 = median(H_Sst_Act_25P1_VIP);
% plot(5,med4,'ro-','Color','k'); hold on;
% 
% med5 = median(H_Sst_Act_50P1_VIP);
% plot(6,med5,'ro-','Color','k'); hold on;
% 
% med6 = median(H_Sst_Act_75P1_VIP);
% plot(7,med6,'ro-','Color','k'); hold on;
% 
% med7 = median(H_Sst_Act_100P1_VIP);
% plot(8,med7,'ro-','Color','k'); hold on;

med8 = median(H_Sst_DeAct_06P1_VIP);
plot(9,med8,'ro-','Color','k'); hold on;

med9 = median(H_Sst_DeAct_12P1_VIP);
plot(10,med9,'ro-','Color','k'); hold on;

med10 = median(H_Sst_DeAct_18P1_VIP);
plot(11,med10,'ro-','Color','k'); hold on;

med11 = median(H_Sst_DeAct_25P1_VIP);
plot(12,med11,'ro-','Color','k'); hold on;

med12 = median(H_Sst_DeAct_50P1_VIP);
plot(13,med12,'ro-','Color','k'); hold on;

med13 = median(H_Sst_DeAct_75P1_VIP);
plot(14,med13,'ro-','Color','k'); hold on;

med14 = median(H_Sst_DeAct_100P1_VIP);
plot(15,med14,'ro-','Color','k'); hold on;

Med=[med med8 med9 med10 med11 med12 med13 med14];
plot(Med,'Color','k','LineStyle',':','LineWidth',3 ); hold on;

set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [5.83*2, 4.38*2])
% saveas(gcf,'0_P_C.tif')

saveas(gcf,'FR_0_VIP_Sst_Mod_DeAct.tif')
saveas(gcf,'FR_0_VIP_Sst_Mod_DeAct.fig')
saveas(gcf,'FR_0_VIP_Sst_Mod_DeAct.eps','psc2')

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
fileName = 'FR_VIP_Sst_Mod.xlsx';

% Write the table to an Excel file
writetable(results, fileName, 'WriteRowNames', true);

fprintf('Data saved to %s with row names included.\n', fileName);



