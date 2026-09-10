n = 5;
x = linspace(-1, 1, 1001);

P = polLeg(n, x);
figure(1)
plot(x, P);
legend('grado 0','grado 1','grado 2','grado 3','grado 4')
