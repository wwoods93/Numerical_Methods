%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Numerical Analysis
% Bisection Method Root Finding
% Wilson Woods
% 11.25.2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function root = myBisection( f, a, b, tol )
    if f( a ) * f( b ) > 0
        fprintf( 'Error: Function values at endpoints have same sign. \n' )
    else
        m = ( a + b ) / 2;
        
        while abs( f( m ) ) > tol
            m = ( a + b ) / 2;
            if f( a ) * f( m ) < 0
                b = m;
            else
                a = m;
            end
        end
    root = m;
    end 
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%