clc, clear;
input_text = 'Vysloví Slováci Ř správně?';

function[output_text] = english_keyboard(input_text)
    % Znaky s diakritikou a jejich náhrada
    diacritics = 'áčďéěíňóřšťúůýžÁČĎÉĚÍŇÓŘŠŤÚŮÝŽ';
    replacements = 'acdeeinorstuuyzACDEEINORSTUUYZ';
    
    % Vytvoření kopie textu
    output_text = input_text;
    
    % Nahrazení každého znaku s diakritikou jeho základním tvarem
    for i = 1:length(diacritics)
        output_text(output_text == diacritics(i)) = replacements(i);
    end
end
english_keyboard(input_text)