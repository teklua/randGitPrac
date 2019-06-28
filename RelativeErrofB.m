global aa bb cc 
aa=0.531818;
%aa=2.70;
%aa=1;
bb=2;
%bb=1;       
%bb=.04;       
cc=0.1;
%cc=1; 
%cc=0.20;
k = 0.9;
figure
for i = 0:0.0001:0.01
    bb = i;
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
    format long
    err = abs(qq-q1)/q1;
    hold all
    plot((bb),(err),'r*')
    xlabel('B Parameter')
    ylabel('Relative Error of Scalar Equation to Numerical Solution')
    title('Large B Approximation Check')
end
    





