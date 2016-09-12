function [y]=linspace(d1, d2, n)
y=[d1+(0:n-2)*(d2-d1)/(n-1) d2];
end
