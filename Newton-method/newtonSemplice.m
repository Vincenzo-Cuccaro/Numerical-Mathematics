function [xi, n] = newtonSemplice(x0, e, f, df)

xi = x0 - f(x0)/df(x0);
n = 1;
while abs(xi - x0) >= e
    x0 = xi;
    xi = x0 - f(x0)/df(x0);
    n = n+1;
end

end
