% ex1
v1 = 2:7;
v2 = 1.1:0.2:1.7;
v3 = 8:-2:2;
v4 = v1';

% ex2
myend = randi([5, 9], 1);
v5 = 1:3:myend;

% ex3
v6 = [-1:0.5:1]';

% ex4
mat = [7:10; 12:-2:6];
mat(1,3);
mat(2,:);
mat(:,[1,2]);

% ex5
mat = rand(2, 4);
nelements = numel(mat);
nrows = size(mat, 1);
ncols = size(mat, 2);
multiple = nrows * ncols;
nelements == multiple

% ex6
mat = rand(2, 4);
mat(1,:) = 1:4;
mat(:,3) = 6:7;

% ex7
mat1 = rand(2, 3)
mat2 = 10 * rand(2, 3)
mat3 = randi([5,20], 2, 3)

% ex8
rows = randi([1,5], 1)
cols = randi([1,5], 1)
mat4 = zeros(rows, cols)

% ex9
mat = [1:3; 4:3:11];
fliplr(mat);
flipud(mat);
rot90(mat);
rot90(rot90(mat));
rot90(flipud(mat));

% ex10
mat = rand(3, 5);
mat(3,:) = [];

% ex11
mat = rand(3, 3, 2);
size(mat);

% ex12
mat = zeros(2,4);
mat(:,:,2) = ones(2,4);
mat(:,:,3) = 5*ones(2,4);

% ex13
mat = randi([-5,5], 4, 6);
absmat = abs(mat);

% ex14
mat = 3:2:11;
sum(mat);

% ex15
n = 5;
sum(1./(1:n));

% ex16
n = 4;
sum(1./(2.^(1:n)))+1;

% ex17
format RAT
n = 4;
sum((2.*(1:n)+1) ./ (1:n))

% ex18


