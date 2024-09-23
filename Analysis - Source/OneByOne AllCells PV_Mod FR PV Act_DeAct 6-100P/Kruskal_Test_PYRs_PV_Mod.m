% Group = [H_C1_PYRs;H_PV_Act_06P1_PYRs]
% [KW_h_06,KW_p_06] = kruskalwallis(Group) %H_C1,H_PV_Act1 
% 
% x = H_C1_PYRs;
%  [p, tbl, stats]=kruskalwallis(x,A,'on')
% %Post hoc test:
% [cc]=multcompare(stats,'alpha',.01,'CType','scheffe')
%%
clc
close all

Group = NaN(510,8)
%kruskalwallis()
%%

Group(1:1:length(H_C1_PYRs),1) = H_C1_PYRs;
Group(1:length(H_PV_Act_06P1_PYRs),2) = H_PV_Act_06P1_PYRs; 
Group(1:length(H_PV_Act_12P1_PYRs),3) = H_PV_Act_12P1_PYRs; 
Group(1:length(H_PV_Act_18P1_PYRs),4) = H_PV_Act_18P1_PYRs; 

Group(1:length(H_PV_Act_25P1_PYRs),5) = H_PV_Act_25P1_PYRs; 
Group(1:length(H_PV_Act_50P1_PYRs),6) = H_PV_Act_50P1_PYRs; 
Group(1:length(H_PV_Act_75P1_PYRs),7) = H_PV_Act_75P1_PYRs; 
Group(1:length(H_PV_Act_100P1_PYRs),8) = H_PV_Act_100P1_PYRs; 




figure;
kruskalwallis(Group)
%%
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')
%%
xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'}) %; 'PV_DeAct 6%'; 'PV_DeAct 12%'; 'PV_DeAct 18%'; 'PV_DeAct 25%'; 'PV_DeAct 50%'; 'PV_DeAct 75%'; 'PV_DeAct 100%'})
title('PV_A_c_t')
xlabel('Simulations' )
ylabel('PYRs FR')
box off
saveas(gcf,'FR_L_PYRs_PV_Mod_Act_KW.tif')
saveas(gcf,'FR_L_PYRs_PV_Mod_Act_KW.png')
saveas(gcf,'FR_L_PYRs_PV_Mod_Act_KW.fig')
saveas(gcf,'FR_L_PYRs_PV_Mod_Act_KW.eps','psc2')
%%
figure;

[p,tbl,stats] = kruskalwallis(Group,[],'off')
[c,m,h,nms] = multcompare(stats);
c1=zeros(28,7);
c1=c;
c1(1,7)=p;
c1(2:end,7)=NaN;
CC = array2table(c1)
%PP= array2table(p)
CC.Properties.VariableNames(1:7) = {'1st group','2nd group','Lower (95% confidence)','diff. est. group means','Upper (95% confidence)','P-values','P-value(all)'}
save FR_L_PYRs_PV_Mod_Act_KW_St.mat p tbl stats c m h nms
filename = 'FR_L_PYRs_PV_Mod_Act_KW_St.xlsx';
%writematrix(c,filename,'Sheet',1,'Range','D1')
writetable(CC,filename,'Sheet',1,'Range','D1')
%writetable(PP,filename,'Sheet',1,'Range','J2')


yticklabels({ '100%'; '75%'; '50%'; '25%';  '18%';  '12%';  '6%';  'Control' })
title('PYRs - PV_A_c_t')

saveas(gcf,'FR_L_PYRs_PV_Mod_Act_KW_St.tif')
saveas(gcf,'FR_L_PYRs_PV_Mod_Act_KW_St.png')
saveas(gcf,'FR_L_PYRs_PV_Mod_Act_KW_St.fig')
saveas(gcf,'FR_L_PYRs_PV_Mod_Act_KW_St.eps','psc2')
%% DeAct

Group = NaN(510,8)
%kruskalwallis()
%%

Group(1:1:length(H_C1_PYRs),1) = H_C1_PYRs;
Group(1:length(H_PV_DeAct_06P1_PYRs),2) = H_PV_DeAct_06P1_PYRs; 
Group(1:length(H_PV_DeAct_12P1_PYRs),3) = H_PV_DeAct_12P1_PYRs; 
Group(1:length(H_PV_DeAct_18P1_PYRs),4) = H_PV_DeAct_18P1_PYRs; 

Group(1:length(H_PV_DeAct_25P1_PYRs),5) = H_PV_DeAct_25P1_PYRs; 
Group(1:length(H_PV_DeAct_50P1_PYRs),6) = H_PV_DeAct_50P1_PYRs; 
Group(1:length(H_PV_DeAct_75P1_PYRs),7) = H_PV_DeAct_75P1_PYRs; 
Group(1:length(H_PV_DeAct_100P1_PYRs),8) = H_PV_DeAct_100P1_PYRs; 




figure;
kruskalwallis(Group)
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')


xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'}) %; 'PV_DeDeAct 6%'; 'PV_DeDeAct 12%'; 'PV_DeDeAct 18%'; 'PV_DeDeAct 25%'; 'PV_DeDeAct 50%'; 'PV_DeDeAct 75%'; 'PV_DeDeAct 100%'})
title('PV_D_e_A_c_t')
xlabel('Simulations' )
ylabel('PYRs FR')
box off
saveas(gcf,'FR_L_PYRs_PV_Mod_DeAct_KW.tif')
saveas(gcf,'FR_L_PYRs_PV_Mod_DeAct_KW.png')
saveas(gcf,'FR_L_PYRs_PV_Mod_DeAct_KW.fig')
saveas(gcf,'FR_L_PYRs_PV_Mod_DeAct_KW.eps','psc2')
%
figure;
%%
[p,tbl,stats] = kruskalwallis(Group,[],'off')
[c,m,h,nms] = multcompare(stats);
c1=zeros(28,7);
c1=c;
c1(1,7)=p;
c1(2:end,7)=NaN;
CC = array2table(c1)
%PP= array2table(p)
CC.Properties.VariableNames(1:7) = {'1st group','2nd group','Lower (95% confidence)','diff. est. group means','Upper (95% confidence)','P-values','P-value(all)'}
save FR_L_PYRs_PV_Mod_DeAct_KW_St.mat p tbl stats c m h nms
filename = 'FR_L_PYRs_PV_Mod_DeAct_KW_St.xlsx';
%writematrix(c,filename,'Sheet',1,'Range','D1')
writetable(CC,filename,'Sheet',1,'Range','D1')
%writetable(PP,filename,'Sheet',1,'Range','J2')

%%

yticklabels({ '100%'; '75%'; '50%'; '25%';  '18%';  '12%';  '6%';  'Control' })
title('PYRs - PV_D_e_A_c_t')

saveas(gcf,'FR_L_PYRs_PV_Mod_DeAct_KW_St.tif')
saveas(gcf,'FR_L_PYRs_PV_Mod_DeAct_KW_St.png')
saveas(gcf,'FR_L_PYRs_PV_Mod_DeAct_KW_St.fig')
saveas(gcf,'FR_L_PYRs_PV_Mod_DeAct_KW_St.eps','psc2')