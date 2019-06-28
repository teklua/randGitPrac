figure
x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y)

hold on

y2 = cos(x);
plot(x,y2,'r--')

xlabel('x')
ylabel('y')
title('Matlab')
legend('sinx','cosx')
grid on

