clc, clear;
input_text = 'ahojjjjjjjjjjjjj';

function [output_text] = repeats(input_text)
    output_text = input_text(1);
    
    % Procházení zbytku znaků
    for i = 2:length(input_text)
        if input_text(i) ~= input_text(i-1)
            output_text = [output_text input_text(i)];
        end
    end
end

repeats(input_text)