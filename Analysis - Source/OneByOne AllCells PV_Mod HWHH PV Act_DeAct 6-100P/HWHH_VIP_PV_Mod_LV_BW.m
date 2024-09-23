
%%
figure;

T1=length(H_C1_VIP)
T2=length(H_PV_Act_06P1_VIP)
T3=length(H_PV_Act_12P1_VIP)
T4=length(H_PV_Act_18P1_VIP)
T5=length(H_PV_Act_25P1_VIP)
T6=length(H_PV_Act_50P1_VIP)
T7=length(H_PV_Act_75P1_VIP)
T8=length(H_PV_Act_100P1_VIP)

T9=length(H_PV_DeAct_06P1_VIP)
T10=length(H_PV_DeAct_12P1_VIP)
T11=length(H_PV_DeAct_18P1_VIP)
T12=length(H_PV_DeAct_25P1_VIP)
T13=length(H_PV_DeAct_50P1_VIP)
T14=length(H_PV_DeAct_75P1_VIP)
T15=length(H_PV_DeAct_100P1_VIP)

H=[H_C1_VIP' H_PV_Act_06P1_VIP' H_PV_Act_12P1_VIP' H_PV_Act_18P1_VIP'  H_PV_Act_25P1_VIP' H_PV_Act_50P1_VIP' H_PV_Act_75P1_VIP' H_PV_Act_100P1_VIP' ]; %H_PV_DeAct_06P1_VIP' H_PV_DeAct_12P1_VIP' H_PV_DeAct_18P1_VIP'  H_PV_DeAct_25P1_VIP' H_PV_DeAct_50P1_VIP' H_PV_DeAct_75P1_VIP' H_PV_DeAct_100P1_VIP' ];
T=[zeros(1,T1),ones(1,T2),2*ones(1,T3),3*ones(1,T4),4*ones(1,T5),5*ones(1,T6),6*ones(1,T7),7*ones(1,T8)];%,8*ones(1,T9),9*ones(1,T10),10*ones(1,T11),11*ones(1,T12),12*ones(1,T13),13*ones(1,T14),14*ones(1,T15)];

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

%colors = [P8;P7;P6;P5;P4;P3;P2;P1];
P_Act=[0.85,0.33,0.10];
colors = [P_Act;P_Act;P_Act;P_Act;P_Act;P_Act;P_Act;P1];

boxplot(H,T) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'}) %  'PV_DeAct 6%'; 'PV_DeAct 12%'; 'PV_DeAct 18%'; 'PV_DeAct 25%'; 'PV_DeAct 50%'; 'PV_DeAct 75%'; 'PV_DeAct 100%'})
title('PV_A_c_t')
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
plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k',mean(xt([1 8])), max(yt)*1.155, '*k')
end
%

% if h_06_DeAct==1
% hold on
% plot(xt([1 9]), [1 1]*max(yt)*1.20, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_12_DeAct==1
% hold on
% plot(xt([1 10]), [1 1]*max(yt)*1.21, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_18_DeAct==1
% hold on
% plot(xt([1 11]), [1 1]*max(yt)*1.22, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_25_DeAct==1
% hold on
% plot(xt([1 12]), [1 1]*max(yt)*1.23, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_50_DeAct==1
% hold on
% plot(xt([1 13]), [1 1]*max(yt)*1.24, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_75_DeAct==1
% hold on
% plot(xt([1 14]), [1 1]*max(yt)*1.25, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end
% 
% if h_100_DeAct==1
% hold on
% plot(xt([1 15]), [1 1]*max(yt)*1.26, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
% end

%
med = median(H_C1_VIP);
plot(1,med,'ro-','Color','k'); hold on

med1 = median(H_PV_Act_06P1_VIP);
plot(2,med1,'ro-','Color','k'); hold on;

med2 = median(H_PV_Act_12P1_VIP);
plot(3,med2,'ro-','Color','k'); hold on;

med3 = median(H_PV_Act_18P1_VIP);
plot(4,med3,'ro-','Color','k'); hold on;

med4 = median(H_PV_Act_25P1_VIP);
plot(5,med4,'ro-','Color','k'); hold on;

med5 = median(H_PV_Act_50P1_VIP);
plot(6,med5,'ro-','Color','k'); hold on;

med6 = median(H_PV_Act_75P1_VIP);
plot(7,med6,'ro-','Color','k'); hold on;

med7 = median(H_PV_Act_100P1_VIP);
plot(8,med7,'ro-','Color','k'); hold on;

% med8 = median(H_PV_DeAct_06P1_VIP);
% plot(9,med8,'ro-','Color','k'); hold on;
% 
% med9 = median(H_PV_DeAct_12P1_VIP);
% plot(10,med9,'ro-','Color','k'); hold on;
% 
% med10 = median(H_PV_DeAct_18P1_VIP);
% plot(11,med10,'ro-','Color','k'); hold on;
% 
% med11 = median(H_PV_DeAct_25P1_VIP);
% plot(12,med11,'ro-','Color','k'); hold on;
% 
% med12 = median(H_PV_DeAct_50P1_VIP);
% plot(13,med12,'ro-','Color','k'); hold on;
% 
% med13 = median(H_PV_DeAct_75P1_VIP);
% plot(14,med13,'ro-','Color','k'); hold on;
% 
% med14 = median(H_PV_DeAct_100P1_VIP);
% plot(15,med14,'ro-','Color','k'); hold on;


Med=[med med1 med2 med3 med4 med5 med6 med7 ];%med8 med9 med10 med11 med12 med13 med14];
save Med_VIP_PV_Mod_Act.mat Med
plot(Med,'Color','k','LineStyle',':','LineWidth',3 ); hold on;
%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all
x11 = 1:8;
y11 = Med;
scatter(x11,y11,25,'LineWidth',2);
lh = lsline; 
p2 = polyfit(get(lh,'xdata'),get(lh,'ydata'),1)
%

%
mean0 = mean(H_C1_VIP);
plot(1,mean0,'*','Color','g'); hold on

mean1 = mean(H_PV_Act_06P1_VIP);
plot(2,mean1,'*','Color','g'); hold on;

mean2 = mean(H_PV_Act_12P1_VIP);
plot(3,mean2,'*','Color','g'); hold on;

mean3 = mean(H_PV_Act_18P1_VIP);
plot(4,mean3,'*','Color','g'); hold on;

mean4 = mean(H_PV_Act_25P1_VIP);
plot(5,mean4,'*','Color','g'); hold on;

mean5 = mean(H_PV_Act_50P1_VIP);
plot(6,mean5,'*','Color','g'); hold on;

mean6 = mean(H_PV_Act_75P1_VIP);
plot(7,mean6,'*','Color','g'); hold on;

mean7 = mean(H_PV_Act_100P1_VIP);
plot(8,mean7,'*','Color','g'); hold on;

hold on

boxplot(H,T,'Symbol', 'o','OutlierSize',2) %boxplot(a, x,'Whisker', inf);


hold on
XX=1:1:8;
YY=p2(1)*XX+p2(2);
%plot(YY,'LineWidth',2,"MarkerEdgeColor","b", "MarkerFaceColor",[0 0.7 0.7])
%alpha(.4)

%
yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.160)])
xt = get(gca, 'XTick');

if h_06==1
hold on
plot(xt([1 2]), [1 1]*max(yt)*1.120, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_12==1
hold on
plot(xt([1 3]), [1 1]*max(yt)*1.125, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_18==1
hold on
plot(xt([1 4]), [1 1]*max(yt)*1.130, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_25==1
hold on
plot(xt([1 5]), [1 1]*max(yt)*1.135, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_50==1
hold on
plot(xt([1 6]), [1 1]*max(yt)*1.140, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_75==1
hold on
plot(xt([1 7]), [1 1]*max(yt)*1.145, '-k')  %mean(xt([1 5])), max(yt)*1.18, '*k')
end

if h_100==1
hold on
plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k', mean(xt([1 8])), max(yt)*1.159, '*k')
end
%
title('PV_A_c_t')
xlabel('Simulations' )
ylabel('VIP HWHH ({\circ})')
box off
%
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')
%
xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'})


% colors = [ P_Act;P_Act;P_Act;P_Act;P_Act;P_Act;P_Act;P1];
% h = findobj(gca,'Tag','Box');
% for j=1:length(h)
%     patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
% end

%[r p] = corrcoef([0 6 12 18 25 50 75 100],Med)

%
[r p] = corrcoef([0 6 12 18 25 50 75 100],Med)
%

% %str = {'Coef=','P-val=','%d','%d'};
% str1 = {'Coef ='};
% str2={num2str(r(1,2))}
% %str = {'Coef=',r(1,2)};
% text(1,30,str1)
% text(2,30,str2)

% str1 = {'P-Val ='};
% str2={num2str(p(1,2))}
% %str = {'Coef=',r(1,2)};
% text(1,29,str1)
% text(2,29,str2)
%
%plot(YY,'LineWidth',2,"MarkerEdgeColor","b", "MarkerFaceColor",[0 0.7 0.7])
%plot(YY,'LineWidth',1.5,'Color',[0,0.7,0.9])
plot(YY,'LineWidth',1.3,'Color',"#D95319")

%
t=text(1, 19, ['Y=' num2str(p2(1,1)), '*X+' num2str(p2(1,2)) , '\newline', 'r=' num2str(r(1,2)),'\newline', 'p=' num2str(p(1,2)) ], 'FontSize', 8);

% t=text(1, 21, ['Y = ' num2str(p2(1,1)), ' * X + ' num2str(p2(1,2)) ]);
% t=text(1, 20, ['r  = ' num2str(r(1,2))]);
% t=text(1, 19, ['p = ' num2str(p(1,2))]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%
set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [1, 1, 5, 8.5], 'PaperUnits', 'Inches', 'PaperSize', [5, 8.5])
% saveas(gcf,'0_P_C.tif')

saveas(gcf,'L_VIP_PV_Mod_Act_BW.tif')
saveas(gcf,'L_VIP_PV_Mod_Act_BW.png')
saveas(gcf,'L_VIP_PV_Mod_Act_BW.fig')
saveas(gcf,'L_VIP_PV_Mod_Act_BW.eps','psc2')
%%
figure;

T1=length(H_C1_VIP)
T2=length(H_PV_Act_06P1_VIP)
T3=length(H_PV_Act_12P1_VIP)
T4=length(H_PV_Act_18P1_VIP)
T5=length(H_PV_Act_25P1_VIP)
T6=length(H_PV_Act_50P1_VIP)
T7=length(H_PV_Act_75P1_VIP)
T8=length(H_PV_Act_100P1_VIP)

T9=length(H_PV_DeAct_06P1_VIP)
T10=length(H_PV_DeAct_12P1_VIP)
T11=length(H_PV_DeAct_18P1_VIP)
T12=length(H_PV_DeAct_25P1_VIP)
T13=length(H_PV_DeAct_50P1_VIP)
T14=length(H_PV_DeAct_75P1_VIP)
T15=length(H_PV_DeAct_100P1_VIP)

H=[H_C1_VIP' H_PV_DeAct_06P1_VIP' H_PV_DeAct_12P1_VIP' H_PV_DeAct_18P1_VIP'  H_PV_DeAct_25P1_VIP' H_PV_DeAct_50P1_VIP' H_PV_DeAct_75P1_VIP' H_PV_DeAct_100P1_VIP' ];
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

%colors = [P8;P7;P6;P5;P4;P3;P2;P1];
P_DeAct = [0.93 0.69 0.13];
colors = [ P_DeAct;P_DeAct;P_DeAct;P_DeAct;P_DeAct;P_DeAct;P_DeAct;P1];

boxplot(H,T) %boxplot(a, x,'Whisker', inf);
h = findobj(gca,'Tag','Box');
for j=1:length(h)
    patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
end



a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'})
title('PV_D_e_A_c_t')
xlabel('Simulations' )
ylabel('VIP HWHH ({\circ})')
box off

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.160)])
xt = get(gca, 'XTick');
% hold on
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
% plot(xt([1 4]), [1 1]*max(yt)*1.130, '-k')%,  mean(xt([1 4])), max(yt)*1.18, '*k')
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
% plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k',mean(xt([1 8])), max(yt)*1.155, '*k')
% end
%

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
plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k', mean(xt([1 8])), max(yt)*1.155, '*k')
end

%
med = median(H_C1_VIP);
plot(1,med,'ro-','Color','k'); hold on

% med1 = median(H_PV_Act_06P1_VIP);
% plot(2,med1,'ro-','Color','k'); hold on;
% 
% med2 = median(H_PV_Act_12P1_VIP);
% plot(3,med2,'ro-','Color','k'); hold on;
% 
% med3 = median(H_PV_Act_18P1_VIP);
% plot(4,med3,'ro-','Color','k'); hold on;
% 
% med4 = median(H_PV_Act_25P1_VIP);
% plot(5,med4,'ro-','Color','k'); hold on;
% 
% med5 = median(H_PV_Act_50P1_VIP);
% plot(6,med5,'ro-','Color','k'); hold on;
% 
% med6 = median(H_PV_Act_75P1_VIP);
% plot(7,med6,'ro-','Color','k'); hold on;
% 
% med7 = median(H_PV_Act_100P1_VIP);
% plot(8,med7,'ro-','Color','k'); hold on;

med8 = median(H_PV_DeAct_06P1_VIP);
plot(9,med8,'ro-','Color','k'); hold on;

med9 = median(H_PV_DeAct_12P1_VIP);
plot(10,med9,'ro-','Color','k'); hold on;

med10 = median(H_PV_DeAct_18P1_VIP);
plot(11,med10,'ro-','Color','k'); hold on;

med11 = median(H_PV_DeAct_25P1_VIP);
plot(12,med11,'ro-','Color','k'); hold on;

med12 = median(H_PV_DeAct_50P1_VIP);
plot(13,med12,'ro-','Color','k'); hold on;

med13 = median(H_PV_DeAct_75P1_VIP);
plot(14,med13,'ro-','Color','k'); hold on;

med14 = median(H_PV_DeAct_100P1_VIP);
plot(15,med14,'ro-','Color','k'); hold on;


Med=[med med8 med9 med10 med11 med12 med13 med14];
save Med_VIP_PV_Mod_DeAct.mat Med
plot(Med,'Color','k','LineStyle',':','LineWidth',3 ); hold on;
%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all
x11 = 1:8;
y11 = Med;
scatter(x11,y11,25,'LineWidth',2);
lh = lsline; 
p2 = polyfit(get(lh,'xdata'),get(lh,'ydata'),1)
%

%
mean0 = mean(H_C1_VIP);
plot(1,mean0,'*','Color','g'); hold on

mean1 = mean(H_PV_DeAct_06P1_VIP);
plot(2,mean1,'*','Color','g'); hold on;

mean2 = mean(H_PV_DeAct_12P1_VIP);
plot(3,mean2,'*','Color','g'); hold on;

mean3 = mean(H_PV_DeAct_18P1_VIP);
plot(4,mean3,'*','Color','g'); hold on;

mean4 = mean(H_PV_DeAct_25P1_VIP);
plot(5,mean4,'*','Color','g'); hold on;

mean5 = mean(H_PV_DeAct_50P1_VIP);
plot(6,mean5,'*','Color','g'); hold on;

mean6 = mean(H_PV_DeAct_75P1_VIP);
plot(7,mean6,'*','Color','g'); hold on;

mean7 = mean(H_PV_DeAct_100P1_VIP);
plot(8,mean7,'*','Color','g'); hold on;

hold on

boxplot(H,T,'Symbol', 'o','OutlierSize',2) %boxplot(a, x,'Whisker', inf);


hold on
XX=1:1:8;
YY=p2(1)*XX+p2(2);
%plot(YY,'LineWidth',2,"MarkerEdgeColor","b", "MarkerFaceColor",[0 0.7 0.7])
%alpha(.4)

%
yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.160)])
xt = get(gca, 'XTick');

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
plot(xt([1 8]), [1 1]*max(yt)*1.150, '-k', mean(xt([1 8])), max(yt)*1.159, '*k')
end
%
title('PV_D_e_A_c_t')
xlabel('Simulations' )
ylabel('VIP HWHH ({\circ})')
box off
%
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')
%
xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'})


% colors = [ P_DeAct;P_DeAct;P_DeAct;P_DeAct;P_DeAct;P_DeAct;P_DeAct;P1];
% h = findobj(gca,'Tag','Box');
% for j=1:length(h)
%     patch(get(h(j),'XData'),get(h(j),'YData'),colors(j,:),'FaceAlpha',.5);
% end

%[r p] = corrcoef([0 6 12 18 25 50 75 100],Med)

%
[r p] = corrcoef([0 6 12 18 25 50 75 100],Med)
%

% %str = {'Coef=','P-val=','%d','%d'};
% str1 = {'Coef ='};
% str2={num2str(r(1,2))}
% %str = {'Coef=',r(1,2)};
% text(1,30,str1)
% text(2,30,str2)

% str1 = {'P-Val ='};
% str2={num2str(p(1,2))}
% %str = {'Coef=',r(1,2)};
% text(1,29,str1)
% text(2,29,str2)
%
%plot(YY,'LineWidth',2,"MarkerEdgeColor","b", "MarkerFaceColor",[0 0.7 0.7])
%plot(YY,'LineWidth',1.5,'Color',[0,0.7,0.9])
plot(YY,'LineWidth',1.3,'Color',"#D95319")

%
t=text(1, 19, ['Y=' num2str(p2(1,1)), '*X+' num2str(p2(1,2)) , '\newline', 'r=' num2str(r(1,2)),'\newline', 'p=' num2str(p(1,2)) ], 'FontSize', 8);

% t=text(1, 21, ['Y = ' num2str(p2(1,1)), ' * X + ' num2str(p2(1,2)) ]);
% t=text(1, 20, ['r  = ' num2str(r(1,2))]);
% t=text(1, 19, ['p = ' num2str(p(1,2))]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%
set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [6, 1, 5, 8.5], 'PaperUnits', 'Inches', 'PaperSize', [5, 8.5])
% saveas(gcf,'0_P_C.tif')

saveas(gcf,'L_VIP_PV_Mod_DeAct_BW.tif')
saveas(gcf,'L_VIP_PV_Mod_DeAct_BW.png')
saveas(gcf,'L_VIP_PV_Mod_DeAct_BW.fig')
saveas(gcf,'L_VIP_PV_Mod_DeAct_BW.eps','psc2')
