% Ways to create matrices

mat1 = zeros(3, 3); % 3x3 matrix containing all zeros
mat2 = ones(2, 3); % 2x3 matrix containing all ones
mat3 = eye(4, 4); % 4 x 4 matrix with 1's on the diagonal
mat4 = [1 3 5; 7 9 11]; % 2x3 matrix
mat5 = [1  5  6
        3  50 100
        12 24 68]; % MATLAB doesn't care about whitespace


[rows, columns] = size(mat5);
for i = 1:rows
    for j = 1:columns
        fprintf("%-+6.2f ", mat5(i, j));
    end
    fprintf("\n");
end
