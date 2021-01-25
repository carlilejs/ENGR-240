clear
clc
% Author: Josh Carlile
% Class: Mr. Hogan's ENGR 240
% Date: Jan 21, 2021

%% QUESTION 1
% Create a vector x with values ranging from 1 to 100 in steps of 5
% Create a vector y which is the square root of each value of x

x = 1:5:100;
y = sqrt(x); %#ok<NASGU>

%% QUESTION 2
% Create a vector w with the sin of each value of x

w = sin(x);

%% QUESTION 3
% Still using the vector x, calculate values for y with the
% formula x^2 + 2x - 2

% Use dot syntax to apply operations to each value in matrix
y = x.^2 + 2.*x - 2;

%% QUESTION 4
% Create a vector r that has 20 random values ranging from 10 to 100

r = randi([10, 100], [1, 20]);

%% QUESTION 5
% Use a for loop & if statement to print even values of r

fprintf("\nVector r: ");
for i = 1:length(r)
    if mod(i, 2) == 0
        fprintf("%.2d, ", r(i));
    end
end
fprintf("\n");

%% QUESTION 6
% Create a matrix of 4 rows and 5 columns with any values.

% Generate first 4*5 prime numbers in a vector p:
p = [];
i = 0;
while length(p) < 4*5
    i = i+1;
    p = primes(i);
end

% Use custom function (defined below) to turn p into a 4x5 matrix
prime_matrix = matricize(p, 4, 5);

%% QUESTION 7
% Use the matrix you created in question 5 and modify the value in the second row and the third column.  Multiply it by 5.

prime_matrix(2, 3) = prime_matrix(2, 3) * 5; % Is this memory efficient?
test = prime_matrix( mod(prime_matrix, 2) == 1 );

%% QUESTION 8
% Add a row to the matrix you just modified

[m, n] = size(prime_matrix); % Get rows and columns of the prime_matrix
prime_matrix = [prime_matrix; randi([1,10], [1,n])]; % Add row of n random numbers between 1 and 10 to the end of prime_matrix
fprintf("\n\n");
printm(prime_matrix, 5);

%% QUESTION 9
% Use the built in function to report the total number of elements in
% prime_matrix

elements = numel(prime_matrix);
fprintf("\nprime_matrix contains %i elements\n", elements);

%% QUESTION 10
% Use nested for loops to display the values in the matrix

% Using my function printm which uses nested for loops to print matrix
% values
% USAGE: printm(<matrix>, <number of spaces available to each entry>)

fprintf("\n");
printm(prime_matrix, 5);

%% FUNCTION DEFINITIONS


function mat = matricize(vec, m, n)
% matricize takes a vector of length m*n and returns an m x n matrix

    mat = zeros(m, n); % Create a 4x5 matrix of zeros (pre-allocate memory)
    if length(vec) ~= m*n; return; end % End function if mxn matrix cannot be created
    
    % n*(i-1)+1 -> 1 n+1 2n+1
    for i = 1:m
        start = n*(i-1)+1; % 1 n+1 2n+1 3n+1 ...
        ending = n*i; % n 2n 3n 4n ...
        mat(i, 1:n) = vec(start:ending);
    end
end


function printm(mat, n)
% printm prints each value of mxn matrix, mat, organized into m rows and n
% columns

    [rows, columns] = size(mat);
    for i = 1:rows
        for j = 1:columns
            fprintf("%*.1f ", n, mat(i, j)); % Print each term with n spaces allocated
        end
        fprintf("\n");
    end
end


