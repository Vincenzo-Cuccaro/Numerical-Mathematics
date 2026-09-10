function [xi, n] = newtonMultipleIgnaro(x0, e, f, df)

g = @(x) f(x) / df(x);
dg = @(x) (g(x+e) - g(x))/e;

[xi, n] = newtonSemplice(x0, e, g, dg);

end
