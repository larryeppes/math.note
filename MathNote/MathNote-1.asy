if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="MathNote-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

include graph;
^^Isize(1inch);
^^Ifilldraw(circle((0,0),1),yellow,black);
^^Ifill(circle((-.3,.4),.1),black);
^^Ifill(circle((.3,.4),.1),black);
^^Idraw(arc((0,0),.5,-140,-40));
