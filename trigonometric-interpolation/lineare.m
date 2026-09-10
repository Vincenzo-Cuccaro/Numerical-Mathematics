x_nodes = [0: pi/128: 2*pi - pi/128];
y_nodes = x_nodes;

x = linspace(0,2*pi, 101);
y = x;
p = trigInterp(x, y_nodes);

plot(x, [y; p]);
hold on 
%plot(x_nodes, y_nodes, 'o');
hold off