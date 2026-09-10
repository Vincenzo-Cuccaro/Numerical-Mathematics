function [p] = trigInterp(x, y_nodes)

n = length(y_nodes);
z = fft(y_nodes)/n;
p = zeros(length(x));

if mod(n,2) == 0
    p = p + real(z(1));
    for j = 1:(n*0.5 - 1)
        p = p + 2*real(z(j+1))*cos(j*x);
        p = p - 2*imag(z(j+1))*sin(j*x);
    end
    p = p + real(z(n*0.5))*cos(n*0.5*x);
else
    p = p + real(z(1));
    for j = 1:floor(n * 0.5)
        p = p + 2*real(z(j+1))*cos(j*x);
        p = p - 2*imag(z(j+1))*sin(j*x);
    end
end

end