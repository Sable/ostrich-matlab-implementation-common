% Normal-Random number generator that takes a single argument
% as input.
function [output] = randn1(x)
    R1 = rand(x);
    R2 = rand(x);
    output =  0.0 + 1.0 .* cos(2*3.14*R1).* sqrt(-log(R2));
end
