%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Applied Numerical Methods I
% solve_tridiag.m
% Wilson Woods
% 12.2.2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [x] = solve_tridiag(A, f, N)
    l = zeros(1, N);
    d = zeros(1, N);
    u = zeros(1, N);
    x = zeros(N, 1);
    
    for k = 1 : N
        d(k) = A(k, k);
        if (k == 1)
            l(k) = 0;
        else
            l(k) = A(k, k - 1);
        end
        
        if (k == N)
            u(k) = 0;
        else
            u(k) = A(k, k + 1);
        end
    end
    
    for n = 2 : N
        d(n) = d(n) - u(n - 1) * l(n) / d(n - 1);
        f(n) = f(n) - f(n - 1) * l(n) / d(n - 1);
    end
    
    x(N) = f(N) / d(N);
    k = N - 1;
    
    while k > 0
        x(k) = (f(k) - u(k) * x(k + 1)) / d(k);
        k = k - 1;
    end
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
