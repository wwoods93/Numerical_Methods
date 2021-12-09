%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Applied Numerical Methods I
% numerical_integration_driver.m
% Wilson Woods
% 11.10.2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

format long

syms f(x)
% 1.) f(x) = log(x)
% 2.) f(x) = (x^2) * exp(-x)
select_function = input('function 1 or 2? ');
a = 0;
b = 0;
if (select_function == 1)
    f(x) = log(x);
    a = 1;
    b = 3;
else
    f(x) = (x^2) * exp(-x);
    a = 0;
    b = 2;
end

simpson_results = zeros(1, 10);
trapezium_results = zeros(1, 10);
trapezium_corrected_results = zeros(1, 10);

simpson_errors = zeros(1, 10);
trapezium_errors = zeros(1, 10);
trapezium_corrected_errors = zeros(1, 10);

for n = 2 : 11
    N = 2^n;
    [simpson_result] = simpson_integration( f, a, b, N );
    [trapezium_result] = trapezium_integration( f, a, b, N );
    [trapezium_corrected_result] = trapezium_corrected_integration( f, a, b, N );
    
    simpson_results(n - 1) = simpson_result;
    trapezium_results(n - 1) = trapezium_result;
    trapezium_corrected_results(n - 1) = trapezium_corrected_result;

    if (select_function == 1)
        simpson_errors(n - 1) = abs((3 * log(3) - 2) - simpson_result);
        trapezium_errors(n - 1) = abs((3 * log(3) - 2) - trapezium_result);
        trapezium_corrected_errors(n - 1) = abs((3 * log(3) - 2) - trapezium_corrected_result);
    else
        simpson_errors(n - 1) = abs((2 - (10 * exp(-2))) - simpson_result);
        trapezium_errors(n - 1) = abs((2 - (10 * exp(-2))) - trapezium_result);
        trapezium_corrected_errors(n - 1) = abs((2 - (10 * exp(-2))) - trapezium_corrected_result);
    end
end

simpson_results
trapezium_results
trapezium_corrected_results

simpson_errors
trapezium_errors
trapezium_corrected_errors

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
