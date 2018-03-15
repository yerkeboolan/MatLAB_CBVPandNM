syms x n
a0=1/4*(int(sym('2'), -2,-1) + int(sym('1'), -1,1) + int(sym('-1'), 1,2))
an=1/2*(int(sym('2*cos(n*pi*x/2)'), -2,-1) + int(sym('1*cos(n*pi*x/2)'), -1,1) + int(sym('(-1)*cos(n*pi*x/2)'), 1,2))
bn=1/2*(int(sym('2*sin(n*pi*x/2)'), -2,-1) + int(sym('1*sin(n*pi*x/2)'), -1,1) + int(sym('(-1)*sin(n*pi*x/2)'), 1,2))
f1=an*cos(n*pi*x/2)
f2=bn*sin(n*pi*x/2)
f=f1+f2
z5=symsum(f, 'n', 1,5) + a0
z100=symsum(f, 'n', 1,100) + a0
z1000=symsum(f, 'n', 1,1000) + a0
g1=ezplot(z5, -2,2)
set(g1, 'Color', 'r')
hold on
g2=ezplot(z100, -2,2)
set(g2, 'Color', 'b')
g3=ezplot(z1000, -2,2)
set(g3, 'Color', 'g')
hold on
y=@(x) (2).*(x>=-2).*(x<=-1) + (1).*(x>=-1).*(x<=1) + (-1).*(x>=1).*(x<=2)
h4=ezplot(y, [-2,2])
set(h4, 'Color', 'm')

