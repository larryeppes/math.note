import graph;
size(350,350);

int a=1, b=4;

real f(real x) {return 5-0.2*(x-5)^2;}
real g(real x) {return x^2;}

pair pA=(a,f(a));
pair pB=(b,f(b));
pair px=(1.7,f(1.7));
pair pxp=(3,f(3));
pair pG=(2.35,f(1.7)+(f(3)-f(1.7))/(3-1.7)*(2.35-1.7));

draw(graph(f,a,b,operator ..),red);
//draw(graph(g,a,b,operator ..),blue);

xaxis("$x$",xmax=6,EndArrow);
yaxis("$y$",EndArrow);

draw((a,0) -- (a,f(a)),dotted);
draw((b,0) -- (b,f(b)),dotted);
draw((1.7,0) -- (1.7,f(1.7)),dotted);
draw((3,0) -- (3,f(3)),dotted);
draw(px -- pxp);

//int n=5;
//
//real width=(b-a)/(real) n;
//for(int i=0; i <= n; ++i) {
//real x=a+width*i;
//draw((x,g(x))--(x,f(x)));
//}

labelx("$a$",a);
labelx("$b$",b);
labelx("$x$",1.7);
labelx("$x+\Delta x$",3);
label("$A$",pA,W);
label("$B$",pB,E);
label("$y$",px - (0, f(1.7)/2));
label("$y+\Delta y$",pxp - (0,f(3)/2));
label("$(\overline{x},\overline{y})$", pG, SE);
label("$\Delta s$", pG, NW);
dot(pA,darkgreen+4.0);
dot(pB,darkgreen+4.0);
dot(px,red+4.0);
dot(pxp,red+4.0);
dot(pG,red+4.0);
//draw((a,0)--(a,g(a)),dotted);
//draw((b,0)--(b,g(b)),dotted);

real m=a+0.73*(b-a);
//arrow("$f(x)$",(m,f(m)),S,red);
//arrow("$g(x)$",(m,g(m)),W,0.8cm,blue);

//int j=2;
//real xi=b-j*width;
//real xp=xi+width;
//real xm=0.5*(xi+xp);
//pair dot=(xm,0.5*(f(xm)+g(xm)));
//dot(dot,darkgreen+4.0);
//arrow("$\left(x,\frac{f(x)+g(x)}{2}\right)$",dot,NE,1cm,darkgreen);

