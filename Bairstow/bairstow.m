function [r, s, m] = bairstow(pol, p, q, e)

n = length(pol) - 1;
m = 0;

while true 
    b = zeros(1, n+3);
    for k = n-2: -1: -2
        b(k+3) = pol(n-1 - k) - q*b(k+5) - p*b(k+4);
    end
    
    if (abs(b(1)) < e) && (abs(b(2)) < e) 
        break
    end

    d = zeros(1, n+1);
    for k = n-3 : -1 : -1
        d(k+2) = - b(k+4) - p*d(k+3) - q*d(k+4);
    end

    D = d(1)^2 + p*d(2)*d(1) + q*d(2)^2;

    p = p - 1/D*((d(1) + p*d(2))*b(2) - d(2)*(b(1) + p*b(2)));
    q = q - 1/D*(q*d(2)*b(2) + d(1)*(b(1) + p*b(2)));
    m = m+1;
end

r = (-p - sqrt(p^2 - 4*q))/2;
s = (-p + sqrt(p^2 - 4*q))/2;

end
