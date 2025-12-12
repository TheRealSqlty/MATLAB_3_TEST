clc, clear;
input_text1 = 'sharks slides are cool';
input_text2 = 'what are sharks?';

function [output_text] = matches(input_text1, input_text2)
    % Připravíme kopii druhého textu, ze které budeme odstraňovat znaky
    temp_text2 = input_text2;
    % Výsledný text
    output_text = '';
    % Procházení prvního textu
    for i = 1:length(input_text1)
        char_now = input_text1(i);
    
        % Hledáme znak v druhém textu, 1 je první znak only
        idx = find(temp_text2 == char_now, 1);
    
        if ~isempty(idx)
            % Pokud znak existuje, přidáme ho do výstupu
            output_text = [output_text char_now];
    
            % A odstraníme jej z druhého textu, aby se neopakoval
            temp_text2(idx) = [];
        end
    end
end

matches(input_text1, input_text2)