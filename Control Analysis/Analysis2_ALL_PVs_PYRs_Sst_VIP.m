run Cell_IDs.m
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

% PVs
S_all_0_C2_PVs=Data_0_C2(:,PVs);
S_all_11_C2_PVs=Data_11_C2(:,PVs);
S_all_22_C2_PVs=Data_22_C2(:,PVs);
S_all_33_C2_PVs=Data_33_C2(:,PVs);
S_all_45_C2_PVs=Data_45_C2(:,PVs);
S_all_56_C2_PVs=Data_56_C2(:,PVs);
S_all_67_C2_PVs=Data_67_C2(:,PVs);
S_all_78_C2_PVs=Data_78_C2(:,PVs);
S_all_90_C2_PVs=Data_90_C2(:,PVs);
S_all_101_C2_PVs=Data_101_C2(:,PVs);
S_all_112_C2_PVs=Data_112_C2(:,PVs);
S_all_123_C2_PVs=Data_123_C2(:,PVs);
S_all_135_C2_PVs=Data_135_C2(:,PVs);
S_all_146_C2_PVs=Data_146_C2(:,PVs);
S_all_157_C2_PVs=Data_157_C2(:,PVs);
S_all_168_C2_PVs=Data_168_C2(:,PVs);
S_all_180_C2_PVs=Data_180_C2(:,PVs);


% PYRs
S_all_0_C2_PYRs=Data_0_C2(:,PYRs);
S_all_11_C2_PYRs=Data_11_C2(:,PYRs);
S_all_22_C2_PYRs=Data_22_C2(:,PYRs);
S_all_33_C2_PYRs=Data_33_C2(:,PYRs);
S_all_45_C2_PYRs=Data_45_C2(:,PYRs);
S_all_56_C2_PYRs=Data_56_C2(:,PYRs);
S_all_67_C2_PYRs=Data_67_C2(:,PYRs);
S_all_78_C2_PYRs=Data_78_C2(:,PYRs);
S_all_90_C2_PYRs=Data_90_C2(:,PYRs);
S_all_101_C2_PYRs=Data_101_C2(:,PYRs);
S_all_112_C2_PYRs=Data_112_C2(:,PYRs);
S_all_123_C2_PYRs=Data_123_C2(:,PYRs);
S_all_135_C2_PYRs=Data_135_C2(:,PYRs);
S_all_146_C2_PYRs=Data_146_C2(:,PYRs);
S_all_157_C2_PYRs=Data_157_C2(:,PYRs);
S_all_168_C2_PYRs=Data_168_C2(:,PYRs);
S_all_180_C2_PYRs=Data_180_C2(:,PYRs);


% Sst
S_all_0_C2_Sst=Data_0_C2(:,Sst);
S_all_11_C2_Sst=Data_11_C2(:,Sst);
S_all_22_C2_Sst=Data_22_C2(:,Sst);
S_all_33_C2_Sst=Data_33_C2(:,Sst);

S_all_45_C2_Sst=Data_45_C2(:,Sst);
S_all_56_C2_Sst=Data_56_C2(:,Sst);
S_all_67_C2_Sst=Data_67_C2(:,Sst);
S_all_78_C2_Sst=Data_78_C2(:,Sst);
S_all_90_C2_Sst=Data_90_C2(:,Sst);
S_all_101_C2_Sst=Data_101_C2(:,Sst);
S_all_112_C2_Sst=Data_112_C2(:,Sst);
S_all_123_C2_Sst=Data_123_C2(:,Sst);
S_all_135_C2_Sst=Data_135_C2(:,Sst);
S_all_146_C2_Sst=Data_146_C2(:,Sst);
S_all_157_C2_Sst=Data_157_C2(:,Sst);
S_all_168_C2_Sst=Data_168_C2(:,Sst);
S_all_180_C2_Sst=Data_180_C2(:,Sst);


% VIP
S_all_0_C2_VIP=Data_0_C2(:,VIP);
S_all_11_C2_VIP=Data_11_C2(:,VIP);
S_all_22_C2_VIP=Data_22_C2(:,VIP);
S_all_33_C2_VIP=Data_33_C2(:,VIP);
S_all_45_C2_VIP=Data_45_C2(:,VIP);
S_all_56_C2_VIP=Data_56_C2(:,VIP);
S_all_67_C2_VIP=Data_67_C2(:,VIP);
S_all_78_C2_VIP=Data_78_C2(:,VIP);
S_all_90_C2_VIP=Data_90_C2(:,VIP);
S_all_101_C2_VIP=Data_101_C2(:,VIP);
S_all_112_C2_VIP=Data_112_C2(:,VIP);
S_all_123_C2_VIP=Data_123_C2(:,VIP);
S_all_135_C2_VIP=Data_135_C2(:,VIP);
S_all_146_C2_VIP=Data_146_C2(:,VIP);
S_all_157_C2_VIP=Data_157_C2(:,VIP);
S_all_168_C2_VIP=Data_168_C2(:,VIP);
S_all_180_C2_VIP=Data_180_C2(:,VIP);

% S_all_146_C2=Data_146_C2(:,:);
% S_all_157_C2=Data_157_C2(:,:);
% S_all_168_C2=Data_168_C2(:,:);
% S_all_180_C2=Data_180_C2(:,:);

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

%PVs
S_C2_all_PVs=[mean(S_all_0_C2_PVs(:,:)');mean(S_all_11_C2_PVs(:,:)');mean(S_all_22_C2_PVs(:,:)');mean(S_all_33_C2_PVs(:,:)');mean(S_all_45_C2_PVs(:,:)');mean(S_all_56_C2_PVs(:,:)');mean(S_all_67_C2_PVs(:,:)');mean(S_all_78_C2_PVs(:,:)');mean(S_all_90_C2_PVs(:,:)');mean(S_all_101_C2_PVs(:,:)');mean(S_all_112_C2_PVs(:,:)');mean(S_all_123_C2_PVs(:,:)');mean(S_all_135_C2_PVs(:,:)');mean(S_all_146_C2_PVs(:,:)');mean(S_all_157_C2_PVs(:,:)');mean(S_all_168_C2_PVs(:,:)');mean(S_all_180_C2_PVs(:,:)');]
S_C2_all_PVs=S_C2_all_PVs*2;
figure;
boxplot(S_C2_all_PVs')
title('Column 2 _PVs')

% PYRs
S_C2_all_PYRs=[mean(S_all_0_C2_PYRs(:,:)');mean(S_all_11_C2_PYRs(:,:)');mean(S_all_22_C2_PYRs(:,:)');mean(S_all_33_C2_PYRs(:,:)');mean(S_all_45_C2_PYRs(:,:)');mean(S_all_56_C2_PYRs(:,:)');mean(S_all_67_C2_PYRs(:,:)');mean(S_all_78_C2_PYRs(:,:)');mean(S_all_90_C2_PYRs(:,:)');mean(S_all_101_C2_PYRs(:,:)');mean(S_all_112_C2_PYRs(:,:)');mean(S_all_123_C2_PYRs(:,:)');mean(S_all_135_C2_PYRs(:,:)');mean(S_all_146_C2_PYRs(:,:)');mean(S_all_157_C2_PYRs(:,:)');mean(S_all_168_C2_PYRs(:,:)');mean(S_all_180_C2_PYRs(:,:)');]
S_C2_all_PYRs=S_C2_all_PYRs*2;
figure;
boxplot(S_C2_all_PYRs')
title('Column 2 _PYRs')

% Sst
S_C2_all_Sst=[mean(S_all_0_C2_Sst(:,:)');mean(S_all_11_C2_Sst(:,:)');mean(S_all_22_C2_Sst(:,:)');mean(S_all_33_C2_Sst(:,:)');mean(S_all_45_C2_Sst(:,:)');mean(S_all_56_C2_Sst(:,:)');mean(S_all_67_C2_Sst(:,:)');mean(S_all_78_C2_Sst(:,:)');mean(S_all_90_C2_Sst(:,:)');mean(S_all_101_C2_Sst(:,:)');mean(S_all_112_C2_Sst(:,:)');mean(S_all_123_C2_Sst(:,:)');mean(S_all_135_C2_Sst(:,:)');mean(S_all_146_C2_Sst(:,:)');mean(S_all_157_C2_Sst(:,:)');mean(S_all_168_C2_Sst(:,:)');mean(S_all_180_C2_Sst(:,:)');]
S_C2_all_Sst=S_C2_all_Sst*2;
figure;
boxplot(S_C2_all_Sst')
title('Column 2 _Sst')

% VIP
S_C2_all_VIP=[mean(S_all_0_C2_VIP(:,:)');mean(S_all_11_C2_VIP(:,:)');mean(S_all_22_C2_VIP(:,:)');mean(S_all_33_C2_VIP(:,:)');mean(S_all_45_C2_VIP(:,:)');mean(S_all_56_C2_VIP(:,:)');mean(S_all_67_C2_VIP(:,:)');mean(S_all_78_C2_VIP(:,:)');mean(S_all_90_C2_VIP(:,:)');mean(S_all_101_C2_VIP(:,:)');mean(S_all_112_C2_VIP(:,:)');mean(S_all_123_C2_VIP(:,:)');mean(S_all_135_C2_VIP(:,:)');mean(S_all_146_C2_VIP(:,:)');mean(S_all_157_C2_VIP(:,:)');mean(S_all_168_C2_VIP(:,:)');mean(S_all_180_C2_VIP(:,:)');]
S_C2_all_VIP=S_C2_all_VIP*2;
figure;
boxplot(S_C2_all_VIP')
title('Column 2 _VIP')

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

% PVs
x = 1:17; 
N = size(S_C2_all_PVs',1);
y = mean(S_C2_all_PVs');
SEM = std(S_C2_all_PVs') / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

% PYRs
x = 1:17; 
N = size(S_C2_all_PYRs',1);
y = mean(S_C2_all_PYRs');
SEM = std(S_C2_all_PYRs') / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

% Sst
x = 1:17; 
N = size(S_C2_all_Sst',1);
y = mean(S_C2_all_Sst');
SEM = std(S_C2_all_Sst') / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;

% VIP
x = 1:17; 
N = size(S_C2_all_VIP',1);
y = mean(S_C2_all_VIP');
SEM = std(S_C2_all_VIP') / sqrt(N);                    % Standard Error Of The Mean
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
xticks([0 1 2 3 4 5 6 7 8  ])
xticklabels([ 0; 45; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135])

xlabel('Orientations ({\circ})' )
ylabel('Firing rates (HZ)')
legend('All','PVs','PYRs','Sst','VIP' )
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

hold on;
yy_PVs=mean(S_C2_all_PVs');
f = fit(xx.',yy_PVs.','gauss1')
plot(f,xx,yy_PVs)

hold on;
yy_PYRs=mean(S_C2_all_PYRs');
f = fit(xx.',yy_PYRs.','gauss1')
plot(f,xx,yy_PYRs)

hold on;
yy_Sst=mean(S_C2_all_Sst');
f = fit(xx.',yy_Sst.','gauss1')
plot(f,xx,yy_Sst)

hold on;
yy_VIP=mean(S_C2_all_VIP');
f = fit(xx.',yy_VIP.','gauss1')
plot(f,xx,yy_VIP)

legend off
%legend('All','PVs','PYRs','Sst','VIP' )

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
% figure
% %subplot(2,2,1)
% % x = 1:17; 
% % N = size(S_C1_all',1);
% % y = mean(S_C1_all');
% % SEM = std(S_C1_all') / sqrt(N);                    % Standard Error Of The Mean
% % CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % errorbar(x, y, CI95,'LineWidth',3)
% % grid off
% % hold on;
% 
% 
% x = 1:13; 
% yy=S_C2_all';
% Z1=zeros(1,length(yy(:,1)))+1*rand;
% Z2=zeros(1,length(yy(:,1)))+1*rand;
% Z3=zeros(1,length(yy(:,1)))+1*rand;
% Z4=zeros(1,length(yy(:,1)))+1*rand;
% 
% yy_mod=[Z1' Z2' yy Z3' Z4']
% %
% N = size(yy_mod',1)
% y = mean(yy_mod)
% %
% SEM = std(yy_mod) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % errorbar(x, y, CI95,'LineWidth',3)
% errorbar(x, y, CI95,'vertical','o','LineWidth',3)
% grid off
% hold on;
% 
% % PVs
% x = 1:13; 
% yy_PVs=S_C2_all_PVs';
% Z1=zeros(1,length(yy_PVs(:,1)))+1*rand;
% Z2=zeros(1,length(yy_PVs(:,1)))+1*rand;
% Z3=zeros(1,length(yy_PVs(:,1)))+1*rand;
% Z4=zeros(1,length(yy_PVs(:,1)))+1*rand;
% 
% yy_mod_PVs=[Z1' Z2' yy_PVs Z3' Z4']
% %
% N = size(yy_mod_PVs',1)
% y_PVs = mean(yy_mod_PVs)
% %
% SEM = std(yy_mod_PVs) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % errorbar(x, y, CI95,'LineWidth',3)
% errorbar(x, y_PVs, CI95,'vertical','o','LineWidth',3)
% grid off
% hold on;
% 
% % PYRs
% x = 1:13; 
% yy_PYRs=S_C2_all_PYRs';
% Z1=zeros(1,length(yy_PYRs(:,1)))+1*rand;
% Z2=zeros(1,length(yy_PYRs(:,1)))+1*rand;
% Z3=zeros(1,length(yy_PYRs(:,1)))+1*rand;
% Z4=zeros(1,length(yy_PYRs(:,1)))+1*rand;
% 
% yy_mod_PYRs=[Z1' Z2' yy_PYRs Z3' Z4']
% %
% N = size(yy_mod_PYRs',1)
% y_PYRs = mean(yy_mod_PYRs)
% %
% SEM = std(yy_mod_PYRs) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % errorbar(x, y, CI95,'LineWidth',3)
% errorbar(x, y_PYRs, CI95,'vertical','o','LineWidth',3)
% grid off
% hold on;
% 
% % Sst
% x = 1:13; 
% yy_Sst=S_C2_all_Sst';
% Z1=zeros(1,length(yy_Sst(:,1)))+1*rand;
% Z2=zeros(1,length(yy_Sst(:,1)))+1*rand;
% Z3=zeros(1,length(yy_Sst(:,1)))+1*rand;
% Z4=zeros(1,length(yy_Sst(:,1)))+1*rand;
% 
% yy_mod_Sst=[Z1' Z2' yy_Sst Z3' Z4']
% %
% N = size(yy_mod_Sst',1)
% y_Sst = mean(yy_mod_Sst)
% %
% SEM = std(yy_mod_Sst) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % errorbar(x, y, CI95,'LineWidth',3)
% errorbar(x, y_Sst, CI95,'vertical','o','LineWidth',3)
% grid off
% hold on;
% 
% % VIP
% x = 1:13; 
% yy_VIP=S_C2_all_VIP';
% Z1=zeros(1,length(yy_VIP(:,1)))+1*rand;
% Z2=zeros(1,length(yy_VIP(:,1)))+1*rand;
% Z3=zeros(1,length(yy_VIP(:,1)))+1*rand;
% Z4=zeros(1,length(yy_VIP(:,1)))+1*rand;
% 
% yy_mod_VIP=[Z1' Z2' yy_VIP Z3' Z4']
% %
% N = size(yy_mod_VIP',1)
% y_VIP = mean(yy_mod_VIP)
% %
% SEM = std(yy_mod_VIP) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% % errorbar(x, y, CI95,'LineWidth',3)
% errorbar(x, y_VIP, CI95,'vertical','o','LineWidth',3)
% grid off
% hold on;
% 
% 
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
% a = get(gca,'XTickLabel');  
% set(gca,'XTickLabel',a,'fontsize',18,'FontWeight','bold')
% 
% % xticks([0 1 2 3 4 5 6 7 8 ])
% % xticklabels([ 0; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135])
% xticks([0 1 2 3 4 5 6 7 8 9 10 11 12 ])
% xticklabels([ 0; 22.5; 33.75; 45; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135; 146.25; 156.5])
% 
% xlabel('Orientations ({\circ})' )
% ylabel('Firing rates (HZ)')
% legend('1^{st} Column','2^{nd} Column', '3^{rd} Column' )
% title ('Mean firing rates in the column (all cells) in 4 trials')
% %xticklabels
% box off
% %
% %figure
% xx=1:13;
% yy_mod_mean=mean(yy_mod);
% f = fit(xx.',yy_mod_mean.','gauss1')
% plot(f,xx,yy_mod)
% hold on
% 
% yy_mod_mean_PVs=mean(yy_mod_PVs);
% f = fit(xx.',yy_mod_mean_PVs.','gauss1')
% plot(f,xx,yy_mod_PVs)
% hold on
% 
% yy_mod_mean_PYRs=mean(yy_mod_PYRs);
% f = fit(xx.',yy_mod_mean_PYRs.','gauss1')
% plot(f,xx,yy_mod_PYRs)
% hold on
% 
% yy_mod_mean_Sst=mean(yy_mod_Sst);
% f = fit(xx.',yy_mod_mean_Sst.','gauss1')
% plot(f,xx,yy_mod_Sst)
% hold on
% 
% yy_mod_mean_VIP=mean(yy_mod_VIP);
% f = fit(xx.',yy_mod_mean_VIP.','gauss1')
% plot(f,xx,yy_mod_VIP)
% hold on
% 
% legend off
% legend('All','PVs','PYRs','Sst','VIP' )
% 

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
%x = 1:13; 
yy=S_C2_all';
% Z1=zeros(1,length(yy(:,1)))+1*rand;
% Z2=zeros(1,length(yy(:,1)))+1*rand;
% Z3=zeros(1,length(yy(:,1)))+1*rand;
% Z4=zeros(1,length(yy(:,1)))+1*rand;

%yy_mod=[Z1' Z2' yy Z3' Z4']
yy_mod=[ yy ]
N = size(yy_mod',1)
y = mean(yy_mod)
SEM = std(yy_mod) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
errorbar(x, y, CI95,'vertical','o','LineWidth',3)

% xx=1:9;
% yy_mod_mean=mean(yy_mod);
% f = fit(xx.',yy_mod_mean.','gauss1')
% plot(f,xx,yy_mod)

grid off
hold on;

% xx=1:9;
% yy_mod_mean=mean(yy_mod);
% f = fit(xx.',yy_mod_mean.','gauss1')
% plot(f,xx,yy_mod)
% hold on

% PVs
x = 1:17; %13 
yy_PVs=S_C2_all_PVs';
% Z1=zeros(1,length(yy_PVs(:,1)))+1*rand;
% Z2=zeros(1,length(yy_PVs(:,1)))+1*rand;
% Z3=zeros(1,length(yy_PVs(:,1)))+1*rand;
% Z4=zeros(1,length(yy_PVs(:,1)))+1*rand;

yy_mod_PVs=[yy_PVs]
%
N = size(yy_mod_PVs',1)
y_PVs = mean(yy_mod_PVs)
%
SEM = std(yy_mod_PVs) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
errorbar(x, y_PVs, CI95,'vertical','o','LineWidth',3)
grid off
hold on;


% PYRs
x = 1:17; %13 
yy_PYRs=S_C2_all_PYRs';
% Z1=zeros(1,length(yy_PYRs(:,1)))+1*rand;
% Z2=zeros(1,length(yy_PYRs(:,1)))+1*rand;
% Z3=zeros(1,length(yy_PYRs(:,1)))+1*rand;
% Z4=zeros(1,length(yy_PYRs(:,1)))+1*rand;

yy_mod_PYRs=[ yy_PYRs ]
%
N = size(yy_mod_PYRs',1)
y_PYRs = mean(yy_mod_PYRs)
%
SEM = std(yy_mod_PYRs) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
errorbar(x, y_PYRs, CI95,'vertical','o','LineWidth',3)
grid off
hold on;

% Sst
x = 1:17; 
yy_Sst=S_C2_all_Sst';
% Z1=zeros(1,length(yy_Sst(:,1)))+1*rand;
% Z2=zeros(1,length(yy_Sst(:,1)))+1*rand;
% Z3=zeros(1,length(yy_Sst(:,1)))+1*rand;
% Z4=zeros(1,length(yy_Sst(:,1)))+1*rand;

yy_mod_Sst=[ yy_Sst ]
%
N = size(yy_mod_Sst',1)
y_Sst = mean(yy_mod_Sst)
%
SEM = std(yy_mod_Sst) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
errorbar(x, y_Sst, CI95,'vertical','o','LineWidth',3)
grid off
hold on;

% VIP
x = 1:17; 
yy_VIP=S_C2_all_VIP';
% Z1=zeros(1,length(yy_VIP(:,1)))+1*rand;
% Z2=zeros(1,length(yy_VIP(:,1)))+1*rand;
% Z3=zeros(1,length(yy_VIP(:,1)))+1*rand;
% Z4=zeros(1,length(yy_VIP(:,1)))+1*rand;

yy_mod_VIP=[ yy_VIP ]
%
N = size(yy_mod_VIP',1)
y_VIP = mean(yy_mod_VIP)
%
SEM = std(yy_mod_VIP) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
errorbar(x, y_VIP, CI95,'vertical','o','LineWidth',3)
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
xticks([0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17])
xticklabels([ 0; 0; 11; 22; 33; 45; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135; 146; 157; 168; 180])

xlabel('Orientations ({\circ})' )
ylabel('Firing rates (HZ)')
%legend('1^{st} Column','2^{nd} Column', '3^{rd} Column' )
title ('Mean firing rates in the column (all cells) in 4 trials')
%xticklabels
box off
legend('All','PVs','PYRs','Sst','VIP' )
%%
%figure
xx=1:17;
yy_mod_mean=mean(yy_mod);
f = fit(xx.',yy_mod_mean.','gauss1')
plot(f,xx,yy_mod)
hold on

yy_mod_mean_PVs=mean(yy_mod_PVs);
f = fit(xx.',yy_mod_mean_PVs.','gauss1')
plot(f,xx,yy_mod_PVs)
hold on

yy_mod_mean_PYRs=mean(yy_mod_PYRs);
f = fit(xx.',yy_mod_mean_PYRs.','gauss1')
plot(f,xx,yy_mod_PYRs)
hold on

yy_mod_mean_Sst=mean(yy_mod_Sst);
f = fit(xx.',yy_mod_mean_Sst.','gauss1')
plot(f,xx,yy_mod_Sst)
hold on

yy_mod_mean_VIP=mean(yy_mod_VIP);
f = fit(xx.',yy_mod_mean_VIP.','gauss1')
plot(f,xx,yy_mod_VIP)
hold on
legend off
%%
%
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
yy=S_C2_all';
Z1=zeros(1,length(yy(:,1)))+1*rand;
Z2=zeros(1,length(yy(:,1)))+1*rand;
Z3=zeros(1,length(yy(:,1)))+1*rand;
Z4=zeros(1,length(yy(:,1)))+1*rand;

yy_mod=[yy]
%
N = size(yy_mod',1)
y = mean(yy_mod)
%
SEM = std(yy_mod) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
errorbar(x, y, CI95,'vertical','o','LineWidth',3)
grid off
hold on;

% PVs
x = 1:17; 
yy_PVs=S_C2_all_PVs';
Z1=zeros(1,length(yy_PVs(:,1)))+1*rand;
Z2=zeros(1,length(yy_PVs(:,1)))+1*rand;
Z3=zeros(1,length(yy_PVs(:,1)))+1*rand;
Z4=zeros(1,length(yy_PVs(:,1)))+1*rand;

yy_mod_PVs=[yy_PVs ]
%
N = size(yy_mod_PVs',1)
y_PVs = mean(yy_mod_PVs)
%
SEM = std(yy_mod_PVs) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
errorbar(x, y_PVs, CI95,'vertical','o','LineWidth',3)
grid off
hold on;

% PYRs
x = 1:17; 
yy_PYRs=S_C2_all_PYRs';
Z1=zeros(1,length(yy_PYRs(:,1)))+1*rand;
Z2=zeros(1,length(yy_PYRs(:,1)))+1*rand;
Z3=zeros(1,length(yy_PYRs(:,1)))+1*rand;
Z4=zeros(1,length(yy_PYRs(:,1)))+1*rand;

yy_mod_PYRs=[yy_PYRs ]
%
N = size(yy_mod_PYRs',1)
y_PYRs = mean(yy_mod_PYRs)
%
SEM = std(yy_mod_PYRs) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
errorbar(x, y_PYRs, CI95,'vertical','o','LineWidth',3)
grid off
hold on;

% Sst
x = 1:17; 
yy_Sst=S_C2_all_Sst';
Z1=zeros(1,length(yy_Sst(:,1)))+1*rand;
Z2=zeros(1,length(yy_Sst(:,1)))+1*rand;
Z3=zeros(1,length(yy_Sst(:,1)))+1*rand;
Z4=zeros(1,length(yy_Sst(:,1)))+1*rand;

yy_mod_Sst=[yy_Sst]
%
N = size(yy_mod_Sst',1)
y_Sst = mean(yy_mod_Sst)
%
SEM = std(yy_mod_Sst) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
errorbar(x, y_Sst, CI95,'vertical','o','LineWidth',3)
grid off
hold on;

% VIP
x = 1:17; 
yy_VIP=S_C2_all_VIP';
Z1=zeros(1,length(yy_VIP(:,1)))+1*rand;
Z2=zeros(1,length(yy_VIP(:,1)))+1*rand;
Z3=zeros(1,length(yy_VIP(:,1)))+1*rand;
Z4=zeros(1,length(yy_VIP(:,1)))+1*rand;

yy_mod_VIP=[ yy_VIP ]
%
N = size(yy_mod_VIP',1)
y_VIP = mean(yy_mod_VIP)
%
SEM = std(yy_mod_VIP) / sqrt(N);                    % Standard Error Of The Mean
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',3)
errorbar(x, y_VIP, CI95,'vertical','o','LineWidth',3)
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
xticks([0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17  ])
xticklabels([ 0; 0; 11; 22; 33; 45; 56.25; 67.5; 78.75; 90; 101.25; 112.5; 123.75; 135; 146; 157; 168; 180 ])

xlabel('Orientations ({\circ})' )
ylabel('Firing rates (HZ)')
legend('1^{st} Column','2^{nd} Column', '3^{rd} Column' )
title ('Mean firing rates in the column (all cells) in 4 trials')
%xticklabels
box off
%
%figure
xx=1:17;
yy_mod_mean=mean(yy_mod);
f = fit(xx.',yy_mod_mean.','gauss1')
plot(f,xx,yy_mod)
hold on

yy_mod_mean_PVs=mean(yy_mod_PVs);
f = fit(xx.',yy_mod_mean_PVs.','gauss1')
plot(f,xx,yy_mod_PVs)
hold on

yy_mod_mean_PYRs=mean(yy_mod_PYRs);
f = fit(xx.',yy_mod_mean_PYRs.','gauss1')
plot(f,xx,yy_mod_PYRs)
hold on

yy_mod_mean_Sst=mean(yy_mod_Sst);
f = fit(xx.',yy_mod_mean_Sst.','gauss1')
plot(f,xx,yy_mod_Sst)
hold on

yy_mod_mean_VIP=mean(yy_mod_VIP);
f = fit(xx.',yy_mod_mean_VIP.','gauss1')
plot(f,xx,yy_mod_VIP)
hold on

legend off
legend('All','PVs','PYRs','Sst','VIP' )

