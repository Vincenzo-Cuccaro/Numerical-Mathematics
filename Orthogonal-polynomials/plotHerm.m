n = 5;
x = linspace(-3, 3, 1001);

P = polHerm(n, x);
plot(x, P);
legend('grado 0','grado 1','grado 2','grado 3','grado 4')
