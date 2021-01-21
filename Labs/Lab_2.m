clear
clc

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

%% QUESTION 4 and 5
% Create a vector r that has 20 random values ranging from 10 to 100
% Use a for loop & if statement to print even values of r

r = randi([10, 100], [1, 20]);
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

% Use custom function to turn p into a 4x5 matrix
prime_matrix = matricize(p, 4, 5);
printm(prime_matrix, 5); % Print each value of the matrix

%% QUESTION 7
% Use the matrix you created in question 5 and modify the value in the second row and the third column.  Multiply it by 5.

% fprintf("before: %d\n", prime_matrix(2,3));
prime_matrix(2, 3) = prime_matrix(2, 3) * 5;
% fprintf("after: %d\n", prime_matrix(2,3));

%% QUESTION 8
% Add a row to the matrix you just modified

[m, n] = size(prime_matrix);
prime_matrix = [prime_matrix, zeros(n)];
printm(prime_matrix, 5);


%% FUNCTION DEFINITIONS

% returns an n x m matrix from a vector with m*n values
function mat = matricize(vec, m, n)
    mat = zeros(m, n); % Create a 4x5 matrix of zeros (pre-allocate memory)
    if length(vec) ~= m*n; return; end % End function if mxn matrix cannot be created
    
    % n*(i-1)+1 -> 1 n+1 2n+1
    for i = 1:m
        start = n*(i-1)+1; % 1 n+1 2n+1 3n+1 ...
        ending = n*i; % n 2n 3n 4n ...
        mat(i, 1:n) = vec(start:ending);
    end
end

% Function to print matrix mat, with n spaces for each entry
function printm(mat, n)
    [rows, columns] = size(mat);
    for i = 1:rows
        for j = 1:columns
            fprintf("%*.1f ", n, mat(i, j)); % Print each term with n spaces allocated
        end
        fprintf("\n");
    end
end


