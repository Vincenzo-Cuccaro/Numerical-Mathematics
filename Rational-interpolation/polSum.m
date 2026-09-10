function [r] = polSum(p, q)

n1 = length(p);
n2 = length(q);

if n1 < n2
    p = [zeros(1, n2 - n1) p];
end
if n2 < n1
    q = [zeros(1, n1 - n2) q];
end

r = p + q;

end