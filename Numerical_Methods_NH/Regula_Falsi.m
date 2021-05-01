%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Numerical Analysis
% Regula Falsi Root Finding
% Wilson Woods
% 11.25.2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function root = myBisection( f, a, b, tol )
    if f( a ) * f( b ) > 0
        fprintf( 'Error: Function values at endpoints have same sign. \n')
    else
        c = a - f( a ) * ( ( b - a ) / ( f( b ) - f( a ) ) )
        while abs( f( c ) ) > tol
            c = a - f( a ) * ( ( b - a ) / ( f( b ) - f( a ) ) )
            if f( a ) * f( c ) < 0
                b = c;
            else
                a = c;
            end
        end
    root = a - f( a ) * ( ( b - a ) / ( f( b ) - f( a ) ) );
    end s
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%