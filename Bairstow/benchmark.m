clear 
clc

%pol = [1 0 1];
%pol = [1 -6 25];
pol = conv([1 -6 25], [1 0 1]);

p = -5;
q = -1;

[r, s, m] = bairstow(pol, p, q, 10^-12)
