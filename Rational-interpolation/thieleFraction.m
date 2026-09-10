function [p, q] = thieleFraction(x_nodes, y_nodes)

n = length(x_nodes);
a = zeros(n);
for i = 1 : n
    a(i, 1) = y_nodes(i);
end
for j = 2 : n
    for i = j : n
        if abs(a(i, j-1) - a(j - 1, j - 1)) > eps
            a(i, j) = (x_nodes(i) - x_nodes(j-1)) / (a(i, j-1) - a(j - 1, j - 1));
        end
    end
end

p = [a(n, n)];
q = [1];

for i = n-1 : -1 : 1
    t = q;
    q = p;
    p = polSum(a(i, i)* p, conv(t, [1, -x_nodes(i)]));
end

end