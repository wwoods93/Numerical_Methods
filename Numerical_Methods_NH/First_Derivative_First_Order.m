%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Numerical Analysis
% First Derivative First Order
% Wilson Woods
% 11.18.2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ new_x, dfdx ] = FirstDerivFirstOrder( f, xmin, xmax, n ) 
   h = ( xmax - xmin ) / n;
   new_x = linspace( xmin, xmax, n + 1 );
   dfdx = zeros( 1 , n );
   for k = 1 : n
       dfdx( k ) = ( f ( new_x( k + 1 ) ) - f( new_x( k ) ) ) / h;
   end
   new_x = new_x( 1 : end - 1 );
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% [ x, dx ] = myFirstDerivFirstOrder( @( x ) exp( sin( x ) ), 0, 2 * pi, 1000 );
% plot ( x, dx )
% plot( x, exp( sin( x ) ), x, dx )

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%