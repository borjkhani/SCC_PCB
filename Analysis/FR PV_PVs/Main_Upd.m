%%
A_C  =  mean(BB_Control');
A_06 =  mean(BB_PV_Act_06P');
A_12 =  mean(BB_PV_Act_12P');
A_18 =  mean(BB_PV_Act_18P');
A_25 =  mean(BB_PV_Act_25P');
A_50 =  mean(BB_PV_Act_50P');
A_75 =  mean(BB_PV_Act_75P');
A_100 = mean(BB_PV_Act_100P');

h=figure

boxplot([A_C', A_06', A_12', A_18', A_25', A_50', A_75', A_100'   ])

xticklabels({'C','6%','12%','18%','25%','50%','75%','100%'})
xticks([1 :8])

%ylim=([0 Lim])

%

% a = get(gca,'XTickLabel');  
% set(gca,'XTickLabel',a,'fontsize',16,'FontWeight','normal')
% 
% xlabel('PV Activation' )
% ylabel('PV Firing Rates (Hz)')
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
save Med_FR_PV_PV_Act.mat Med

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
xlabel('PV Activation' )
ylabel('PV Firing Rates (Hz)')
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
saveas(gca,sprintf('PV_Act_U_L.tif'));
saveas(gca,sprintf('PV_Act_U_L.fig'));
saveas(gca,sprintf('PV_Act_U_L.png'));
saveas(gca,sprintf('PV_Act_U_L.eps','psc2'));

%%
A_C  =  mean(BB_Control');
A_06 =  mean(BB_PV_DeAct_06P');
A_12 =  mean(BB_PV_DeAct_12P');
A_18 =  mean(BB_PV_DeAct_18P');
A_25 =  mean(BB_PV_DeAct_25P');
A_50 =  mean(BB_PV_DeAct_50P');
A_75 =  mean(BB_PV_DeAct_75P');
A_100 = mean(BB_PV_DeAct_100P');

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
save Med_FR_PV_PV_DeAct.mat Med

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
% xlabel('PV Activation' )
% ylabel('PV Firing Rates (Hz)')
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
t=text(1, 1, ['Y=' num2str(p2(1,1)), '*X+' num2str(p2(1,2)) , '\newline', 'r=' num2str(r(1,2)),'\newline', 'p=' num2str(p(1,2)) ], 'FontSize', 8);

% t=text(1, 2, ['Y = ' num2str(p2(1,1)), ' * X + ' num2str(p2(1,2)) ],'FontSize', 8);
% t=text(1, 1.5, ['r  = ' num2str(r(1,2))],'FontSize', 8);
% t=text(1, 1, ['p = ' num2str(p(1,2))],'FontSize', 8);
%
xticklabels({'C','6%','12%','18%','25%','50%','75%','100%'})
xticks([1 :8])
%lineOut.Parent.Xticks.String = '0 ';
% lineOut.Parent.YLabel.String = 'PV Firing Rates (Hz)';
% lineOut.Parent.FontSize = 20;
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',16,'FontWeight','normal')

%xticks([ 1 2 3 4 5 6 7 8 ])
%xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%' }) %'Sst_DeAct 6%'; 'Sst_DeAct 12%'; 'Sst_DeAct 18%'; 'Sst_DeAct 25%'; 'Sst_DeAct 50%'; 'Sst_DeAct 75%'; 'Sst_DeAct 100%'})
%title('Sst_A_c_t')
xlabel('PV Suppression' )
ylabel('PV Firing Rates (Hz)')
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

yt = get(gca, 'YTick');
axis([xlim    0  ceil(max(yt)*1.15)])
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
saveas(gca,sprintf('PV_DeAct_U_L.tif'));
saveas(gca,sprintf('PV_DeAct_U_L.fig'));
saveas(gca,sprintf('PV_DeAct_U_L.png'));
saveas(gca,sprintf('PV_DeAct_U_L.eps','psc2'));
%%


