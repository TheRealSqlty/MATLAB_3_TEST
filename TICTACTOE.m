clc, clear;

% Random piškvorky
A =     ['X','O','O','X','O';
         'X','X','O','O','O';
         'O','X','X','X','O';
         'X','O','O','X','X';
         'X','O','O','X','X'];

function[winner] = tic_tac_toe(board)
    winner = '';
    % Kontrola řádků
    for i = 1:size(board,1)
        if all(board(i,:) == 'X')
            winner = 'X';
        elseif all(board(i,:) == 'O')
            winner = 'O';
        end
    end
    
    % Kontrola sloupců
    for i = 1:size(board,2)
        if all(board(:,i) == 'X')
            winner = 'X';
        elseif all(board(:,i) == 'O')
            winner = 'O';
        end
    end
    
    % Kontrola diagonál
    if all(diag(board) == 'X') || all(diag(flipud(board)) == 'X')
        winner = 'X';
    elseif all(diag(board) == 'O') || all(diag(flipud(board)) == 'O')
        winner = 'O';
    end
end

tic_tac_toe(A)