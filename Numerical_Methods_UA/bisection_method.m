%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Applied Numerical Methods I
% bisection_method.m
% Wilson Woods
% 9.21.2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [c] = bisection_method(f, a, b, tolerance, n_max)

    fa = f(a);
    fb = f(b);
    iteration = 0;
    % midpoint of interval
    c = (a + b) / 2;
    % function value at midpoint
    fc = f(c);
    % abs(fc) gives approximation distance from y = 0
    while (abs(fc) > tolerance && iteration < n_max)
        fprintf('Iteration %u: ', iteration);
        fprintf('Approx. root: %.15f \n', c);
        % function crosses x-axis left of midpoint
        if fa * fc < 0
            % midpoint replaces right bound
            b = c;
        % function crosses x-axis right of midpoint
        else
            % midpoint replaces left bound
            a = c;
        end
        % recalculate midpoint
        c = (a + b) / 2;
        fc = f(c);
        iteration = iteration + 1;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
