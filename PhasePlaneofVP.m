% figure

[v,p] = meshgrid(-0.2:0.01:1.2,0:0.01:1.2);

dp = p-(p.*p) -((p.*aa.*v)./(p+cc));
dv = bb.*v-bb.*((v.*v)./p);
L = (dv.^2 + dp.^2).^0.5;
quiver(p,v,dp./L,dv./L)
%contour(p,v,dv./dp)
title('Phase Plane of V & P')
xlabel('p')
ylabel('v')