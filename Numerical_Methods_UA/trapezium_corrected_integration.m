%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Applied Numerical Methods I
% trapezium_corrected_integration.m
% Wilson Woods
% 11.10.2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [trapezium_corrected_result] = trapezium_corrected_integration( f, a, b, N )
    
    syms df(x)
    df = diff(f, x);
    h = (b - a) / N;
    x = linspace(a, b, N + 1);
    I = ones(1, N);

    for n = 1:N
        I(n)= (h / 2) * (f(x(n)) + f(x(n + 1)));
    end
    
    s = sum(I) - (((h^2)/12)*(df(b) - df(a)));
    trapezium_corrected_result = double(s);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
