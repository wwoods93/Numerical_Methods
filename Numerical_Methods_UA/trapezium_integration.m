%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Applied Numerical Methods I
% trapezium_integration.m
% Wilson Woods
% 11.10.2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [trapezium_result] = trapezium_integration( f, a, b, N )
    
    h = (b - a) / N;
    x = linspace(a, b, N + 1);
    I = ones(1, N);

    for n = 1:N
        I(n)= (h / 2) * (f(x(n)) + f(x(n + 1)));
    end
    trapezium_result = sum(I);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
