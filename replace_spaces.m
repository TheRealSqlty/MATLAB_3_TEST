clc, clear;
text = 'Ahoj, tohle je ukázkový text.';

function [text] = space_to_underscore(text)
    % Nahrazení mezer za '_'
    text = strrep(text, ' ', '_');
end

space_to_underscore(text)