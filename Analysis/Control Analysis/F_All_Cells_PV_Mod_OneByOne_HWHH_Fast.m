clc;
clear;
close all;

run Cell_IDs.m;

% Define global variables
global Cell_Number;
global H_C;
global H_PV_Act_06P;
global H_PV_Act_12P;
global H_PV_Act_18P;
global H_PV_Act_25P;
global H_PV_Act_50P;
global H_PV_Act_75P;
global H_PV_Act_100P;
global H_PV_DeAct_100P;
global skipNum;

% Initialize variables
numCells = 510;
H_C = zeros(numCells, 1);
H_PV_Act_06P = zeros(numCells, 1);
H_PV_Act_12P = zeros(numCells, 1);
H_PV_Act_18P = zeros(numCells, 1);
H_PV_Act_25P = zeros(numCells, 1);
H_PV_Act_50P = zeros(numCells, 1);
H_PV_Act_75P = zeros(numCells, 1);
H_PV_Act_100P = zeros(numCells, 1);
H_PV_DeAct_100P = zeros(numCells, 1);

HWHH_C = 0;
HWHH_PV_Act_06P = 0;
HWHH_PV_Act_12P = 0;
HWHH_PV_Act_18P = 0;
HWHH_PV_Act_25P = 0;
HWHH_PV_Act_50P = 0;
HWHH_PV_Act_75P = 0;
HWHH_PV_Act_100P = 0;
HWHH_PV_DeAct_100P = 0;

% Cells to skip
skipNum = [86, 126, 510];

% Analyze cells
for Cell_Number = 1:numCells
    if ~ismember(Cell_Number, skipNum) % Skip specified cells
        Cell_Number

        % Run the analysis function
        run('Function_Fast.m');

        % Extract parameters
        X = 1:0.01:17;
        if nonzeros(BB_Control)
            A1 = f_PYRs_C.a1;
            B1 = f_PYRs_C.b1;
            C1 = f_PYRs_C.c1;
        else
            A1 = 0;
            B1 = 0;
            C1 = 0;
        end

        % Fit and normalize
        F_PYRs_C = A1 * exp(-((X - B1) / C1).^2);
        F_PYRs_C = F_PYRs_C / max(F_PYRs_C);

        % Calculate HWHH
        Steps = 11.25;
        HWHH_C = Steps * sqrt(log(2)) * C1;
        H_C(Cell_Number, 1) = HWHH_C;
        Gof_PYRs_C(Cell_Number, 1) = gof_PYRs_C;

        % Determine cell type
        if any(Cell_Number == PVs)
            Ce = 'PV';
        elseif any(Cell_Number == Sst)
            Ce = 'Sst';
        elseif any(Cell_Number == VIP)
            Ce = 'VIP';
        elseif any(Cell_Number == PYRs)
            Ce = 'PYRs';
        end

        % Store results
        % Add additional storage and plotting here if needed

    end
end

save('HWHH_Results.mat', 'H_C', 'H_PV_Act_06P', 'H_PV_Act_12P', 'H_PV_Act_18P', 'H_PV_Act_25P', 'H_PV_Act_50P', 'H_PV_Act_75P', 'H_PV_Act_100P', 'H_PV_DeAct_100P');


