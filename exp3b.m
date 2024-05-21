x=0:100;
mu1=10;
mu2=5;
mu3=15;

y1=exppdf(x,mu1);
y2=exppdf(x,mu2);
y3=exppdf(x,mu3);

plot(x,y1,'r');
hold on;
plot(x,y2,'g');
plot(x,y3,'b');
title('Exponential Distribution for Different Mu');
legend('mu=10','mu=5','mu=15');