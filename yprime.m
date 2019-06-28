function f = yprime(t,p)
global aa bb cc 
u=p(1);
v=p(2);
z1=u*(1.-u)-aa*u*v/(u+cc);
z2=bb*v*(1.-v/u);
f=[z1 z2]';
end
  