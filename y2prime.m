function f = y2prime(t,p)
global aa bb cc 
u=p;
f=u*(1-u)-(aa*u*u)/(u+cc);
end