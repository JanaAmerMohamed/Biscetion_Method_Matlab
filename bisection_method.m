% Define the function
f = @(x) (3*x)-exp(x) ;

% Define the interval
a = 0;
b = 1;

% Tolerance error
tolerance = 0.05/100;

% Maximum number of iterations
max_iterations = ceil(log2((b - a) / tolerance));

% Bisection method
for i = 1:max_iterations
    % Calculate midpoint
    c = (a + b) / 2;
    
    % Check for solution
    if abs(f(c)) < tolerance
        break;
    end
    
    % Update interval
    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
end

% Output the result
fprintf('The root of the equation is approximately %.6f\n', c);
