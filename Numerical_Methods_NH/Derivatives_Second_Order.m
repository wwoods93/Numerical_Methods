%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Numerical Analysis
% Derivatives Second Order
% Wilson Woods
% 11.18.2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ new_x, dfdx ] = FirstDerivSecondOrder( f, xmin, xmax, n )

   % calculate step size
   h = ( xmax - xmin ) / ( n + 1 );
   
   % produce list of x values
   new_x = linspace( xmin, xmax, n + 2 );
   
   % preallocate list of dx values
   dfdx = zeros( 1, n );
   
   for k = 2 : n + 1
       dfdx( k ) = ( f( new_x( k + 1 ) ) - f( new_x( k - 1 ) ) ) / ( 2 * h);
   end
   
   new_x = new_x( 2 : end - 1 );
   dfdx = dfdx( 2 : end - 1 );
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ new_x, dfdx ] = SecondDerivSecondOrder( f, xmin, xmax, n )

    % calculate step size
    h = ( xmax - xmin ) / ( n + 1 );
    
    % produce list of x values
    new_x = linspace( xmin, xmax, n + 2 );
    
    % preallocate list of dx values
    dfdx = zeros( 1, n );
    
    for k = 2 : n + 1
        dfdx( k ) = ( f( new_x( k + 1 ) ) + f(new_x( k - 1 ) ) - ( 2 * f( new_x( k ) ) ) ) / ( h .^ 2 );
    end
    
    new_x = new_x( 2 : end - 1 );
    dfdx = dfdx( 2 : end - 1 );
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
