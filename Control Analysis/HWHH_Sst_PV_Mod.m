Thr = 45; 
H_C_Sst(H_C_Sst>Thr)=0;
H_PV_Act_06P_Sst(H_PV_Act_06P_Sst>Thr)=0;
H_PV_Act_12P_Sst(H_PV_Act_12P_Sst>Thr)=0;
H_PV_Act_18P_Sst(H_PV_Act_18P_Sst>Thr)=0;
H_PV_Act_25P_Sst(H_PV_Act_25P_Sst>Thr)=0;
H_PV_Act_50P_Sst(H_PV_Act_50P_Sst>Thr)=0;
H_PV_Act_75P_Sst(H_PV_Act_75P_Sst>Thr)=0;
H_PV_Act_100P_Sst(H_PV_Act_100P_Sst>Thr)=0;



% Remove Zeros
H_C1_Sst=nonzeros(H_C_Sst);
H_PV_Act_06P1_Sst=nonzeros(H_PV_Act_06P_Sst);
H_PV_Act_12P1_Sst=nonzeros(H_PV_Act_12P_Sst);
H_PV_Act_18P1_Sst=nonzeros(H_PV_Act_18P_Sst);
H_PV_Act_25P1_Sst=nonzeros(H_PV_Act_25P_Sst);
H_PV_Act_50P1_Sst=nonzeros(H_PV_Act_50P_Sst);
H_PV_Act_75P1_Sst=nonzeros(H_PV_Act_75P_Sst);
H_PV_Act_100P1_Sst=nonzeros(H_PV_Act_100P_Sst);


%%
 figure;
 
%  M1=mean(H_C);
%  M2=mean(H_PV_Act);
%  M3=mean(H_PV_DeAct_100P);

 M1=mean(H_C1_Sst);
 M2=mean(H_PV_Act_06P1_Sst);
 M3=mean(H_PV_Act_12P1_Sst);
 M4=mean(H_PV_Act_18P1_Sst);
 M5=mean(H_PV_Act_25P1_Sst);
 M6=mean(H_PV_Act_50P1_Sst);
 M7=mean(H_PV_Act_75P1_Sst);
 M8=mean(H_PV_Act_100P1_Sst);
 
 %M=mean(mean(H_C));
 
M= [M1 M2 M3 M4 M5 M6 M7 M8];
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
% % M2=mean(H_PV_Act);
% %M=mean(mean(H_PV_Act));
%  
% %  x=2;
% %  bar(M2)
% %  hold on;
% 
%  x=2;
% %x=1:8
%  y = mean(H_PV_Act);
%  N = size(H_PV_Act,1);
%  SEM = std(H_PV_Act / sqrt(N));
%  CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%  E2=errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold on;
% 
% x=3;
% %x=1:8
%  y = mean(H_PV_DeAct_100P);
%  N = size(H_PV_DeAct_100P,1);
%  SEM = std(H_PV_DeAct_100P / sqrt(N));
%  CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
%  E3=errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold on;

% x=1:8
x=1;
 y = mean(H_C1_Sst);
 N = size(H_C1_Sst,1);
 SEM = std(H_C1_Sst) / sqrt(N);
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E1=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

%
% M2=mean(H_PV_Act);
%M=mean(mean(H_PV_Act));
 
%  x=2;
%  bar(M2)
%  hold on;

x=2;
%x=1:8
 y = mean(H_PV_Act_06P1_Sst);
 N = size(H_PV_Act_06P1_Sst,1);
 SEM = std(H_PV_Act_06P1_Sst / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=3;
%x=1:8
 y = mean(H_PV_Act_12P1_Sst);
 N = size(H_PV_Act_12P1_Sst,1);
 SEM = std(H_PV_Act_12P1_Sst / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=4;
%x=1:8
 y = mean(H_PV_Act_18P1_Sst);
 N = size(H_PV_Act_18P1_Sst,1);
 SEM = std(H_PV_Act_18P1_Sst / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=5;
%x=1:8
 y = mean(H_PV_Act_25P1_Sst);
 N = size(H_PV_Act_25P1_Sst,1);
 SEM = std(H_PV_Act_25P1_Sst / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=6;
%x=1:8
 y = mean(H_PV_Act_50P1_Sst);
 N = size(H_PV_Act_50P1_Sst,1);
 SEM = std(H_PV_Act_50P1_Sst / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E3=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=7;
%x=1:8
 y = mean(H_PV_Act_75P1_Sst);
 N = size(H_PV_Act_75P1_Sst,1);
 SEM = std(H_PV_Act_75P1_Sst / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E4=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

x=8;
%x=1:8
 y = mean(H_PV_Act_100P1_Sst);
 N = size(H_PV_Act_100P1_Sst,1);
 SEM = std(H_PV_Act_100P1_Sst / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E5=errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;
%%
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',14,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8])
xticklabels({ 'Control'; 'PV_A_c_t_0_6_%'; 'PV_A_c_t_1_2_%'; 'PV_A_c_t_1_8_%'; 'PV_A_c_t_2_5_%'; 'PV_A_c_t_5_0_%'; 'PV_A_c_t_7_5_%'; 'PV_A_c_t_1_0_0_%' })

xlabel('Simulations' )
ylabel('Sst HWHH ({\circ})')
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

T1=length(H_C1_Sst)
T2=length(H_PV_Act_06P1_Sst)
T3=length(H_PV_Act_12P1_Sst)
T4=length(H_PV_Act_18P1_Sst)
T5=length(H_PV_Act_25P1_Sst)
T6=length(H_PV_Act_50P1_Sst)
T7=length(H_PV_Act_75P1_Sst)
T8=length(H_PV_Act_100P1_Sst)



H=[H_C1_Sst' H_PV_Act_06P1_Sst' H_PV_Act_12P1_Sst' H_PV_Act_18P1_Sst' H_PV_Act_25P1_Sst' H_PV_Act_50P1_Sst' H_PV_Act_75P1_Sst' H_PV_Act_100P1_Sst'];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8)]

boxplot(H,T)



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8])
xticklabels({ 'Control'; 'PV_Act 06%'; 'PV_Act 12%'; 'PV_Act 18%'; 'PV_Act 25%'; 'PV_Act 50%'; 'PV_Act 75%'; 'PV_Act 100%'})

xlabel('Simulations' )
ylabel('Sst HWHH ({\circ})')
box off

set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'0.tif')

%% ttest
[h_06,p_06] = ttest2(H_C1_Sst,H_PV_Act_06P1_Sst) %H_C1,H_PV_Act1 
[h_12,p_12] = ttest2(H_C1_Sst,H_PV_Act_12P1_Sst) %H_C1,H_PV_Act1 
[h_18,p_18] = ttest2(H_C1_Sst,H_PV_Act_18P1_Sst) %H_C1,H_PV_Act1 
[h_25,p_25] = ttest2(H_C1_Sst,H_PV_Act_25P1_Sst) %H_C1,H_PV_Act1 
[h_50,p_50] = ttest2(H_C1_Sst,H_PV_Act_50P1_Sst) %H_C1,H_PV_Act1 
[h_75,p_75] = ttest2(H_C1_Sst,H_PV_Act_75P1_Sst) %H_C1,H_PV_Act1 
[h_100,p_75] = ttest2(H_C1_Sst,H_PV_Act_100P1_Sst) %H_C1,H_PV_Act1 

%%
figure;

T1=length(H_C1_Sst)
T2=length(H_PV_Act_06P1_Sst)
T3=length(H_PV_Act_12P1_Sst)
T4=length(H_PV_Act_18P1_Sst)
T5=length(H_PV_Act_25P1_Sst)
T6=length(H_PV_Act_50P1_Sst)
T7=length(H_PV_Act_75P1_Sst)
T8=length(H_PV_Act_100P1_Sst)


H=[H_C1_Sst' H_PV_Act_06P1_Sst' H_PV_Act_12P1_Sst' H_PV_Act_18P1_Sst' H_PV_Act_25P1_Sst' H_PV_Act_50P1_Sst' H_PV_Act_75P1_Sst' H_PV_Act_100P1_Sst' ];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8)];

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
% P9(1).Color= [0.87,0.45,0.75] %'m' %0.47,0.67,0.19

colors = [ P8;P7;P6;P5;P4;P3;P2;P1];


boxplot(H,T) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8])
xticklabels({ 'Control'; 'PV_Act 06%'; 'PV_Act 12%'; 'PV_Act 18%'; 'PV_Act 25%'; 'PV_Act 50%'; 'PV_Act 75%'; 'PV_Act 100%'})

xlabel('Simulations' )
ylabel('Sst HWHH ({\circ})')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.2)])
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
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'0_P.tif')

%

%
% med = median(H_C1);
% plot(1,med,'ro-'); hold on
% 
% med1 = median(H_PV_Act_25P1);
% plot(2,med1,'ro-'); hold on;
% 
% med2 = median(H_PV_Act_50P1);
% plot(3,med2,'ro-'); hold on;
% 
% med3 = median(H_PV_Act_75P1);
% plot(4,med3,'ro-'); hold on;
% 
% med4 = median(H_PV_Act_100P1);
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

T1=length(H_C1_Sst)
T2=length(H_PV_Act_06P1_Sst)
T3=length(H_PV_Act_12P1_Sst)
T4=length(H_PV_Act_18P1_Sst)
T5=length(H_PV_Act_25P1_Sst)
T6=length(H_PV_Act_50P1_Sst)
T7=length(H_PV_Act_75P1_Sst)
T8=length(H_PV_Act_100P1_Sst)


H=[H_C1_Sst' H_PV_Act_06P1_Sst' H_PV_Act_12P1_Sst' H_PV_Act_18P1_Sst'  H_PV_Act_25P1_Sst' H_PV_Act_50P1_Sst' H_PV_Act_75P1_Sst' H_PV_Act_100P1_Sst' ];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8)];

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

xticks([ 1 2 3 4 5 6 7 8])
xticklabels({ 'Control'; 'PV_Act 6%'; 'PV_Act 12%'; 'PV_Act 18%'; 'PV_Act 25%'; 'PV_Act 50%'; 'PV_Act 75%'; 'PV_Act 100%'})

xlabel('Simulations' )
ylabel('Sst HWHH ({\circ})')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.21)])
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
%

%
med = median(H_C1_Sst);
plot(1,med,'ro-','Color','k'); hold on

med1 = median(H_PV_Act_06P1_Sst);
plot(2,med1,'ro-','Color','k'); hold on;

med2 = median(H_PV_Act_12P1_Sst);
plot(3,med2,'ro-','Color','k'); hold on;

med3 = median(H_PV_Act_18P1_Sst);
plot(4,med3,'ro-','Color','k'); hold on;

med4 = median(H_PV_Act_25P1_Sst);
plot(5,med4,'ro-','Color','k'); hold on;

med5 = median(H_PV_Act_50P1_Sst);
plot(6,med5,'ro-','Color','k'); hold on;

med6 = median(H_PV_Act_75P1_Sst);
plot(7,med6,'ro-','Color','k'); hold on;

med7 = median(H_PV_Act_100P1_Sst);
plot(8,med7,'ro-','Color','k'); hold on;

Med=[med med1 med2 med3 med4 med5 med6 med7];
plot(Med,'Color','k','LineStyle',':','LineWidth',3 ); hold on;

set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [5.83*2, 4.38*2])
% saveas(gcf,'0_P_C.tif')
saveas(gcf,'0_Sst_PV_Mod.tif')
saveas(gcf,'0_Sst_PV_Mod.fig')
saveas(gcf,'0_Sst_PV_Mod.eps','psc2')


