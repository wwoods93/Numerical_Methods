%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Numerical Analysis
% Binary to Decimal Converter
% Wilson Woods
% 11.18.2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function dec = binary_to_decimal(bin)

    % search for any decimal points
    p = strfind( bin, '.' );
    
    if p > 0
        % set n to be position of any decimal point
        n = p-1;      
    else
        % if no decimal point, set n to be length of #
        n = length( bin );
    end
    
    dec = 0;
    
    % loop over positive powers of 2
    for k = 1:n  
        % multiply each coeff by appropriate power of 2, sum
        dec = dec + str2double( bin( k ) ) * 2 ^ ( n - k ); 
    end
    
    % loop over negative powers of 2
    for k = n + 2 : length( bin ) 
        dec = dec + str2double( bin( k ) ) * 2 ^ ( n - k + 1 );
    end
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% bin2dec('0.00011001100110011001100')

% ans = 0.099999904632568 
% is the single-precision approximation of the
% decimal 1/10

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EOF %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


