n = 1;
x_nodes = [1   1    1    1    1 2   3    4   5 5   5]';
y_nodes = [1.1 1.05 1.12 1.07 2 2.1 3.05 3.7 4 4.8 5.2]';

x = linspace(0.5, 5.5, 101);
p = minQuadratiDiscreto(x, x_nodes, y_nodes, n);

plot(x', p');
hold on
plot(x_nodes, y_nodes, 'o');
hold off