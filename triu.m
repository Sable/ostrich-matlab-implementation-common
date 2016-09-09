% Basic implementation for now, we do not support more than one parameter such
% as triu(M, K). We also avoid using nargs which might trip come compilers. We finally do not check for input argument errors because McLabCore fails badly on it.
%
function [output] = triu(A)
    if (length(size(A)) > 2) 
%        error('Error using triu\nFirst input must be 2D.');
    end
    s = size(A);
    nb_row = s(1);
    nb_col = s(2);
    output = A;
    for col=1:nb_col
       for  row=1:nb_row
           if (col < row)
               A(row,col) = 0;
           end
       end
    end
end
