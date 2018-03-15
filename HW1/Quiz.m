syms x n
a0=1/6*(int(sym('1-x^2'), -3,3))
an=1/3*(int(sym('(1-x^2)*cos(n*pi*x/3)'), -3,3))
bn=1/3*(int(sym('(1-x^2)*sin(n*pi*x/3)'), -3,3))
f1=an*cos(n*pi*x/3)
f2=bn*sin(n*pi*x/3)
f=f1+f2
z5=symsum(f, 'n', 1,5) + a0
z100=symsum(f, 'n', 1,100) + a0
z1000=symsum(f, 'n', 1,1000) + a0
g1=ezplot(z5, -3,3)
set(g1, 'Color', 'r')
hold on
g2=ezplot(z100, -3,3)
set(g2, 'Color', 'b')
hold on
g3=ezplot(z1000, -3,3)
set(g3, 'Color', 'g')
hold on
y=1-x^2
h4=ezplot(y, [-3,3])
set(h4, 'Color', 'm')
