%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Applied Numerical Methods I
% newton_driver.m
% Wilson Woods
% 9.30.2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear newton_method
format long

syms f(x)

% 1.) f(x) = x^2 - sin(x);
% 2.) f(x) = 1 - 2*x*exp(-x/2);

f(x) = input('Enter function f(x) = ')
x0 = input('Enter initial guess x0: ');
tolerance = input('Enter a tolerance value: ');
n_max = input('Enter maximum number of iterations: ');
                            
[x, error] = newton_method(f, x0, tolerance, n_max);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%