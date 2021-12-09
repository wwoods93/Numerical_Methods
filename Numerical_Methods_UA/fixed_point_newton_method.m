%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Applied Numerical Methods I
% fixed_point_newton_method.m
% Wilson Woods
% 10.10.2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [x_approx, error] = fixed_point_newton_method(f, k, x0, error, tolerance, n_max)

     fprintf('Iteration\t\tApprox. Root\t\tError\n');
     x_approx = ones(1, n_max);
     % df = diff(f, x);
     x_approx(1) = f(x0);
     i = 1;
     while (error(i) >= tolerance && i <= n_max)
        i = i + 1;
        % x_approx(i) = x_approx(i - 1) - (f(x_approx(i-1))/(2 + k));
        x_approx(i) = x_approx(i - 1) - (f(x_approx(i-1))/(20));
        % x_approx(i) = x_approx(i - 1) - (f(x_approx(i-1))/(df(x_approx(i-1))));
        error(i) = abs(x_approx(i) - x_approx(i - 1));
        fprintf('%d\t\t', i - 1); 
        fprintf('%.15f\t\t', x_approx(i));
        fprintf('%.15f \n', error(i));
        if error(i) < tolerance
            break
        end
     end
     
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
