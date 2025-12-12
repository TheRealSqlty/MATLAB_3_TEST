clc, clear;

input_text = 'Abrakadabra!';

function [output_text] = no_A(input_text)
    % Odstranění všech 'A' i 'a'
    output_text = input_text(input_text ~= 'A' & input_text ~= 'a');
end

no_A(input_text)