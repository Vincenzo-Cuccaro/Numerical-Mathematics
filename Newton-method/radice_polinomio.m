clear
clc

q = @(x) (x - 2)*(x - 1)^2;
dq = @(x) (x-1)^2 + 2*(x-2)*(x-1);

x0 = 1.4;
[xi, n] = newtonMultipleIgnaro(x0, 10^-5, q, dq)
[xc, m] = newtonMultipleConscio(x0, 10^-5, q, dq, 2)