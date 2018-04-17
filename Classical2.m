pi = 3.14;
a = 2;
L = 1;
b = 0.5;
h = 0.2;
n = fix(a/h) + 1;
x = linspace(0, L, n);
k = h / a;
m = fix(b / k) + 1;
t = linspace(0, b, m);
U = zeros(n, m);
U(:, 1) = sin(pi * x);
U(1, :) = 0;
U(end, :) = 0;
U(:, 2) = (1 -  ((a * k) / h)^2) * sin(pi * x) + k * 0 + (a * k / h) ^ 2 * (sin(pi* (x + 0.2))  + sin(pi * (x - 0.2))) / 2;
for j = 2 : m - 1;
    for i = 2 : n - 1;
        U(i, j + 1) = (2 - 2*(a * k) / h)^2 * U(i, j) + (a * k / h) ^ 2*(U(i + 1, j) + U(i - 1, j)) - U(i, j - 1);
    end
end
[xx, tt] = meshgrid(t, x);
mesh(xx, tt, U);
xlabel('Time (sec)');
ylabel('X coordinate (m)');
zlabel('Temperature (F)');