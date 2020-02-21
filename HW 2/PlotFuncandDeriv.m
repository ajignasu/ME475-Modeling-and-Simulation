%Q1 (D) - 1
%ME 475
% HW-2
% Anushrut Jignasu

%define symbolic variable for further manipulation
syms x

%define function
f = 4*x^3 - 1 - exp(x^2/2);

%take derivative of the above function
f_prime = diff(f);
fprintf('The derivative is:  %s',f_prime) %print derivative

xinterval = [1 4];%define min and max values of x axis for plotting
fplot(f,xinterval,'Linewidth',2) %plot function
hold on %used to plot two separate plots in the same figure
fplot(f_prime,xinterval, '--or') %plot derivative
hold off
l = legend('Function', 'Derivative'); %assign legend to plot
rect = [0.25, 0.25, .25, .25];
set(l, 'Position', rect)
