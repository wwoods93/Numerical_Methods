%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Applied Numerical Methods I
% newton_method.m
% Wilson Woods
% 9.30.2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [x,error] = newton_method( f, x0, tolerance, n_max )
    syms df(x)
    % f'(x)
    df = diff(f, x);
    % absolute error vector
    error = ones(1, n_max);
    % start at initial guess
    x = x0;
    
    for i = 1 : 1 : n_max
        fprintf('Iteration %d: \t', i);
        % calculate next x value
        x1 = x - (f(x) / df(x));
        % error = x_current - x_previous
        error(i) = abs(x1 - x);
        % advance the algorithm
        x = x1;
        fprintf('Approx. root: %.15f \t', x);
        fprintf('Current error: %.15f \n', error(i));
        % break when x_current - x_previous < tolerance
        if error(i) < tolerance
            break
        end
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
