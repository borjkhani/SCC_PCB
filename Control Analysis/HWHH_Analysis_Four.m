clear
clc
close all

load('HWHH_PV_Act.mat')
run Cell_IDs.m
%%
H_C_PYRs=H_C(PYRs);
H_C_PVs=H_C(PVs);
H_C_Sst=H_C(Sst);
H_C_VIP=H_C(VIP);
%%
Thr = 60; 
H_C_PYRs(H_C_PYRs>Thr)=0;
H_C1_PYRs=nonzeros(H_C_PYRs);

H_C_PVs(H_C_PVs>Thr)=0;
H_C1_PVs=nonzeros(H_C_PVs);

H_C_Sst(H_C_Sst>Thr)=0;
H_C1_Sst=nonzeros(H_C_Sst);

H_C_VIP(H_C_VIP>Thr)=0;
H_C1_VIP=nonzeros(H_C_VIP);


figure;
M1=mean(H_C1_PYRs);
M2=mean(H_C1_PVs);
M3=mean(H_C1_Sst);
M4=mean(H_C1_VIP);

%M= [M1 M2 M3 M4 M5 M6 M7 M8];
M= [M1 M2 M3 M4];
C=bar(M)
hold on 
%%
x=1;
 y = mean(H_C1_PYRs);
 N = size(H_C1_PYRs,1);
 SEM = std(H_C1_PYRs) / sqrt(N);
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E1=errorbar(x, y, CI95,'LineWidth',3,'color',[0.25, 0.25, 0.25])
grid off
hold on;

x=2;
%x=1:8
 y = mean(H_C1_PVs);
 N = size(H_C1_PVs,1);
 SEM = std(H_C1_PVs / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3,'color',[0.25, 0.25, 0.25])
grid off
hold on;

x=3;
%x=1:8
 y = mean(H_C1_Sst);
 N = size(H_C1_Sst,1);
 SEM = std(H_C1_Sst / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3,'color',[0.25, 0.25, 0.25])
grid off
hold on;

x=4;
%x=1:8
 y = mean(H_C1_VIP);
 N = size(H_C1_VIP,1);
 SEM = std(H_C1_VIP / sqrt(N));
 CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
 E2=errorbar(x, y, CI95,'LineWidth',3,'color',[0.25, 0.25, 0.25])
grid off
hold on;
%%

a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',14,'FontWeight','bold')

xticks([ 1 2 3 4 ])
xticklabels({ 'PYRs'; 'PVs'; 'Sst'; 'VIP' })

xlabel('Simulations' )
ylabel('HWHH ({\circ})')
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'Compare_HWHH_Four.tif')
%title ('Mean firing rates in the column (all cells) in 4 trials')
%xticklabels
box off
%%
C.FaceColor = 'flat';
C.CData(1,:) = [0.9000, 0.5250, 0.0980] %[0, 0.4470, 0.7410]; %[1 0 0];
C.CData(2,:) = [0, 0.4470, 0.7410] %[0.8500, 0.3250, 0.0980]; %[0 1 0];
C.CData(3,:) = [0.4660, 0.6740, 0.1880] %[0.9290, 0.6940, 0.1250]; %[0 0 1];
C.CData(4,:) = [0.9, 0, 0] %[0.4940, 0.1840, 0.5560];
% C.CData(5,:) = [0.4660, 0.6740, 0.1880];
% 
% C.CData(6,:) = [0.3010, 0.7450, 0.9330];
% C.CData(7,:) = [0.6350, 0.0780, 0.1840];
% C.CData(8,:) = [0, 0.5, 0];

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
% E5.Color = 'k';
% 
% E6.Color = 'k';
% E7.Color = 'k';
% E8.Color = 'k';
%%
figure;

T1=length(H_C1_PYRs)
T2=length(H_C1_PVs)
T3=length(H_C1_Sst)
T4=length(H_C1_VIP)

H=[H_C1_PYRs' H_C1_PVs' H_C1_Sst' H_C1_VIP' ];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4)]

boxplot(H,T)



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 ])
xticklabels({ 'PYRs'; 'PVs'; 'Sst'; 'VIP'})

xlabel('Simulations' )
ylabel('HWHH ({\circ})')
box off

set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'Compare_HWHH_Four_1.tif')
%%
[h_PYRs_PVs,p_PYRs_PVs] = ttest2(H_C1_PYRs,H_C1_PVs) %H_C1,H_PV_Act1 

[h_PYRs_Sst,p_PYRs_Sst] = ttest2(H_C1_PYRs,H_C1_Sst)

[h_PYRs_VIP,p_PYRs_VIP] = ttest2(H_C1_PYRs,H_C1_VIP)

[h_PVs_Sst,p_PVs_Sst] = ttest2(H_C1_PVs,H_C1_Sst)

[h_PVs_VIP,p_PVs_VIP] = ttest2(H_C1_PVs,H_C1_VIP)

[h_Sst_VIP,p_Sst_VIP] = ttest2(H_C1_Sst,H_C1_VIP)

%%
figure;

T1=length(H_C1_PYRs)
T2=length(H_C1_PVs)
T3=length(H_C1_Sst)
T4=length(H_C1_VIP)

H=[H_C1_PYRs' H_C1_PVs' H_C1_Sst' H_C1_VIP' ];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4)];

i = 4;  % number of boxplots
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
% P5=[0.4660, 0.6740, 0.1880];
% P6=[0.3010, 0.7450, 0.9330];
% P7=[0.6350, 0.0780, 0.1840];
% P8=[0, 0.5, 0];

% P1= [0.00,0.45,0.74] % [0.00,0.45,0.74]
% P2= [0.85,0.33,0.10] %'g' %0.85,0.33,0.10
% P3= [0.93,0.69,0.13] %'y' %0.93,0.69,0.13
% P4= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% P5= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% P6= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
% P7= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19
% P8= [0.74,0.25,0.25] %'m' %0.47,0.67,0.19
% P9(1).Color= [0.87,0.45,0.75] %'m' %0.47,0.67,0.19

%colors = [ P8;P7;P6;P5;P4;P3;P2;P1];
colors = [ P4;P3;P2;P1];


boxplot(H,T,'Symbol', 'o','OutlierSize',2) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end

%
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 ])
xticklabels({ 'PYRs'; 'PVs'; 'Sst'; 'VIP'})

xlabel('Control' )
ylabel(' HWHH ({\circ})')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.2)])
xt = get(gca, 'XTick');

hold on
if h_PYRs_PVs==1 
plot(xt([1 2]), [1 1]*max(yt)*1.01, '-k' )%,  mean(xt([1 2])), max(yt)*1.02, '*k')
end

hold on
if h_PYRs_Sst==1 
plot(xt([1 3]), [1 1]*max(yt)*1.03, '-k' )%,  mean(xt([1 3])), max(yt)*1.04, '*k')
end

hold on
if h_PYRs_VIP==1 
plot(xt([1 4]), [1 1]*max(yt)*1.06, '-k' )%,  mean(xt([1 4])), max(yt)*1.07, '*k')
end
%

hold on
if h_PVs_Sst==1 
plot(xt([2 3]), [1 1]*max(yt)*1.09, '-k')%,  mean(xt([2 3])), max(yt)*1.10, '*k')
end

if h_PVs_VIP==1
hold on
plot(xt([2 4]), [1 1]*max(yt)*1.12, '-k')%,  mean(xt([2 4])), max(yt)*1.13, '*k')
end

if h_Sst_VIP==1
hold on
plot(xt([3 4]), [1 1]*max(yt)*1.15, '-k', mean(xt([1 4])), max(yt)*1.18, '*k')
end

% if h_100==1
% hold on
% plot(xt([1 8]), [1 1]*max(yt)*1.19, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
saveas(gcf,'Compare_HWHH_Four_2.tif')

%%
figure;

T1=length(H_C1_PYRs)
T2=length(H_C1_PVs)
T3=length(H_C1_Sst)
T4=length(H_C1_VIP)
% T5=length(H_PV_Act_25P1_PYRs)
% T6=length(H_PV_Act_50P1_PYRs)
% T7=length(H_PV_Act_75P1_PYRs)
% T8=length(H_PV_Act_100P1_PYRs)


H=[H_C1_PYRs' H_C1_PVs' H_C1_Sst' H_C1_VIP'  ];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4)];

%boxplot(H,T)
i = 4;  % number of boxplots
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
% P5=[0.4660, 0.6740, 0.1880];
% P6=[0.3010, 0.7450, 0.9330];
% P7=[0.6350, 0.0780, 0.1840];
% P8=[0, 0.5, 0];

% P1= [0.00,0.45,0.74] % [0.00,0.45,0.74]
% P2= [0.85,0.33,0.10] %'g' %0.85,0.33,0.10
% P3= [0.93,0.69,0.13] %'y' %0.93,0.69,0.13
% P4= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% P5= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% P6= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
% P7= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19
% P8= [0.74,0.25,0.25] %'m' %0.47,0.67,0.19

%colors = [ P8;P7;P6;P5;P4;P3;P2;P1];
colors = [ P4;P3;P2;P1];


boxplot(H,T,'Symbol', 'o','OutlierSize',2) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 ])
xticklabels({ 'PYRs'; 'PVs'; 'Sst'; 'VIP'})

xlabel('Simulations' )
ylabel(' HWHH ({\circ})')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.21)])
xt = get(gca, 'XTick');
hold on
if h_PYRs_PVs==1 
plot(xt([1 2]), [1 1]*max(yt)*1.13, '-k',  mean(xt([1 2])), max(yt)*1.14, '*k')
end

hold on
if h_PYRs_Sst==1 
plot(xt([1 3]), [1 1]*max(yt)*1.14, '-k',  mean(xt([1 3])), max(yt)*1.15, '*k')
end

hold on
if h_PYRs_VIP==1 
plot(xt([1 4]), [1 1]*max(yt)*1.15, '-k',  mean(xt([1 4])), max(yt)*1.16, '*k')
end

hold on
if h_PVs_Sst==1 
plot(xt([2 3]), [1 1]*max(yt)*1.16, '-k',  mean(xt([1 5])), max(yt)*1.17, '*k')
end

if h_PVs_VIP==1
hold on
plot(xt([2 4]), [1 1]*max(yt)*1.17, '-k',  mean(xt([2 4])), max(yt)*1.18, '*k')
end

if h_Sst_VIP==1
hold on
plot(xt([3 4]), [1 1]*max(yt)*1.18, '-k',  mean(xt([1 4])), max(yt)*1.19, '*k')
end

%

%
med = median(H_C1_PYRs);
plot(1,med,'ro-','Color','k'); hold on

med1 = median(H_C1_PVs);
plot(2,med1,'ro-','Color','k'); hold on;

med2 = median(H_C1_Sst);
plot(3,med2,'ro-','Color','k'); hold on;

med3 = median(H_C1_VIP);
plot(4,med3,'ro-','Color','k'); hold on;


set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83*2, 4.38*2], 'PaperUnits', 'Inches', 'PaperSize', [5.83*2, 4.38*2])
% saveas(gcf,'0_P_C.tif')

saveas(gcf,'Compare_HWHH_Four_4.tif')
saveas(gcf,'Compare_HWHH_Four_4.fig')
saveas(gcf,'Compare_HWHH_Four_4.eps','psc2')





