%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Applied Numerical Methods I
% fixed_point_newton_driver.m
% Wilson Woods
% 10.10.2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

format long
syms f(x) g(x) l(x) df(x)

f(x) = input('Enter function f(x) = ')
% test function 1
% f(x) = x^3 - 8.5 * x^2 + 20 * x - 8
k = input('Enter a value for k: ');
tolerance = input('Enter a tolerance value: ');
x0 = input('Enter initial guess x0: ');
% slow convergence, choose n_max >= 1000
n_max = input('Enter maximum number of iterations: ');
error = ones(1, n_max) ;
                             
[ x_approx, error ] = fixed_point_newton_method(f, k, x0, error, tolerance, n_max);

% g(x) = f(x) / (2 + k);
g(x) = f(x) / 20;
% df = diff(f, x);
% g(x) = f(x) / df(x);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
l(x) = x;
figure(1);
hold on
grid on
fplot(f, [-10 10]);
fplot(g, [-10 10]);
fplot(l, [-10 10]);
y = 0;
line([-10, 10], [y, y]);
ylim([-20 20]);
legend('F(x)', 'g(x)', 'y = x');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
