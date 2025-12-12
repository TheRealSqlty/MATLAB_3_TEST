clc, clear;
input_text = '8456012';

function[output_number] = no_str2double(input_text)
    output_number = 0;

    % Kontrola: obsahuje jen číslice?
    if ~all(input_text >= '0' & input_text <= '9')
        output_number = [];
        return
    end

    for i = 1:length(input_text)
       
        % Převedení znaku na číslici pomocí ASCII (např. '8' -> 8)
        digit = input_text(i) - '0';
        % Přidání číslice do výsledku
        output_number = output_number * 10 + digit;
    end
end

no_str2double(input_text)