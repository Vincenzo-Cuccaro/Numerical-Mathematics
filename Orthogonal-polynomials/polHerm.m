function [P] = polHerm(n, x)

P = zeros(n, length(x));
P(1, :) = ones(1, length(x));
P(2, :) = 2*x;
if n > 2
    for i = 3:n
        P(i, :) = 2*x.*P(i-1, :) - 2*(i-1)*P(i-2, :);
    end
end

end