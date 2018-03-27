syms n tx
syms n t x
u(x,t) = 243/(2*pi^4)*((-1)^n)/n^4*sin((8/3)*pi*n*t)*sin(pi*n*x/3)
for t = 0:6/640:6/64
z3 = symsum(u(x,t), n, 1, 3)
ezplot(z3, 0, 3);
hold on
pause(1)
end