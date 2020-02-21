%Q3(A)
%ME 475
% HW-1
% Anushrut Jignasu

%Bisection method
function root = Bisection(x_l,x_u)

% ask user for input parameters
x_l = input('Enter lower bound of bracketing interval: ');
x_u = input('Enter upper bound of bracketing interval: ');
ep = input('Enter allowed error: ');
delta = input('Enter lowest function value for termination: ');
max_iter = input('Enter max iterations: ');

% step 1
% evaluate func value at lower and upper bounds
f_l = Func_Eval_Bisection(x_l);
f_u = Func_Eval_Bisection(x_u);

%step 2
%find middle interval and evaluate function value at it
x_m = (x_l + x_u)/2;
f_m = Func_Eval_Bisection(x_m);

count = 0; %counter defined for iteration tracking

%define termination criteria
while abs(f_m) > delta && abs(x_u-x_l) > ep && count < max_iter
    
    if count == 0
        x_m = (x_l + x_u)/2;
        f_m = Func_Eval_Bisection(x_m);
        
        %check for change in value and select interval
        if f_l*f_m < 0
            x_u = x_m;
            delta_o = (x_u-x_l)/2;%calculate error in iteration
            error = delta_o/(2^count);
            fprintf('The error for iteration %2.3f is %3.6f\n', count, error);
        else
            x_l = x_m;
            delta_o = (x_u-x_l)/2;
            error = delta_o/(2^count);
            fprintf('The error for iteration %2.3f is %3.6f\n', count, error);
            
        end
        count = count + 1;
    
    %initialized when iteration > 0 i.e. count > 1   
    else
        x_m = (x_l + x_u)/2;
        f_m = Func_Eval_Bisection(x_m);
        
        if f_l*f_m < 0
            x_u = x_m;
            delta_o = (x_u-x_l)/2;
            error = delta_o/(2^count);
            fprintf('The error for iteration %2.3f is %3.6f\n', count, error);
            
        else
            x_l = x_m;
            delta_o = (x_u-x_l)/2;
            error = delta_o/(2^count);
            fprintf('The error for iteration %2.3f is %3.6f\n', count, error);
        end
        count = count + 1;
    end
    
    root = x_m; % assign the value of x_m as root
    fprintf('The root is: %2.3f\n', root); % display root for current iteration
    fprintf('Iterations: %3.3f\n', count); % display current iteration number
    fprintf('Function value is: %2.3f\n', f_m);% display function value at root
    
    
    
end

end





