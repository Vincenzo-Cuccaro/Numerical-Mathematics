function [] = plotGerschgorin(A)
n = size(A, 1);

for k = 1 : n
    r = 0;
    s = 0;
    for j = 1 : n
        if k ~= j
            r = r + abs(A(k, j));
            s = s + abs(A(j, k));
        end
    end
    t = linspace(0, 2*pi, 201);
    x = cos(t);
    y = sin(t);

    figure(1);
    plot(real(A(k, k)) + r*x, imag(A(k, k)) + r*y);
    title("Cerchi di Gerschgorin calcolati per righe")
    axis equal;
    xlabel("Parte reale");
    ylabel("Parte immaginaria");
    grid on;
    hold on;

    figure(2);
    plot(real(A(k, k)) + s*x, imag(A(k, k)) + s*y);
    title("Cerchi di Gerschgorin calcolati per colonne");
    axis equal;
    xlabel("Parte reale");
    ylabel("Parte immaginaria");
    grid on;
    hold on;
end
hold off;
end