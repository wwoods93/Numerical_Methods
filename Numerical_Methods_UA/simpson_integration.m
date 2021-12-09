%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Applied Numerical Methods I
% simpson_integration.m
% Wilson Woods
% 11.10.2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [simpson_result] = simpson_integration( f, a, b, N )
    
    h = (b - a) / N;
    x = linspace(a, b, N + 1);
    I = ones(1, N);

    for n = 1:N
        I(n)= (h / 6) * (f(x(n)) + (4 * f((x(n) + x(n + 1)) / 2)) + f(x(n + 1)));
    end
    simpson_result = sum(I);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
