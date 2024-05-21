% x_data and y_data
x_data = [20, 60, 100, 140, 160, 220, 260, 300, 340, 380];
y_data = [0.18, 0.37, 0.35, 0.70, 0.56, 0.75, 0.18, 0.36, 1.17, 1.65];

% Perform simple linear regression
[a, b] = reglin(x_data, y_data);

% Scatter plot with x_data and y_data
scatter(x_data, y_data, 30, "x");

% Plot the regression line
hold on;
plot(x_data, a*x_data + b, "red");
hold off;

% Add labels and title
xlabel("X");
ylabel("Y");
title("Simple Linear Regression");

% Define the reglin function
function [a, b] = reglin(x, y)
    m = length(x);
    x_mean = mean(x);
    y_mean = mean(y);
    SS_xy = sum((x - x_mean) .* (y - y_mean));
    SS_xx = sum((x - x_mean) .^ 2);
    a = SS_xy / SS_xx;
    b = y_mean - a * x_mean;
end