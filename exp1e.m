n = [10, 20, 50, 100, 1000, 10000];
p = zeros(size(n));
for i = 1:length(n)
    % Reset the counter for heads
    heads = 0;
    % Flip the coin n(i) times
    for j = 1:n(i)
        r = rand();
        if r < 0.5
            heads = heads + 1;
        end
    end
    % Calculate the probability of getting a head
    p(i) = heads / n(i);
end
clf();
plot(n, p, 'r-*');
xlabel('Number of Flips');
ylabel('Probability of Head');
title('Coin Toss Simulation');
