clc;
clear;
close all;

% Initialize an empty Tambola ticket (3 rows × 9 columns)
tambolaTicket = zeros(3, 9);

%% STEP 1: Ensure each column has at least one number
for colIndex = 1:9
    
    % Randomly choose one row for the current column
    randomRow = randperm(3, 1);
    
    % Mark presence of a number using 1
    tambolaTicket(randomRow, colIndex) = 1;
end

%% STEP 2: Ensure each row has exactly 5 numbers
for rowIndex = 1:3
    
    % Calculate how many more numbers are needed in this row
    numbersNeeded = 5 - sum(tambolaTicket(rowIndex, :));
    
    if numbersNeeded > 0
        
        % Find columns in this row that are still empty
        emptyColumns = find(tambolaTicket(rowIndex, :) == 0);
        
        % Randomly select required number of empty columns
        selectedColumns = emptyColumns( ...
            randperm(length(emptyColumns), numbersNeeded));
        
        % Place numbers (mark with 1)
        tambolaTicket(rowIndex, selectedColumns) = 1;
    end
end

%% STEP 3: Replace markers (1s) with valid Tambola numbers
for colIndex = 1:9
    
    % Find row positions where numbers exist in this column
    occupiedRows = find(tambolaTicket(:, colIndex) == 1);
    
    % Generate numbers based on Tambola column ranges
    if colIndex == 1
        columnNumbers = randperm(9, length(occupiedRows));           % 1–9
        
    elseif colIndex == 9
        columnNumbers = randperm(11, length(occupiedRows)) + 79;     % 80–90
        
    else
        columnNumbers = randperm(10, length(occupiedRows)) ...
                        + (colIndex - 1) * 10;                       % 10–79
    end
    
    % Sort numbers in ascending order (Tambola rule)
    columnNumbers = sort(columnNumbers);
    
    % Assign sorted numbers from top to bottom
    tambolaTicket(occupiedRows, colIndex) = columnNumbers.';
end

%% Display the final Tambola ticket
disp(tambolaTicket)
