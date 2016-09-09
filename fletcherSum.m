% Used for computing checksums on arrays of integers.
% Has the nice property of detecting a change of order,
% of the values in an array. It is therefore well suited
% to detect errors in sorting algorithms.
%
function [output] = fletcherSum(A) 
    sum1 = 0;
    sum2 = 0;
    
    for i=1:length(A)
        sum1 = mod(sum1 + A(i), 255);
        sum2 = mod(sum2 + sum1, 255);
    end

    output = (sum2 * 256 + sum1); 
end
