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
plot (X, Y, 'g+');

%% QUESTION 2
% Create a vector x with values ranging from 1 to pi. Calculate the vector
% y with the values sin (x) and plot them

x = linspace (1, pi);
y = sin (x);
plot (x, y);

%% QUESTION 3
% Plot exp (x) for values of x ranging from -2 to 2 in steps of 0.1. Place
% an appropreate title on the plot and label the axis.

x = -2:0.1:2;
y = exp (x);
plot (x, y);


%% QUESTION 4

y = randi ([1, 100], [1, 15]);
x = 1:1:length (y);

plot(x, y, 'r*');


%% QUESTION 5



%% QUESTION 6



%% FUNCTION DEFINITIONS