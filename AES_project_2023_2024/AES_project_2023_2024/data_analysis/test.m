
close all;clear;clc;

% Define the file name
filename = 'exportedVariables.csv';

% Import the data from the CSV file
data = readtable(filename); % For numeric data
% Or
% data = readtable(filename); % For mixed data types (requires Statistics and Machine Learning Toolbox)

% Get column labels
columnLabels = data.Properties.VariableNames;

% Initialize a cell array to store arrays for each column
columnArrays = cell(1, numel(columnLabels));

% Iterate over each column
for i = 1:numel(columnLabels)
    % Extract data from the current column
    columnData = data.(columnLabels{i});
    
    % Rename the variable in the workspace
    varName = genvarname(columnLabels{i}); % Ensure valid variable name
    eval([varName ' = columnData;']);
end
