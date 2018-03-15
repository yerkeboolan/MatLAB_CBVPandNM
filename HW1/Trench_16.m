syms x n
a0=1/2*(int(sym('x^2'), -1,0)+int(sym('1-x^2'), 0,1))
an=int(sym('(x^2)*cos(n*pi*x)'), -1,0)+int(sym('(1-x^2)*cos(n*pi*x)'), 0,1)
bn=int(sym('(x^2)*sin(n*pi*x)'), -1,0)+int(sym('(1-x^2)*sin(n*pi*x)'), 0,1)
f1=an*cos(n*pi*x)
f2=bn*sin(n*pi*x)
f=f1+f2
z5=symsum(f, 'n', 1,5)+a0
z100=symsum(f, 'n', 1,100)+a0
z1000=symsum(f, 'n', 1,1000)+a0
g1=ezplot(z5, -1, 1)
set(g1, 'Color', 'r')
hold on
g2=ezplot(z100, -1, 1)
set(g2, 'Color', 'b')
hold on
g3=ezplot(z1000, -1, 1)
set(g3, 'Color', 'g')
hold on
y= @(x) (x^2).*(x>=-1).*(x<=0)+(1-x^2).*(x>0).*(x<1) 
h4=ezplot(y, -1,1)
set(h4, 'Color', 'm')
