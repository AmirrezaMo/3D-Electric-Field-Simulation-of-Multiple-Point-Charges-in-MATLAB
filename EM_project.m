dimension=1;
d=dimension;
charge =1;
q=charge;
[x,y]=meshgrid([-d:d/33:d],[-d:d/33:d]);
v=-q./(4.*pi.*sqrt((x+d./2).^2+(y+d./2).^2))+q./(4.*pi.*sqrt((x-d./2).^2+(y-d./2).^2));
figure (1);
contour(v,[-1:.005:1]);
title('equipotential contours at high resolution');
figure (2);
contour3(v,[-1:.005:1]);
title('contours at elevation proportional to voltage for high resolution');
figure (3);
contour(v,[-1:.05:1]);
title('equipotential contours at low resolution');
figure (4);
contour3(v,[-1:.05:1]);
title('contours at elevation proportional to voltage');