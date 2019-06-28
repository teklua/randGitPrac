global aa bb cc 
aa=0.531818;
%aa=2.70;
%aa=1;
bb=0.001;
%bb=1;       
%bb=.04;       
cc=0.1;
%cc=1;
%cc=0.20;
k = 0.9;
options=odeset('RelTol',1.e-12);
init=[k,k]';
[t,y] = ode45(@yprime, [0,1000],init,options);
options2=odeset('RelTol',1.e-12);
init2=k;
[t2,y2] = ode45(@y2prime, [0,1000],init2,options2);
temp=size(y);
nsteps=temp(1);
arg=aa+cc-1.;
ucrit=.5*(-arg+sqrt(arg^2+4.*cc));
vcrit=ucrit;
qq = y2(end,1);
q1  = y(end,1);
q2  = y(end,2);
if ((qq-q1)^2 + (qq-q2)^2)^0.5/(q1^2 + q2^2)^0.5 < 10^(-6)
    'B is sufficiently large'
    ((qq-q1)^2 + (qq-q2)^2)^0.5/(q1^2 + q2^2)^0.5
else
    ((qq-q1)^2 + (qq-q2)^2)^0.5/(q1^2 + q2^2)^0.5
end
figure(1)
plot(t,y(:,1),'r-',t,y(:,2),'y--',t2,y2(:,1),'b--','LineWidth',3)
hold off
figure(2)
plot(y(:,1),y(:,2),ucrit,vcrit,'ro-','LineWidth',2)
hold all
plot(y(end,1),y(end,2),'r*','LineWidth',2)
plot(qq,qq,'y--o','LineWidth',2)
xlabel('u')
ylabel('v')
PhasePlaneofVP
    
    
    
    