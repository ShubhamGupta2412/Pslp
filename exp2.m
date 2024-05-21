n = [10, 20, 50, 100, 1000, 10000];
p = zeros(size(n));
for i = 1:length(n)
    heads = 0;
    for j = 1:n(i)
        r = rand();
        if r < 0.5
            heads = heads + 1;
        end
    end
    p(i) = heads / n(i);
end
clf();
plot(n, p, 'r-*');
xlabel('Number of Flips');
ylabel('Probability of Head');
title('Coin Toss Simulation');
