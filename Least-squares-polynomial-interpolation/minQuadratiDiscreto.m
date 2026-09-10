function [p] = minQuadratiDiscreto(x, x_nodes, y_nodes, n)

for i = 1 : length(x_nodes)
    for j = 0 : n
        A(i, j+1) = x_nodes(i)^j;
    end
end
[U, S, V] = svd(A);
d = U' * y_nodes;

c = zeros(n+1);
for i = 1 : rank(S)
    c(i) = d(i)/S(i,i);
end
c = V*c;

p = zeros(length(x));
for i = 1 : n+1
    p = p + c(i)*x.^(i-1);
end


end