clear
clc

% CLASS: Mr. Hogan's ENGR 240
% DATE: 2/16/2021
% AUTHOR: Josh Carlile

%% Question 1

syms x y z

%% Question 2

expr = x^2 + 3*x + 6 % Expression will print to console

%% Question 3

S = simplify (expr) % Already in simplest form

%% Question 4

F = factor (expr) % Does not factor

%% Question 5

expr2 = y^2 + 4*y^3 +3*y^2 + 3*y + y


%% Question 6

combine (expr2)

%% Question 7

expr3 = (z + 3) * (z - 1)

%% Question 8

expand (expr3)

%% Question 9

solve (expr2)

%% Question 10

solve (expr2 == 0, y)

%% Question 11

expr4 = y*x^2 + z*x + 6

%% Question 12

fprintf ('y = %s\n', solve (expr4, y))
fprintf ('z = %s\n', solve (expr4, z))

%% Question 13

% I found this on the documention: 





