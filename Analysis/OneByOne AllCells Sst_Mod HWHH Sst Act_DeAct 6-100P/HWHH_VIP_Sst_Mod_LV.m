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
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%' }) %; 'Sst_DeAct 6%'; 'Sst_DeAct 12%'; 'Sst_DeAct 18%'; 'Sst_DeAct 25%'; 'Sst_DeAct 50%'; 'Sst_DeAct 75%'; 'Sst_DeAct 100%'})
title('Sst_A_c_t')
xlabel('Simulations' )
ylabel('VIP HWHH ({\circ})')
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
save Med_VIP_Sst_Mod_Act.mat Med
plot(Med,'Color','k','LineStyle',':','LineWidth',3 ); hold on;

set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [1, 1, 5, 8.5], 'PaperUnits', 'Inches', 'PaperSize', [5, 8.5])
% saveas(gcf,'0_P_C.tif')

saveas(gcf,'L_VIP_Sst_Mod_Act.tif')
saveas(gcf,'L_VIP_Sst_Mod_Act.fig')
saveas(gcf,'L_VIP_Sst_Mod_Act.eps','psc2')
%
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
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'})
title('Sst_D_e_A_c_t')
xlabel('Simulations' )
ylabel('VIP HWHH ({\circ})')
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
save Med_VIP_Sst_Mod_DeAct.mat Med
plot(Med,'Color','k','LineStyle',':','LineWidth',3 ); hold on;

set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [6, 1, 5, 8.5], 'PaperUnits', 'Inches', 'PaperSize', [5, 8.5])
% saveas(gcf,'0_P_C.tif')

saveas(gcf,'L_VIP_Sst_Mod_DeAct.tif')
saveas(gcf,'L_VIP_Sst_Mod_DeAct.fig')
saveas(gcf,'L_VIP_Sst_Mod_DeAct.eps','psc2')