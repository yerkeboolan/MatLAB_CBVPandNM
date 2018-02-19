syms x n
a0=1/(2*pi)*(int(sym('x*cos(x)'), -pi,pi))
an=1/pi*(int(sym('x*cos(x)*cos(n*x)'), -pi,pi))
bn=1/pi*(int(sym('x*cos(x)*sin(n*x)'), -pi,pi))
b1=1/pi*(int(sym('x*cos(x)*sin(x)'), -pi,pi))
f1=an*cos(n*pi*x)
f2=bn*sin(n*pi*x)
f=f1+f2
z5=symsum(f, 'n', 1,5) + a0
z100=symsum(f, 'n', 1,100) + a0
z1000 = symsum(f, 'n', 1,1000) + a0
g1=ezplot(z5, -pi,pi)
set(g1, 'Color', 'r')
hold on
g2=ezplot(z100, -pi,pi)
set(g2, 'Color', 'b')
hold on
g3=ezplot(z1000, -pi,pi)
set(g3, 'Color', 'g')
hold on
y=@(x) (x*cos(x)).*(x>=-pi).*(x<=pi)
h4=ezplot(y, [-pi,pi])
set(h4, 'Color', 'm')