%Q1 (A)
%ME 475
% HW-2
% Anushrut Jignasu


%Newton Raphson

function root = Newton_Raphson(x)

% ask user for input parameters
x_test_input = input('Enter initial point for function evaluation: ');
ep = input('Enter allowed error: ');
delta = input('Enter lowest function value for termination: ');
max_iter = input('Enter max iterations: ');

% step 1
% evaluate func value at lower and upper bounds
[f_test, f_der, f_secondDer] = Func_Eval_NR(x_test_input);


x_r = 3;%define positive root of equation; further used in error calc


%step 2
% use various values from Func_Eval_NR to find the root
x_i = x_test_input;
% error = 1;
% x_i_next = 3.5;
% update_val = 0;
count = 0; %counter defined for iteration tracking

%define termination criteria
while f_test > ep && count < max_iter && f_der > delta
    
    x_i_next = x_i - (f_test/f_der); %calc next term
    [f_test, f_der, f_secondDer] = Func_Eval_NR(x_i_next); %function call for function value,first, and second derivatives
%     update_val = update_val + (x_i_next - x_i);
    C = (f_secondDer/(2*f_der)); %calc constant term of error
    error = C*(x_r - x_i)^2; %calc error
    x_i = x_i_next; %reassign next value of x as the initial value
    
    count = count + 1; %increase counter value by 1; accountf for the iterations
    
    root = x_i; % assign the value of x_i as root
    fprintf('The root is: %3.7f\n', root); % display root for current iteration
    fprintf('Iterations: %3.7f\n', count); % display current iteration number
    fprintf('Function value is: %3.7f\n', f_test);% display function value at root
    fprintf('Derivative value is: %3.7f\n', f_der);% display derivative value at root
    fprintf('Error in iteration %3f is %3.7f\n', count, error) % display error for current iteration
    
end
end





