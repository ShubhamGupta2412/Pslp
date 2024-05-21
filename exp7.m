x=0:3;
freq=[36,40,22,2];
n=3;
mean=x*freq'/sum(freq);

y=poisspdf(x,mean);
exp= y.*sum(freq);

stem(x,freq);
hold;
plot(x,exp,'--');
legend('Given Frequencies', 'Expected Frequencies');

figure();
plot(x,y);
title('Poisson Probability Distribution');