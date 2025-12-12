clc, clear;

% Vstupní číselná matice
input_matrix = [1 2 3 2 4;
                3 1 5 5 2];

function [output_vector] = nonduplicates(input_matrix)
    % Převedeme na vektor (sloupcové pořadí MATLABu)
    input_vector = input_matrix(:).';
    
    % Výstupní vektor — stejné rozměry
    output_vector = zeros(size(input_vector));
    
    % Procházení prvků vektorově (první výskyt ponecháme, další nahradíme 0)
    for i = 1:length(input_vector)
        value_now = input_vector(i);
        % Pokud se hodnota už dříve neobjevila, ponecháme ji
        if ~any(input_vector(1:i-1) == value_now)
            output_vector(i) = value_now;
        else
            output_vector(i) = 0;
        end
    end
     % Výstupní vektor bez nul
    output_vector = output_vector(output_vector ~= 0);
end

nonduplicates(input_matrix)