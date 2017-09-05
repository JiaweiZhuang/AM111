%% boolean_print_TT_fn.m
% a function to print the boolean truth table for a given
% supplied function 'func'
%
% INPUT
% func: the supplied function (e.g. OR, NAND, XOR)
% input_num: number of inputs

function [] = boolean_print_TT_fn(func,input_num)

switch input_num
    case 1
        lineout = @(a) [num2str(a),'|',num2str(func(a)),' \n'];
        fprintf('_____\n')
        fprintf('a|out\n')
        a = 0; fprintf(lineout(a));
        a = 1; fprintf(lineout(a));
    case 2
        lineout = @(a,b) [num2str(a),'|',num2str(b),'| ',num2str(func(a,b)),' \n'];
        fprintf('_______\n')
        fprintf('a|b|out\n')
        a = 0; b = 0; fprintf(lineout(a,b));
        a = 0; b = 1; fprintf(lineout(a,b));
        a = 1; b = 0; fprintf(lineout(a,b));
        a = 1; b = 1; fprintf(lineout(a,b));
    case 3 % e.g. half-adder
        lineout = @(a,b) [num2str(a),'|',num2str(b),'| ',num2str(func(a,b)),' \n'];
        fprintf('_____________\n')
        fprintf('a|b|carry|sum\n')
        a = 0; b = 0; fprintf(lineout(a,b));
        a = 0; b = 1; fprintf(lineout(a,b));
        a = 1; b = 0; fprintf(lineout(a,b));
        a = 1; b = 1; fprintf(lineout(a,b));
    case 4 % e.g. full-adder
        lineout = @(a,b,c) [num2str(a),'|',num2str(b),'|',num2str(c),'|',num2str(func(a,b,c)),' \n'];
        fprintf('________________\n')
        fprintf('a|b|c|carry|sum\n')
        fprintf(lineout(0,0,0));        
        fprintf(lineout(0,0,1));        
        fprintf(lineout(0,1,0));        
        fprintf(lineout(0,1,1));        
        fprintf(lineout(1,0,0));        
        fprintf(lineout(1,0,1));        
        fprintf(lineout(1,1,0));        
        fprintf(lineout(1,1,1));        
    otherwise
        fprintf('Wrong number of arguments!\n')
end

end