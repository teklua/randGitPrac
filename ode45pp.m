%function ode45example1
% This example solves the diff. eqn. y'(t)=-t*y(t) with
% initial condition y(0)=1 on the time interval [0,2]
% using a function defined in a file (Note the use of the
% '@' character in yprime).
% example uses the default tolerances for ode45
% you can set your own tolerances using the Matlab odeset function
% just type "help odeset" to see the options available to you

%             dy/dt     initial cond.
%                 time interval
%options=odeset('RelTol',1.e-5);
global aa bb cc 
aa=0.531818;
%aa=2.70;
%aa=1;
bb=2;
%bb=1;       
%bb=.04;       
cc=0.10;
%cc=1;
%cc=0.20;
options=odeset('RelTol',1.e-12);
for i = 0:0.2:1.2
    for k = 0:0.2:1.2
        figure(1)
        init=[k,i]';
        [t,y] = ode45(@yprime, [0,1000],init,options);
        %[t,y] = ode45(@yprime, [0,400], 1.85);
        plot(t,y(:,1),'r-',t,y(:,2),'b--','LineWidth',3)
        xlabel('t')
        ylabel('u,v')
        hold off
        %pause
        pause off
        temp=size(y);
        nsteps=temp(1);
        arg=aa+cc-1.;
        ucrit=.5*(-arg+sqrt(arg^2+4.*cc));
        vcrit=ucrit;
        figure(2)
        hold on
        plot(y(:,1),y(:,2),ucrit,vcrit,'ro-','LineWidth',2)
        plot(ucrit,vcrit,'ro-','LineWidth',5)
        xlabel('u')
        ylabel('v')
        hold on
        PhasePlaneofVP
        
    end
end
%end


%function f = yprime(t,p)
%
%a=[-50.5,49.5;49.5,-50.5];
%f=a*p;
%end
