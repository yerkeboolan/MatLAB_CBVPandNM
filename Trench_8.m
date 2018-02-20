syms x n
pi=3,14
a0=1/(2*pi)*(int(sym('x*sin(x)'), -pi,pi))
an=1/pi*(int(sym('x*sin(x)*cos(n*x*pi/pi)'), -pi,pi))
bn=1/pi*(int(sym('x*sin(x)*sin(n*x*pi/pi)'), -pi,pi))
b1=1/pi*(int(sym('x*sin(x)*sin(x)'), -pi,pi))
f1=an*cos(n*x*pi/pi)
f2=bn*sin(n*x*pi/pi)
f=f1+f2
z5=symsum(f, 'n', 2,5) + a0 + b1
z100=symsum(f, 'n', 2,100) + a0 + b1
z1000 = symsum(f, 'n', 2,1000) + a0 + b1
g1=ezplot(z5, -pi,pi)
set(g1, 'Color', 'r')
hold on
g2=ezplot(z100, -pi,pi)
set(g2, 'Color', 'b')
hold on
g3=ezplot(z1000, -pi,pi)
set(g3, 'Color', 'g')
hold on
y=x*sin(x)
h4=ezplot(y, [-pi,pi])
set(h4, 'Color', 'm')