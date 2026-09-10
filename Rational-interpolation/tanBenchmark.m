clear
clc
x_nodes = [0.3 0.6 1 1.4];
y_nodes = tan(x_nodes);

[p, q] = thieleFraction(x_nodes, y_nodes);
%f = @(x) polyval(p, x)/polyval(q, x);

hold on 
x = linspace(0, 1.53, 100);
xx = linspace(1.6, 3, 100);
f1 = polyval(p, x)./polyval(q, x);
f2 = polyval(p, xx)./polyval(q, xx);
plot(x, f1);
plot(xx, f2);
%fplot(f, [0 1.53])
%fplot(f, [1.6 3])
fplot(@(x) tan(x), [0 1.53])
fplot(@(x) tan(x), [1.6 3])
%legend("interpolazione razionale", "tangente")

hold off
