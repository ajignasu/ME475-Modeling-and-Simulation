%Q1 (A)
%ME 475
% HW-2
% Anushrut Jignasu

% Function evaluation of Newton Raphson

function [f, f_prime, f_doublePrime] = Func_Eval_NR(x_input)

%define a symbolic variable
syms x

%ask user for function
functionString = input('Enter a function in terms of x: ', 's');

%generate an inline function for futher manipulation - function eval and
%derivative eval
f_inline = inline(functionString, 'x');
% disp(f_inline)

%calc function value for a given value of x
f = f_inline(x_input);

%define first-order derivative variable
derivative = inline(diff(f_inline(x),x), 'x');

%calc first derivative at a given x value
f_prime = derivative(x_input);


%define second-order derivative variable
derivative2 = inline(diff(f_inline(x),x,x), 'x');

%calc second derivative at a given x value
f_doublePrime = derivative2(x_input);


end