% Clear workspace and command window
clear;
clc;
% close all;

% Load data
load('HWHH_Results.mat');
run Cell_IDs.m;

% Separate data into different cell types
H_C_PYRs = H_C(PYRs);
H_C_PVs = H_C(PVs);
H_C_Sst = H_C(Sst);
H_C_VIP = H_C(VIP);

% Thresholding and extracting non-zero values
Thr = 60; 
H_C1_PYRs = nonzeros(H_C_PYRs .* (H_C_PYRs <= Thr));
H_C1_PVs = nonzeros(H_C_PVs .* (H_C_PVs <= Thr));
H_C1_Sst = nonzeros(H_C_Sst .* (H_C_Sst <= Thr));
H_C1_VIP = nonzeros(H_C_VIP .* (H_C_VIP <= Thr));

% Calculate means
M = [mean(H_C1_PYRs), mean(H_C1_PVs), mean(H_C1_Sst), mean(H_C1_VIP)];

% Plot bar graph
figure;
C = bar(M);
hold on;

% Define colors for bar graph
C.FaceColor = 'flat';
C.CData(1,:) = [0.9000, 0.5250, 0.0980];
C.CData(2,:) = [0, 0.4470, 0.7410];
C.CData(3,:) = [0.4660, 0.6740, 0.1880];
C.CData(4,:) = [0.9, 0, 0];

% Error bars for each group
groups = {H_C1_PYRs, H_C1_PVs, H_C1_Sst, H_C1_VIP};
for i = 1:4
    x = i;
    y = mean(groups{i});
    N = length(groups{i});
    SEM = std(groups{i}) / sqrt(N);
    CI95 = SEM * tinv(0.975, N-1); % 95% Confidence Intervals
    errorbar(x, y, CI95, 'LineWidth', 3, 'Color', [0.25, 0.25, 0.25]);
end
%
% Configure plot aesthetics
xticks(1:4);
xticklabels({'PYRs', 'PVs', 'Sst', 'VIP'});
xlabel('Simulations');
ylabel('HWHH ({\circ})');
set(gca, 'FontSize', 14, 'FontWeight', 'bold');
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 11.66, 8.76], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125]);
saveas(gcf, 'Compare_HWHH_Four.tif');
box off;

% Pad arrays with NaN to match lengths
maxLength = max([length(H_C1_PYRs), length(H_C1_PVs), length(H_C1_Sst), length(H_C1_VIP)]);
H_C1_PYRs = [H_C1_PYRs; NaN(maxLength - length(H_C1_PYRs), 1)];
H_C1_PVs = [H_C1_PVs; NaN(maxLength - length(H_C1_PVs), 1)];
H_C1_Sst = [H_C1_Sst; NaN(maxLength - length(H_C1_Sst), 1)];
H_C1_VIP = [H_C1_VIP; NaN(maxLength - length(H_C1_VIP), 1)];

% Boxplot configuration
figure;
H = [H_C1_PYRs, H_C1_PVs, H_C1_Sst, H_C1_VIP];
T = [zeros(1, length(H_C1_PYRs)), ones(1, length(H_C1_PVs)), 2 * ones(1, length(H_C1_Sst)), 3 * ones(1, length(H_C1_VIP))];
colors = [0.4940, 0.1840, 0.5560; 0.9290, 0.6940, 0.1250; 0.8500, 0.3250, 0.0980; 0, 0.4470, 0.7410];

boxplot(H, T, 'Symbol', 'o', 'OutlierSize', 2);
h = findobj(gca, 'Tag', 'Box');
for j = 1:length(h)
    patch(get(h(j), 'XData'), get(h(j), 'YData'), colors(j,:), 'FaceAlpha', .5);
end

% Configure boxplot aesthetics
xticks(1:4);
xticklabels({'PYRs', 'PVs', 'Sst', 'VIP'});
xlabel('Simulations');
ylabel('HWHH ({\circ})');
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
box off;
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 11.66, 8.76], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125]);
saveas(gcf, 'Compare_HWHH_Four_1.tif');

% Perform t-tests
[h_PYRs_PVs, p_PYRs_PVs] = ttest2(H_C1_PYRs, H_C1_PVs);
[h_PYRs_Sst, p_PYRs_Sst] = ttest2(H_C1_PYRs, H_C1_Sst);
[h_PYRs_VIP, p_PYRs_VIP] = ttest2(H_C1_PYRs, H_C1_VIP);
[h_PVs_Sst, p_PVs_Sst] = ttest2(H_C1_PVs, H_C1_Sst);
[h_PVs_VIP, p_PVs_VIP] = ttest2(H_C1_PVs, H_C1_VIP);
[h_Sst_VIP, p_Sst_VIP] = ttest2(H_C1_Sst, H_C1_VIP);

% Plot results with t-tests
figure;
H = [H_C1_PYRs, H_C1_PVs, H_C1_Sst, H_C1_VIP];
T = [zeros(1, length(H_C1_PYRs)), ones(1, length(H_C1_PVs)), 2 * ones(1, length(H_C1_Sst)), 3 * ones(1, length(H_C1_VIP))];
colors = [0.4940, 0.1840, 0.5560; 0.9290, 0.6940, 0.1250; 0.8500, 0.3250, 0.0980; 0, 0.4470, 0.7410];

boxplot(H, T, 'Symbol', 'o', 'OutlierSize', 2);
h = findobj(gca, 'Tag', 'Box');
for j = 1:length(h)
    patch(get(h(j), 'XData'), get(h(j), 'YData'), colors(j,:), 'FaceAlpha', .5);
end

% Configure boxplot aesthetics
xticks(1:4);
xticklabels({'PYRs', 'PVs', 'Sst', 'VIP'});
xlabel('Simulations');
ylabel('HWHH ({\circ})');
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
box off;
yt = get(gca, 'YTick');
axis([xlim, 0, ceil(max(yt) * 1.21)]);
xt = get(gca, 'XTick');
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 11.66, 8.76], 'PaperUnits', 'Inches', 'PaperSize', [11.66, 8.76]);
saveas(gcf, 'Compare_HWHH_Four_4.tif');
saveas(gcf, 'Compare_HWHH_Four_4.fig');
saveas(gcf, 'Compare_HWHH_Four_4.eps', 'psc2');

% Mark significant differences with lines
hold on;
if h_PYRs_PVs, plot(xt([1, 2]), [1, 1] * max(yt) * 1.01, '-k'); end
if h_PYRs_Sst, plot(xt([1, 3]), [1, 1] * max(yt) * 1.03, '-k'); end
if h_PYRs_VIP, plot(xt([1, 4]), [1, 1] * max(yt) * 1.06, '-k'); end
if h_PVs_Sst, plot(xt([2, 3]), [1, 1] * max(yt) * 1.09, '-k'); end
if h_PVs_VIP, plot(xt([2, 4]), [1, 1] * max(yt) * 1.12, '-k'); end
if h_Sst_VIP, plot(xt([3, 4]), [1, 1] * max(yt) * 1.15, '-k'); end

% Plot medians
medians = [median(H_C1_PYRs), median(H_C1_PVs), median(H_C1_Sst), median(H_C1_VIP)];
plot(1:4, medians, 'ro-', 'Color', 'k');
