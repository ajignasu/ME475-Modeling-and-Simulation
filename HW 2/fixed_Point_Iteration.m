%Q1 (A)
%ME 475
% HW-2
% Anushrut Jignasu

%Fixed Point Iteration
function root = fixed_Point_Iteration(x_o)

%ask for user input
x_o = input('Enter initial point for function evaluation: ');
ep = input('Enter allowed error: ');
max_iter = input('Enter max allowable iterations: ');

% assign initial value of x
x_i = x_o;
count = 0; %counter defined for iteration tracking
error = 1; %assume initial error to be 100%

%define termination criteria
while(error > ep && count < max_iter)
    
    x_i_next = Func_Eval_FPI(x_i);%assign current func value to next value of x
    count = count + 1; %increase iteration by 1
    error = abs(x_i_next - x_i); %calc abs error for current iteration
    x_i = x_i_next; %reassign initial value of x
    
    root = x_i; % assign the value of x_i as root
    fprintf('The root is: %3.7f\n', root); % display root for current iteration
    fprintf('Iterations: %3.7f\n', count); % display current iteration number
    fprintf('Error in iteration %3f is %3.7f\n', count, error)
           
end

end
