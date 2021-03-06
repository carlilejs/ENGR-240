clear
clc

% CLASS: Mr. Hogan's ENGR 240
% DATE: 2/16/2021
% AUTHOR: Josh Carlile

%% Question 1

syms x y z

%% Question 2

expr = x^2 + 3*x + 6;

%% Question 3

S = simplify (expr) % Already in simplest form

%% Question 4

F = factor (expr) % Does not factor

%% Question 5

expr2 = y^2 + 4*y^3 +3*y^2 + 3*y + y;


%% Question 6

combine (expr2)

%% Question 7

expr3 = (z + 3) * (z - 1);

%% Question 8

expand (expr3)

%% Question 9

solve (expr2)

%% Question 10

solve (expr2 == 6, y)

%% Question 11

expr4 = y*x^2 + z*x + 6

%% Question 12

y4 = solve (expr4, y);
z4 = solve (expr4, z);

fprintf ('y = %s\n', y4)
fprintf ('z = %s\n', z4)

%% Question 13

subplot (221)
ezplot (y4) %#ok<*EZPLT>
subplot (222)
ezplot (z4)

%% Question 14

subplot (223)
ezplot (y4, [-4,4])
subplot (224)
ezplot (z4, [-4,4])


%% Question 15

expr5 = x^3 + 2*x^2 - 4*x +3;

%% Question 16

origp = sym2poly (expr5)

%% Question 17

diffp = polyder (origp)

%% Question 18

polyval (diffp, 3)


