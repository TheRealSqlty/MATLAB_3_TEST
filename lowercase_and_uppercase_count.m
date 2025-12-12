clc, clear;
input_text = 'MECHATRONIKA je cool.';

function[lower_count, upper_count] = numbers(input_text)
    % Počet malých písmen
    lower_count = sum(input_text >= 'a' & input_text <= 'z');
    
    % Počet velkých písmen
    upper_count = sum(input_text >= 'A' & input_text <= 'Z');
end

[lower_count, upper_count] = numbers(input_text);
