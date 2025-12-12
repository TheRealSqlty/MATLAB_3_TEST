clc, clear;

text = 'How many sharks can you think of?';

function[text_modified] = even(text)
    % Rozdělit text na jednotlivá slova
    words = strsplit(text);
    
    % Pro každé sudé slovo (2, 4, 6, ...)
    for k = 2:2:length(words)
        words{k} = upper(words{k}); % převod na velká písmena
    end
    
    % Spojit zpět do textu
    text_modified = strjoin(words);
end

even(text)