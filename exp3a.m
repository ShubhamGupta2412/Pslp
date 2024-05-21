x=-10:0.1:10;
mu=3;
s1=2;
s2=3;
s3=1;

y1= normpdf(x,mu,s1);
y2= normpdf(x,mu,s2);
y3= normpdf(x,mu,s3);

plot(x,y1,'r');
hold on;
plot(x,y2,'g');
plot(x,y3,'b');
title('Normal Distribution for Different Sigma');
legend('sigma=1','sigma=2','sigma=3');
