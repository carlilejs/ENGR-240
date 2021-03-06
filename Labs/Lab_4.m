clear
clc

%
% Author: Josh Carlile
% Class: Mr. Hogan's ENGR 240
% Date: 2/4/2020
%

%% QUESTION 1
% Create a script that creates variables X and Y. Assign values to these
% variables and plot them using green +.

X = linspace (1, 2*pi);
Y = 1 - sin (X).^2;

figure ('Name', 'Subplot practice', 'NumberTitle', 'off')
subplot (211)
plot (X, Y, 'g+')
title ('Question 1')

%% QUESTION 2
% Create a vector x with values ranging from 1 to pi. Calculate the vector
% y with the values sin (x) and plot them

x = linspace (1, pi);
y = sin (x);

subplot (212)
plot (x, y)
title ('Question 2')

%% QUESTION 3
% Plot exp (x) for values of x ranging from -2 to 2 in steps of 0.1. Place
% an appropreate title on the plot and label the axis.

x = -2:0.1:2;
y = exp (x);

figure ('Name', 'Question 3', 'NumberTitle', 'off')
plot (x, y)
title ('f(x) = e^x')
xlabel ('x')
ylabel ('y')

%% QUESTION 4
% Create a y vector that stores random numbers ranging from 1 to 100.
% Create an x vector with values that iterate from 1 to the length of the y
% vector.

y = randi ([1, 100], [1, 15]);
x = 1:1:length (y);

figure ('Name', 'Question 4', 'NumberTitle', 'off')
plot (x, y, '--b^')


%% QUESTION 5

x = [1000   2000    3000    5000    10000];
y = [288    281     269     256     223];

figure ('Name', 'Question 5', 'NumberTitle', 'off')
plot (x, y, "bd:")
title ("Altitude vs. Temperature")
xlabel ("Altitude")
ylabel ("Temperature (K)")

%% QUESTION 6

P = 15000;
i = 0.10;

x = 0:40;
y = P*(1+i).^x;

figure ('Name', 'Question 6', 'NumberTitle', 'off')
plot (x, y)
title ("Compounding Interest")
xlabel ("Years")
ylabel ("Amount ($)")
