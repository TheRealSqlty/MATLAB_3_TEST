clc, clear;
binary_input = '1000011';

% Převod binárního čísla na desítkové (ručně bez bin2dec)
function[decimal_output] = binary2decimal(binary_input)
    decimal_output = 0;
    for i = 1:length(binary_input)
        % Aktuální cifra (0 nebo 1)
        bit = str2double(binary_input(i));
    
        % Přičtení hodnoty podle pozice bitu
        decimal_output = decimal_output * 2 + bit;
    end
end
binary2decimal(binary_input)