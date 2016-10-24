%function F = L8fun(x1,x2)
%f = (x1.^2 + x2 - 11).^2 + (x1 + x2.^2 - 7).^2
%end

function F = L8fun(x)
F = (x(1)^2 + x(2) - 11)^2 +(x(1) + x(2)^2 - 7)^2;
end
%function deltaF = daemi2deltaF(x)
%deltaF(1) = 2*(2*x(1)*(x(1)^2 + x(2) - 11) + x(1) + x(2)^2 - 7)
%deltaF(2) = 2*(x(1)^2 + 2*x(2)*(x(1)+x(2)^2-7) + x(2) - 11)
%end