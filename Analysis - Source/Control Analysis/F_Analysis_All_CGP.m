clc;
clear;
close all;

% Load number of trials
load NN.mat
Number = NN;

% Regularization factor
Reg = 1;

% Define orientations
orientations = [0, 11, 22, 33, 45, 56, 67, 78, 90, 101, 112, 123, 135, 146, 157, 168, 180];
num_orientations = length(orientations);

% Preallocate data storage for C2
Data_C2 = cell(num_orientations, 1);

% Load data for each orientation
for k = 1:num_orientations
    orientation = orientations(k);
    Data_C2{k} = zeros(Number, 510); % Assuming 510 neurons as in the previous code

    for ii = 1:Number
        load(['spikes' num2str(orientation) 'T' num2str(ii) '.mat']);
        Data_C2{k}(ii, :) = Reg * sum2; % Assuming sum2 contains the required data
    end
    clear sum1 sum2 sum3;
end

% Concatenate all data
S_C2_all = zeros(num_orientations, 510);
for k = 1:num_orientations
    S_C2_all(k, :) = mean(Data_C2{k});
end
S_C2_all = S_C2_all * 2;

% Plot boxplot of mean firing rates
figure;
boxplot(S_C2_all');
title('Column 2');

% Plot mean firing rates with error bars
figure;
x = 1:num_orientations;
N = size(S_C2_all', 1);
y = mean(S_C2_all');
SEM = std(S_C2_all') / sqrt(N);
CI95 = SEM * tinv(0.975, N-1);
errorbar(x, y, CI95, 'LineWidth', 3);
grid off;
hold on;
a = get(gca, 'XTickLabel');
set(gca, 'XTickLabel', a, 'fontsize', 18, 'FontWeight', 'bold');
xticks(0:1:num_orientations);
xticklabels(orientations);
xlabel('Orientations ({\circ})');
ylabel('Firing rates (HZ)');
legend('2^{nd} Column');
title('Mean firing rates in the column (all cells) in 4 trials');
box off;

save S_C_all.mat S_C2_all;

% Gaussian fitting for the mean firing rates
figure;
yy = mean(S_C2_all');
f = fit((1:num_orientations).', yy.', 'gauss1');
plot(f, 1:num_orientations, yy);
title('Gaussian fitting for mean firing rates in Column 2');
xlabel('Orientation');
ylabel('Firing rate (Hz)');

% Pick up a cell from each layer for further analysis
layers = {2, 4, 5, 6};
cell_numbers = {
    32+25, % Layer 2
    32+63+32+32+25, % Layer 4
    32+63+32+32+63+32+32+25, % Layer 5
    32+63+32+32+63+32+32+64+32+32+25 % Layer 6
};

S_C2_Layers = cell(length(layers), 1);

for l = 1:length(layers)
    cell_num = cell_numbers{l};
    S_C2_Layers{l} = zeros(Number, num_orientations);

    for k = 1:num_orientations
        S_C2_Layers{l}(:, k) = Data_C2{k}(:, cell_num);
    end
end

% Plot mean firing rates for each layer
figure;
hold on;
colors = lines(length(layers));
for l = 1:length(layers)
    plot(mean(S_C2_Layers{l}), 'LineWidth', 2, 'Color', colors(l, :));
end
title('A cell with orientation preference of 90 degrees');
legend({'L2', 'L4', 'L5', 'L6'}, 'FontSize', 12, 'TextColor', 'black');

% Plot mean of all cells across layers
figure;
S_ALLlayer_C2 = vertcat(S_C2_Layers{:});
plot(mean(S_ALLlayer_C2), 'LineWidth', 4);
set(gca, 'XTick', 1:length(orientations), 'XTickLabel', orientations, 'fontsize', 18, 'FontWeight', 'bold');
xlabel('Orientations ({\circ})');
ylabel('Firing rates (HZ)');
title('Mean firing rates in Column for 4 cells');
box off;

% Error bars for each layer
figure;
for l = 1:length(layers)
    subplot(2, 2, l);
    N = size(S_C2_Layers{l}, 1);
    y = mean(S_C2_Layers{l});
    SEM = std(S_C2_Layers{l}) / sqrt(N);
    CI95 = SEM * tinv(0.975, N-1);
    errorbar(1:length(orientations), y, CI95, 'LineWidth', 3);
    grid off;
    title(sprintf('A cell in Layer %d in all Columns', layers{l}));
end

% Gaussian fitting for a single cell
figure;
yy = mean(S_C2_Layers{2}); % Example for layer 4
f = fit((1:num_orientations).', yy.', 'gauss1');
errorbar(1:num_orientations, yy, SEM, 'LineWidth', 3);
hold on;
plot(f, 1:num_orientations, yy);
title('Gaussian fitting for a single cell');

% Detailed analysis for different cell types
run Cell_IDs.m

cell_types = {'PVs', 'PYRs', 'Sst', 'VIP'};
S_C2_all_types = struct();

for ct = 1:length(cell_types)
    cell_type = cell_types{ct};
    S_C2_all_types.(cell_type) = zeros(num_orientations, length(eval(cell_type)));

    for k = 1:num_orientations
        S_C2_all_types.(cell_type)(k, :) = mean(Data_C2{k}(:, eval(cell_type)), 1); % Transpose to match dimensions
    end

    S_C2_all_types.(cell_type) = S_C2_all_types.(cell_type) * 2;
end

% Plot boxplots for different cell types
figure;
for ct = 1:length(cell_types)
    subplot(2, 2, ct);
    boxplot(S_C2_all_types.(cell_types{ct})');
    title(['Column 2 - ' cell_types{ct}]);
end

% Plot mean firing rates with error bars for different cell types
figure;
hold on;
for ct = 1:length(cell_types)
    cell_type = cell_types{ct};
    x = 1:num_orientations;
    N = size(S_C2_all_types.(cell_type)', 1);
    y = mean(S_C2_all_types.(cell_type)');
    SEM = std(S_C2_all_types.(cell_type)') / sqrt(N);
    CI95 = SEM * tinv(0.975, N-1);
    errorbar(x, y, CI95, 'LineWidth', 3);
end
a = get(gca, 'XTickLabel');
set(gca, 'XTickLabel', a, 'fontsize', 18, 'FontWeight', 'bold');
xticks(0:1:num_orientations);
xticklabels(orientations);
xlabel('Orientations ({\circ})');
ylabel('Firing rates (HZ)');
legend(cell_types, 'FontSize', 12, 'TextColor', 'black');
title('Mean firing rates in the column (all cells) in 4 trials');
box off;

% Gaussian fitting for different cell types
figure;
hold on;
for ct = 1:length(cell_types)
    yy = mean(S_C2_all_types.(cell_types{ct})');
    f = fit((1:num_orientations).', yy.', 'gauss1');
    plot(f, 1:num_orientations, yy);
end
title('Gaussian fitting for different cell types');
legend(cell_types, 'FontSize', 12, 'TextColor', 'black');

% Save results
save S_C_all.mat S_C2_all;

%% Analysis of All Cells
Cell_Number_C2 = 510; % Total number of cells in Column 2
Trial = 8; % Number of trials

All_cells_Dep = cell(Trial, Cell_Number_C2);

% Populate All_cells_Dep with data
for j = 1:Trial
    for i = 1:Cell_Number_C2
        All_cells_Dep{j, i} = [
            Data_C2{1}(j, i);
            Data_C2{2}(j, i);
            Data_C2{3}(j, i);
            Data_C2{4}(j, i);
            Data_C2{5}(j, i);
            Data_C2{6}(j, i);
            Data_C2{7}(j, i);
            Data_C2{8}(j, i);
            Data_C2{9}(j, i);
            Data_C2{10}(j, i);
            Data_C2{11}(j, i);
            Data_C2{12}(j, i);
            Data_C2{13}(j, i);
            Data_C2{14}(j, i);
            Data_C2{15}(j, i);
            Data_C2{16}(j, i);
            Data_C2{17}(j, i);
        ];
    end
end

% Assuming All_cells_Control is a copy of All_cells_Dep
All_cells_Control = All_cells_Dep;

% Apply normalization or scaling if necessary
yournumber = 1; % Example normalization factor
All_cells_Control = cellfun(@(x) x / yournumber, All_cells_Control, 'UniformOutput', false);

save All_cells_Control.mat All_cells_Control;

% Plot example cells
figure;
hold on;
plot(All_cells_Dep{1, 1}); 
plot(All_cells_Dep{2, 1}); 
plot(All_cells_Dep{3, 1}); 
plot(All_cells_Dep{4, 1});
plot(All_cells_Dep{1, 180});
plot(All_cells_Dep{2, 180});
plot(All_cells_Dep{3, 180});
plot(All_cells_Dep{4, 180});
plot(All_cells_Dep{1, 382});
plot(All_cells_Dep{2, 382});
plot(All_cells_Dep{3, 382});
plot(All_cells_Dep{4, 382});
hold off;

save All_cells_Control.mat All_cells_Control;
plot(All_cells_Control{2, 1});
