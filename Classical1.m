a = 1;
L = 1;
b = 0.2;
h = 0.2;
n = fix(a/h) + 1;
x = linspace(0, L, n);
k = 0.5 * (h.^2) / (a.^2);
m = fix(b / k) + 1;
t = linspace(0, b, m);
U = zeros(n, m);
U(:, 1) = 4 * x - 4 * x.^2;
U(1, :) = 0;
U(end, :) = 0;
for j = 1 : m - 1;
    for i = 2 : n - 1;
        U(i, j + 1) = (1 - 2 * (a.^2) * k / (h.^2)) * U(i, j) + (a.^2) * k / (h.^2) * (U(i + 1, j) + U(i - 1, j));
    end
end
[xx, tt] = meshgrid(t, x);
mesh(xx, tt, U);
xlabel('Time (sec)');
ylabel('X coordinate (m)');
zlabel('Temperature (F)');
