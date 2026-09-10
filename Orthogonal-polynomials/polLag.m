function [P] = polLag(n, x)

P = zeros(n, length(x));
P(1, :) = ones(1, length(x));
P(2, :) = 1-x;
if n > 2
    for i = 3:n
        P(i, :) = (2*i - 1 - x)/i.*P(i-1, :) - (i-1)/i.*P(i-2, :);
    end
end

end