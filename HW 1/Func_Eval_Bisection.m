%Q3(A)
%ME 475
% HW-1
% Written by: Anushrut Jignasu
% Date: 02/09/2020

% Bisection function evaluation

function f = Func_Eval_Bisection(x)

% Function for evaluating the function
% at a particular point
% Input: value of x
% Output: function value at x i.e. f(x)
% count = 0;

%accept any function from user
func_str = input('Enter a function in terms of x: ', 's');

%convert the entered string to an anonymous function for handling purposes
f_to_Eval = str2func(['@(x)' func_str]);

%evaluate functino at a given x
f = feval(f_to_Eval,x);
end
