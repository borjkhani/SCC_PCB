% S_all_0_C1=Data_0_C1(:,:);
% S_all_22_C1=Data_22_C1(:,:);
% S_all_45_C1=Data_45_C1(:,:);
% S_all_67_C1=Data_67_C1(:,:);
% S_all_90_C1=Data_90_C1(:,:);
% S_all_112_C1=Data_112_C1(:,:);
% S_all_135_C1=Data_135_C1(:,:);
% S_all_157_C1=Data_157_C1(:,:);
% S_all_180_C1=Data_180_C1(:,:);

% S_all_0_C2=Data_0_C2(:,:);
% S_all_22_C2=Data_22_C2(:,:);
% S_all_45_C2=Data_45_C2(:,:);
% S_all_67_C2=Data_67_C2(:,:);
% S_all_90_C2=Data_90_C2(:,:);
% S_all_112_C2=Data_112_C2(:,:);
% S_all_135_C2=Data_135_C2(:,:);
% S_all_157_C2=Data_157_C2(:,:);
% S_all_180_C2=Data_180_C2(:,:);
% 
% S_all_0_C3=Data_0_C3(:,:);
% S_all_22_C3=Data_22_C3(:,:);
% S_all_45_C3=Data_45_C3(:,:);
% S_all_67_C3=Data_67_C3(:,:);
% S_all_90_C3=Data_90_C3(:,:);
% S_all_112_C3=Data_112_C3(:,:);
% S_all_135_C3=Data_135_C3(:,:);
% S_all_157_C3=Data_157_C3(:,:);
% S_all_180_C3=Data_180_C3(:,:);
% 
% % S_C2_all=[S_0_C2;S_22_C2;S_45_C2;S_67_C2;S_90_C2;S_112_C2;S_135_C2;S_157_C2;S_180_C2]
% S_C1_all=[mean(S_all_67_C1(:,1:128)');mean(S_all_90_C1(:,1:128)');mean(S_all_112_C1(:,1:128)');mean(S_all_135_C1(:,1:128)')]
% S_C1_all=S_C1_all*2;
% figure;
% boxplot(S_C1_all')
% 
% S_C2_all=[mean(S_all_67_C2(:,128:end)');mean(S_all_90_C2(:,128:end)');mean(S_all_112_C2(:,128:end)');mean(S_all_135_C2(:,128:end)')]
% S_C2_all=S_C2_all*2;
% figure;
% boxplot(S_C2_all')
% 
% S_C3_all=[mean(S_all_67_C3(:,638:end)');mean(S_all_90_C3(:,638:end)');mean(S_all_112_C3(:,638:end)');mean(S_all_135_C3(:,638:end)')]
% S_C3_all=S_C3_all*2;
% figure;
% boxplot(S_C3_all')
% %
% y=zeros(8,1)'
% %
% figure
% %subplot(2,2,1)
% x = 1:4 
% N = size(S_C1_all',1)
% %
% y = mean(S_C1_all')
% %
% SEM = std(S_C1_all') / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',1)
% grid off
% hold on;
% %
% x = 1:4; 
% N = size(S_C2_all',1);
% y = mean(S_C2_all');
% SEM = std(S_C2_all') / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',1)
% grid off
% hold on;
% 
% x = 1:4; 
% N = size(S_C3_all',1);
% y = mean(S_C3_all');
% SEM = std(S_C3_all') / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',1)
% grid off
% hold on;
% %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% for 17 orientations
% S_all_0_C1=Data_0_C1(:,:);
% S_all_11_C1=Data_11_C1(:,:);
% S_all_22_C1=Data_22_C1(:,:);
% S_all_33_C1=Data_33_C1(:,:);
% S_all_45_C1=Data_45_C1(:,:);
% S_all_56_C1=Data_56_C1(:,:);
% S_all_67_C1=Data_67_C1(:,:);
% S_all_78_C1=Data_78_C1(:,:);
% S_all_90_C1=Data_90_C1(:,:);
% S_all_101_C1=Data_101_C1(:,:);
% S_all_112_C1=Data_112_C1(:,:);
% S_all_123_C1=Data_123_C1(:,:);
% S_all_135_C1=Data_135_C1(:,:);
% S_all_146_C1=Data_146_C1(:,:);
% S_all_157_C1=Data_157_C1(:,:);
% S_all_168_C1=Data_168_C1(:,:);
% S_all_180_C1=Data_180_C1(:,:);

S_all_0_C2=Data_0_C2(:,:);
S_all_11_C2=Data_11_C2(:,:);
S_all_22_C2=Data_22_C2(:,:);
S_all_33_C2=Data_33_C2(:,:);
S_all_45_C2=Data_45_C2(:,:);
S_all_56_C2=Data_56_C2(:,:);
S_all_67_C2=Data_67_C2(:,:);
S_all_78_C2=Data_78_C2(:,:);
S_all_90_C2=Data_90_C2(:,:);
S_all_101_C2=Data_101_C2(:,:);
S_all_112_C2=Data_112_C2(:,:);
S_all_123_C2=Data_123_C2(:,:);
S_all_135_C2=Data_135_C2(:,:);
S_all_146_C2=Data_146_C2(:,:);
S_all_157_C2=Data_157_C2(:,:);
S_all_168_C2=Data_168_C2(:,:);
S_all_180_C2=Data_180_C2(:,:);

% S_all_0_C3=Data_0_C3(:,:);
% S_all_11_C3=Data_11_C3(:,:);
% S_all_22_C3=Data_22_C3(:,:);
% S_all_33_C3=Data_33_C3(:,:);
% S_all_45_C3=Data_45_C3(:,:);
% S_all_56_C3=Data_56_C3(:,:);
% S_all_67_C3=Data_67_C3(:,:);
% S_all_78_C3=Data_78_C3(:,:);
% S_all_90_C3=Data_90_C3(:,:);
% S_all_101_C3=Data_101_C3(:,:);
% S_all_112_C3=Data_112_C3(:,:);
% S_all_123_C3=Data_123_C3(:,:);
% S_all_135_C3=Data_135_C3(:,:);
% S_all_146_C3=Data_146_C3(:,:);
% S_all_157_C3=Data_157_C3(:,:);
% S_all_168_C3=Data_168_C3(:,:);
% S_all_180_C3=Data_180_C3(:,:);

% S_C2_all=[S_0_C2;S_22_C2;S_45_C2;S_67_C2;S_90_C2;S_112_C2;S_135_C2;S_157_C2;S_180_C2]
% S_C1_all=[mean(S_all_0_C1(:,1:128)');mean(S_all_11_C1(:,1:128)');mean(S_all_22_C1(:,1:128)');mean(S_all_33_C1(:,1:128)');mean(S_all_45_C1(:,1:128)');mean(S_all_56_C1(:,1:128)');mean(S_all_67_C1(:,1:128)');mean(S_all_78_C1(:,1:128)');mean(S_all_90_C1(:,1:128)');mean(S_all_101_C1(:,1:128)');mean(S_all_112_C1(:,1:128)');mean(S_all_123_C1(:,1:128)');mean(S_all_135_C1(:,1:128)');mean(S_all_146_C1(:,1:128)');mean(S_all_157_C1(:,1:128)');mean(S_all_168_C1(:,1:128)');mean(S_all_180_C1(:,1:128)')]
% S_C1_all=S_C1_all*2;
% figure;
% boxplot(S_C1_all')
% title('Column 1')

S_C2_all=[mean(S_all_0_C2(:,:)');mean(S_all_11_C2(:,:)');mean(S_all_22_C2(:,:)');mean(S_all_33_C2(:,:)');mean(S_all_45_C2(:,:)');mean(S_all_56_C2(:,:)');mean(S_all_67_C2(:,:)');mean(S_all_78_C2(:,:)');mean(S_all_90_C2(:,:)');mean(S_all_101_C2(:,:)');mean(S_all_112_C2(:,:)');mean(S_all_123_C2(:,:)');mean(S_all_135_C2(:,:)');mean(S_all_146_C2(:,:)');mean(S_all_157_C2(:,:)');mean(S_all_168_C2(:,:)');mean(S_all_180_C2(:,:)');]
S_C2_all=S_C2_all*2;
figure;
boxplot(S_C2_all')
title('Column 2')

% S_C3_all=[mean(S_all_0_C3(:,638:766)');mean(S_all_11_C3(:,638:766)');mean(S_all_22_C3(:,638:766)');mean(S_all_33_C3(:,638:766)');mean(S_all_45_C3(:,638:766)');mean(S_all_56_C3(:,638:766)');mean(S_all_67_C3(:,638:766)');mean(S_all_78_C3(:,638:766)');mean(S_all_90_C3(:,638:766)');mean(S_all_101_C3(:,638:766)');mean(S_all_112_C3(:,638:766)');mean(S_all_123_C3(:,638:766)');mean(S_all_135_C3(:,638:766)');mean(S_all_146_C3(:,638:766)');mean(S_all_157_C3(:,638:766)');mean(S_all_168_C3(:,638:766)');mean(S_all_180_C3(:,638:766)')]
% S_C3_all=S_C3_all*2;
% figure;
% boxplot(S_C3_all')
% title('Column 3')
%%
figure
%subplot(2,2,1)
% x = 1:17; 
% N = size(S_C1_all',1);
% y = mean(S_C1_all');
% SEM = std(S_C1_all') / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold on;

x = 1:17; 
N = size(S_C2_all',1);
y = mean(S_C2_all');
SEM = std(S_C2_all') / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;
%
% x = 1:17; 
% N = size(S_C3_all',1);
% y = mean(S_C3_all');
% SEM = std(S_C3_all') / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
% grid off
% hold on;
%
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',18,'FontWeight','bold')

% xticks([0 1 2 3 4 5 6 7 8 ])
% xticklabels([ 0; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135])
xticks([0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 ])
xticklabels([ 0; 0; 11.25; 22.5; 33.75; 45; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135; 146.25; 157.5; 168.75; 180])

xlabel('Orientations ({\circ})' )
ylabel('Firing rates (HZ)')
legend('1^{st} Column','2^{nd} Column', '3^{rd} Column' )
title ('Mean firing rates in the column (all cells) in 4 trials')
%xticklabels
box off


save S_C_all.mat S_C2_all 
%%
xx=1:17;
figure;
yy=mean(S_C2_all');
f = fit(xx.',yy.','gauss1')
plot(f,xx,yy)
 %%
% xx=1:13;
% figure;
% 
% yy=mean(S_C2_all');
% yyA=(yy(1)+yy(end))/2;
% yyB=(yy(1)+yy(end))/2;
% yy_mod=[0 yyA yy yyB 0]
% f = fit(xx.',yy_mod.','gauss1')
% plot(f,xx,yy_mod)
%%
% % figure
% % subplot(2,2,1)
% % x = 1:17; 
% % N = size(S_C1_all',1);
% % y = mean(S_C1_all');
% % SEM = std(S_C1_all') / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % errorbar(x, y, CI95,'LineWidth',3)
% % grid off
% % hold on;
% % 
% % 
% % x = 1:17; 
% % yy=S_C2_all';
% % Z1=zeros(1,length(yy(:,1)))+1*rand;
% % Z2=zeros(1,length(yy(:,1)))+1*rand;
% % Z3=zeros(1,length(yy(:,1)))+1*rand;
% % Z4=zeros(1,length(yy(:,1)))+1*rand;
% % 
% % yy_mod=[Z1' Z2' yy Z3' Z4']
% % 
% % N = size(yy_mod',1)
% % y = mean(yy_mod)
% % 
% % SEM = std(yy_mod) / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % errorbar(x, y, CI95,'LineWidth',3)
% % errorbar(x, y, CI95,'vertical','o','LineWidth',3)
% % grid off
% % hold on;
% % 
% % x = 1:17; 
% % N = size(S_C3_all',1);
% % y = mean(S_C3_all');
% % SEM = std(S_C3_all') / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % errorbar(x, y, CI95,'LineWidth',3)
% % grid off
% % hold on;
% % 
% % a = get(gca,'XTickLabel');  
% % set(gca,'XTickLabel',a,'fontsize',18,'FontWeight','bold')
% % 
% % xticks([0 1 2 3 4 5 6 7 8 ])
% % xticklabels([ 0; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135])
% % xticks([0 1 2 3 4 5 6 7 8 9 10 11 12 ])
% % xticklabels([ 0; 22.5; 33.75; 45; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135; 146.25; 156.5])
% % 
% % xlabel('Orientations ({\circ})' )
% % ylabel('Firing rates (HZ)')
% % legend('1^{st} Column','2^{nd} Column', '3^{rd} Column' )
% % title ('Mean firing rates in the column (all cells) in 4 trials')
% % xticklabels
% % box off
% % 
% % figure
% % xx=1:17;
% % yy_mod_mean=mean(yy_mod);
% % f = fit(xx.',yy_mod_mean.','gauss1')
% % plot(f,xx,yy_mod)