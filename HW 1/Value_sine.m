
% syms x
% 
% f = sin(2*x);
% t = taylor(f,'ExpansionPoint',0,'Order', 4);
% disp(t)

x = input('Value for x: ');
A = 2*cos(2*x)*x;
disp(A)
B = 4*sin(2*x)*(x)^2/factorial(2);
disp(B)
C = 8*cos(2*x)*(x)^3/factorial(3);
disp(C)
D = 16*sin(2*x)*(x)^4/factorial(4);
disp(D)
f = A - B - C + D;
disp(f)