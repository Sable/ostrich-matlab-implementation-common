% Normal-Random number generator that takes two arguments
% as input.
function [output] = randn2(x,y)
    R1 = rand(x,y);
    R2 = rand(x,y);
    output =  0.0 + 1.0 .* cos(2*3.14*R1).* sqrt(-log(R2));
end
