function [xi, n] = newtonMultipleConscio(x0, e, f, df, p)

xi = x0 - p*f(x0)/df(x0);
n = 1;

while abs(xi - x0) >= e
    x0 = xi;
    xi = x0 - p*f(x0)/df(x0);
    n = n+1;
end

end

