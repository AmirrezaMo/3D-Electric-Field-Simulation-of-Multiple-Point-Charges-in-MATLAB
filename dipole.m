%Plots out the electric field lines between the charges
[X,Y]=meshgrid(-50:.2:50,-50:.2:50);
E=1.8.^(-1.5*sqrt(X.^2+Y.^2)).*cos(0.5*Y).*sin(X);        
[DX,DY]=gradient(E,.2,.2);
quiver(X,Y,DX,DY)                 
hold on                         
%Plots out equipotential surfaces of both charges
[X,Y]=meshgrid(-50:.1:50,-50:.1:50);
E=1.8.^(-1.5*sqrt(X.^2+Y.^2)).*cos(0.5*Y).*sin(X);              
contour(X,Y,E,10)              
hold on                       
%plots the points of both charges
x1=1; y1=0;                     
x2=-1; y2=0;                   
plot(x1,y1,'b:o')               
plot(x2,y2,'r:o')       
grid on                      
axis([-2 2 -2 2])               
title('The plot of electric field lines and equipotential surfaces of q and (-q)')