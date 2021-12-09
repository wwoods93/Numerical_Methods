%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Applied Numerical Methods I
% bisection_driver.m
% Wilson Woods
% 9.21.2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

format long;

fa = 0;
fb = 0;
syms f(x);
f(x) = input('Enter function f(x) = ');
% ensure f(x) has root in the interval
while (fa * fb >= 0)
    a = input('Enter initial left bracket: ');
    b = input('Enter initial right bracket: ');
    fa = f(a);
    fb = f(b);
end
tolerance = input('Enter tolerance value: ');
n_max = input('Enter maximum number of iterations: ');

[c] = bisection_method(f, a, b, tolerance , n_max);
    
fprintf('\nRoot approximated to specified tolerance: %.15f \n', c);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
