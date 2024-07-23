% Group = [H_C1_PV;H_VIP_Act_06P1_PV]
% [KW_h_06,KW_p_06] = kruskalwallis(Group) %H_C1,H_VIP_Act1 
% 
% x = H_C1_PV;
%  [p, tbl, stats]=kruskalwallis(x,A,'on')
% %Post hoc test:
% [cc]=multcompare(stats,'alpha',.01,'CType','scheffe')
%%
clc
close all

Group = NaN(510,8)
%kruskalwallis()
%%

Group(1:1:length(H_C1_PVs),1) = H_C1_PVs;
Group(1:length(H_VIP_Act_06P1_PVs),2) = H_VIP_Act_06P1_PVs; 
Group(1:length(H_VIP_Act_12P1_PVs),3) = H_VIP_Act_12P1_PVs; 
Group(1:length(H_VIP_Act_18P1_PVs),4) = H_VIP_Act_18P1_PVs; 

Group(1:length(H_VIP_Act_25P1_PVs),5) = H_VIP_Act_25P1_PVs; 
Group(1:length(H_VIP_Act_50P1_PVs),6) = H_VIP_Act_50P1_PVs; 
Group(1:length(H_VIP_Act_75P1_PVs),7) = H_VIP_Act_75P1_PVs; 
Group(1:length(H_VIP_Act_100P1_PVs),8) = H_VIP_Act_100P1_PVs; 




figure;
kruskalwallis(Group)
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'}) %; 'VIP_DeAct 6%'; 'VIP_DeAct 12%'; 'VIP_DeAct 18%'; 'VIP_DeAct 25%'; 'VIP_DeAct 50%'; 'VIP_DeAct 75%'; 'VIP_DeAct 100%'})
title('VIP_A_c_t')
xlabel('Simulations' )
ylabel('PV FR(spikes/s)')
box off
saveas(gcf,'FR_L_PV_VIP_Mod_Act_KW.tif')
saveas(gcf,'FR_L_PV_VIP_Mod_Act_KW.png')
saveas(gcf,'FR_L_PV_VIP_Mod_Act_KW.fig')
saveas(gcf,'FR_L_PV_VIP_Mod_Act_KW.eps','psc2')
%%
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
save FR_L_PV_VIP_Mod_Act_KW_St.mat p tbl stats c m h nms
filename = 'FR_L_PV_VIP_Mod_Act_KW_St.xlsx';
%writematrix(c,filename,'Sheet',1,'Range','D1')
writetable(CC,filename,'Sheet',1,'Range','D1')
%writetable(PP,filename,'Sheet',1,'Range','J2')
%%

yticklabels({ '100%'; '75%'; '50%'; '25%';  '18%';  '12%';  '6%';  'Control' })
title('PV - VIP_A_c_t')

saveas(gcf,'FR_L_PV_VIP_Mod_Act_KW_St.tif')
saveas(gcf,'FR_L_PV_VIP_Mod_Act_KW_St.png')
saveas(gcf,'FR_L_PV_VIP_Mod_Act_KW_St.fig')
saveas(gcf,'FR_L_PV_VIP_Mod_Act_KW_St.eps','psc2')

%%  DeAct

Group = NaN(510,8)
%kruskalwallis()
%%

Group(1:1:length(H_C1_PVs),1) = H_C1_PVs;
Group(1:length(H_VIP_DeAct_06P1_PVs),2) = H_VIP_DeAct_06P1_PVs; 
Group(1:length(H_VIP_DeAct_12P1_PVs),3) = H_VIP_DeAct_12P1_PVs; 
Group(1:length(H_VIP_DeAct_18P1_PVs),4) = H_VIP_DeAct_18P1_PVs; 

Group(1:length(H_VIP_DeAct_25P1_PVs),5) = H_VIP_DeAct_25P1_PVs; 
Group(1:length(H_VIP_DeAct_50P1_PVs),6) = H_VIP_DeAct_50P1_PVs; 
Group(1:length(H_VIP_DeAct_75P1_PVs),7) = H_VIP_DeAct_75P1_PVs; 
Group(1:length(H_VIP_DeAct_100P1_PVs),8) = H_VIP_DeAct_100P1_PVs; 




figure;
kruskalwallis(Group)
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'}) %; 'VIP_DeAct 6%'; 'VIP_DeAct 12%'; 'VIP_DeAct 18%'; 'VIP_DeAct 25%'; 'VIP_DeAct 50%'; 'VIP_DeAct 75%'; 'VIP_DeAct 100%'})
title('VIP_D_e_A_c_t')
xlabel('Simulations' )
ylabel('PV FR(spikes/s)')
box off
saveas(gcf,'FR_L_PV_VIP_Mod_DeAct_KW.tif')
saveas(gcf,'FR_L_PV_VIP_Mod_DeAct_KW.png')
saveas(gcf,'FR_L_PV_VIP_Mod_DeAct_KW.fig')
saveas(gcf,'FR_L_PV_VIP_Mod_DeAct_KW.eps','psc2')
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
save FR_L_PV_VIP_Mod_DeAct_KW_St.mat p tbl stats c m h nms
filename = 'FR_L_PV_VIP_Mod_DeAct_KW_St.xlsx';
%writematrix(c,filename,'Sheet',1,'Range','D1')
writetable(CC,filename,'Sheet',1,'Range','D1')
%writetable(PP,filename,'Sheet',1,'Range','J2')
%%

yticklabels({ '100%'; '75%'; '50%'; '25%';  '18%';  '12%';  '6%';  'Control' })
title('PV - VIP_D_e_A_c_t')

saveas(gcf,'FR_L_PV_VIP_Mod_DeAct_KW_St.tif')
saveas(gcf,'FR_L_PV_VIP_Mod_DeAct_KW_St.png')
saveas(gcf,'FR_L_PV_VIP_Mod_DeAct_KW_St.fig')
saveas(gcf,'FR_L_PV_VIP_Mod_DeAct_KW_St.eps','psc2')

