vv = sym('vv'); 
pp = sym('pp'); 
J = sym('J');
f = sym('f');
g = sym('g');
R = sym('R');
A = sym('A');
B = sym('B');
C = sym('C');
f = pp*(1-pp-(A*vv)/(pp + C));
g = B*vv*(1-vv/pp);
J = jacobian([f,g],[pp,vv]);

R = eig(J)



