n = 11;
x = linspace(-1, 1, 1001);

P = polCheb(n, x);
plot(x, P(11, :));
%legend('grado 0','grado 1','grado 2','grado 3','grado 4')
