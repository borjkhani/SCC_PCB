function simpleGUI
    % Create the main figure window and assign a handle
    fig = figure('Position', [100, 100, 400, 300], 'Name', 'Analysis GUI', 'NumberTitle', 'off', 'CloseRequestFcn', @closeGUI);

    % Create a button to load the data (Load.m)
    uicontrol('Style', 'pushbutton', 'String', 'Load Data', ...
        'Position', [50, 240, 300, 40], 'Callback', @loadData);

    % Create buttons for each analysis script
    uicontrol('Style', 'pushbutton', 'String', 'Run F_Analysis_All_CGP', ...
        'Position', [50, 180, 300, 40], 'Callback', @runAnalysis1);

    uicontrol('Style', 'pushbutton', 'String', 'Run F_All_Cells_PV_Mod_OneByOne_HWHH_Fast', ...
        'Position', [50, 120, 300, 40], 'Callback', @runAnalysis2);

    uicontrol('Style', 'pushbutton', 'String', 'Run F_HWHH_Analysis_Four', ...
        'Position', [50, 60, 300, 40], 'Callback', @runAnalysis3);

    % Create an exit button
    uicontrol('Style', 'pushbutton', 'String', 'Exit', ...
        'Position', [50, 10, 300, 40], 'Callback', @exitGUI);

    % Define callback functions
    function loadData(~, ~)
        try
            % Load the data by running Load.m in the base workspace
            evalin('base', 'run(''Load.m'')');
            disp('Data Loaded');
        catch ME
            disp(['Error loading data: ', ME.message]);
        end
        drawnow; % Ensure GUI stays visible and updates are processed
    end

    function runAnalysis1(~, ~)
        try
            % Run the first analysis in the base workspace
            evalin('base', 'run(''F_Analysis_All_CGP.m'')');
            disp('F_Analysis_All_CGP executed');
        catch ME
            disp(['Error executing F_Analysis_All_CGP: ', ME.message]);
        end
        drawnow; % Ensure GUI stays visible and updates are processed
    end

    function runAnalysis2(~, ~)
        try
            % Run the second analysis in the base workspace
            evalin('base', 'run(''F_All_Cells_PV_Mod_OneByOne_HWHH_Fast.m'')');
            disp('F_All_Cells_PV_Mod_OneByOne_HWHH_Fast executed');
        catch ME
            disp(['Error executing F_All_Cells_PV_Mod_OneByOne_HWHH_Fast: ', ME.message]);
        end
        drawnow; % Ensure GUI stays visible and updates are processed
    end

    function runAnalysis3(~, ~)
        try
            % Run the third analysis in the base workspace
            evalin('base', 'run(''F_HWHH_Analysis_Four.m'')');
            disp('F_HWHH_Analysis_Four executed');
        catch ME
            disp(['Error executing F_HWHH_Analysis_Four: ', ME.message]);
        end
        drawnow; % Ensure GUI stays visible and updates are processed
    end

    function exitGUI(~, ~)
        % Triggered only when the "Exit" button is pressed
        selection = questdlg('Are you sure you want to exit?', 'Exit', 'Yes', 'No', 'No');
        if strcmp(selection, 'Yes')
            delete(fig); % Close the figure only if 'Yes' is chosen
        end
    end

    function closeGUI(~, ~)
        % Custom close function to prevent unintended closing
        exitGUI();
    end
end
