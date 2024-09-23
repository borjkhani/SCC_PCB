figure

rng default  % For reproducibility
x = 1:8;


%%
load('Med_PYRs_VIP_Mod_Act.mat')
y1 = Med; %x + randn(1,10);
ax1 = subplot(3,2,1);
sz = 140;
scatter(ax1,x,y1,sz,'filled'); %alpha(.7); axis tight;
h1 = lsline(ax1);
h1.Color = 'r';
h1.LineWidth = 5; alpha(.7); %axis tight;
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')
set(gca, 'YLim', [13, 18]);
xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'})
%title('Correlation Analysis')
xlabel('VIP_A_c_t' )
ylabel('PYRs HWHH ({\circ})')
box off
%%
% %Find the best fit line for this data
% bestfit = polyfit(Year,disp_pr_s,1);
% disp_pr_s = bestfit(1)*Year + bestfit(2);
% hold on
% plot(Year,disp_pr_s,'k')
% hold off
% x=1:8
% theString = sprintf('y = %.3f x + %.3f', bestfit(1), bestfit(2));
% text(x, y, theString, 'FontSize', 24);
%%
load('Med_PYRs_VIP_Mod_DeAct.mat')
y1 = Med; %x + randn(1,10);
ax1 = subplot(3,2,2);
sz = 140;
scatter(ax1,x,y1,sz,'filled'); %alpha(.7); axis tight;
h1 = lsline(ax1);
h1.Color = 'r';
h1.LineWidth = 5; alpha(.7); %axis tight;
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')
set(gca, 'YLim', [13, 18]);
xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'})
%title('Correlation Analysis')
xlabel('VIP_D_e_A_c_t' )
ylabel('PYRs HWHH ({\circ})')
box off
%%
load('Med_PVs_VIP_Mod_Act.mat')

y1 = Med; %x + randn(1,10);
%y2 = 2*x + randn(1,10);

ax1 = subplot(3,2,3);
%ax2 = subplot(2,1,2);

%scatter(ax1,x,y1,'b','o'); alpha(.4); axis tight;
sz = 140;
scatter(ax1,x,y1,sz,'filled'); %alpha(.7); axis tight;

%scatter(ax2,x,y2)

h1 = lsline(ax1);
h1.Color = 'r';

% h2 = lsline(ax2);
h1.LineWidth = 5; alpha(.7); %axis tight;

a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')
set(gca, 'YLim', [13, 18]);

xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'})
%title('Correlation Analysis')
xlabel('VIP_A_c_t' )
ylabel('PVs HWHH ({\circ})')
box off

%%

load('Med_PVs_VIP_Mod_DeAct.mat')

y1 = Med; %x + randn(1,10);
%y2 = 2*x + randn(1,10);


ax1 = subplot(3,2,4);
%ax2 = subplot(2,1,2);

%scatter(ax1,x,y1,'b','o'); alpha(.4); axis tight;
sz = 140;
scatter(ax1,x,y1,sz,'filled'); %alpha(.7); axis tight;

%scatter(ax2,x,y2)

h1 = lsline(ax1);

h1.Color = 'r';

% h2 = lsline(ax2);
h1.LineWidth = 5; alpha(.7); %axis tight;

a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')
set(gca, 'YLim', [13, 18]);

xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'})
%title('Correlation Analysis')
xlabel('VIP_D_e_A_c_t' )
ylabel('PVs HWHH ({\circ})')

box off
%%
load('Med_Sst_VIP_Mod_Act.mat')
y1 = Med; %x + randn(1,10);
ax1 = subplot(3,2,5);
sz = 140;
scatter(ax1,x,y1,sz,'filled'); %alpha(.7); axis tight;
h1 = lsline(ax1);
h1.Color = 'r';
h1.LineWidth = 5; alpha(.7); %axis tight;
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')
set(gca, 'YLim', [13, 18]);
xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'})
%title('Correlation Analysis')
xlabel('VIP_A_c_t' )
ylabel('Sst HWHH ({\circ})')
box off
%%
load('Med_Sst_VIP_Mod_DeAct.mat')
y1 = Med; %x + randn(1,10);
ax1 = subplot(3,2,6);
sz = 140;
scatter(ax1,x,y1,sz,'filled'); %alpha(.7); axis tight;
h1 = lsline(ax1);
h1.Color = 'r';
h1.LineWidth = 5; alpha(.7); %axis tight;
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')
set(gca, 'YLim', [13, 18]);
xticks([ 1 2 3 4 5 6 7 8 ])
xticklabels({ 'Control'; '6%'; '12%'; '18%'; '25%'; '50%'; '75%'; '100%'})
%title('Correlation Analysis')
xlabel('VIP_D_e_A_c_t' )
ylabel('Sst HWHH ({\circ})')
box off
%%
sgtitle('Correlation analysis','fontsize',16,'FontWeight','bold')

set(1,'renderer','painters')
set(gcf, 'Units', 'Inches', 'Position', [2, 1, 13, 9], 'PaperUnits', 'Inches', 'PaperSize', [13, 9])
% saveas(gcf,'0_P_C.tif')
saveas(gcf,'CA_VIP_Mod.tif')
saveas(gcf,'CA_VIP_Mod.fig')
saveas(gcf,'CA_VIP_Mod.eps','psc2')