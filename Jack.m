function lvec = Jack(p,v,a,b,c)
J = zeros(2);
J(1,1) = 1-(2*p)-((a*v)/(p+c)) + ((a*p*v)/(p+c)^2);
J(1,2) = (-(a*p)/(p+c));
J(2,1) = ((b*v^2)/p^2);
J(2,2) = b - ((2*b*v)/p);
lvec = eig(J);