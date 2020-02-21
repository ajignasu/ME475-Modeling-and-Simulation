%Q1 (A)
%ME 475
% HW-2
% Anushrut Jignasu



function g = Func_Eval_FPI(x_input)

%define a symbolic variable x
syms x

% Enter any function
functionString = input('Enter a function in terms of x: ', 's');

%I know this is an incorrect method of doing
%I wasn't able to figure out the correct way
% g = log(8*sin(x_input)-4);%assingn the non trivial root to a variable
g = asin(exp(x_input)/8 + 0.5);
disp(g)

end