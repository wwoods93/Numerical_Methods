%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Numerical Analysis
% Taylor Series
% Wilson Woods
% 11.27.2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function root = Bisection( f, a, b, tol )
    if f( a ) * f( b ) < 0
        
        while abs( f( m ) ) > tol
            
            m = ( a + b ) / 2;

            if  m < 0
                b = m;
            else
                a = m;
            end
        end
        
    root = ( a + b ) / 2;
    
    else
        fprintf( 'error' )
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%