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
mat1 = rand(2, 3);
mat2 = 10 * rand(2, 3);
mat3 = randi([5,20], 2, 3);

% ex8
rows = randi([1,5], 1);
cols = randi([1,5], 1);
mat4 = zeros(rows, cols);

% ex9
mat = [1:3; 4:3:11];
fliplr(mat);
flipud(mat);
rot90(mat);
rot90(rot90(mat));
rot90(flipud(mat));
reshape(mat, 3, 2)

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
sum((2.*(1:n)+1) ./ (1:n));

% ex18
mat = [0 3 10; 2 1 8; 1 2 3]
prod(mat, 1) % product of each column
prod(mat, 2) % product of each row

% ex19
mat = randi([1,20], 1, 6)
maxval = max(mat)
minval = min(mat)
cumulativesum = cumsum(mat)

% ex20
mat = randi([1,15], 1, 5)
cumulativesum = cumsum(mat);
lastval = cumulativesum(:, length(mat));
sumval = sum(mat);
lastval == sumval

% ex21
mat = randi([-10,10], 1, 5)
mat = mat-3
numpos = sum(mat > 0)
mat = abs(mat)
maxval = max(mat)

% ex22
format short
mat = randi([1,10],3, 5)
max(mat,[],1) %maximum value in each column
max(mat,[],2) %maxximum value in each row
max(mat,[],'all') %maximum value in the entire matrix

% ex23
evals = [5 3 2 5 5 4 1 2]; %it should really be [1 3 4 1 1 2 5 4]
correvals = 5 - evals + 1;

% ex24
format bank
v = [33 10.5 40 18 20 7.5];
[r,c] = size(v);
employee = v(1:2:c);
hourpay = v(2:2:c);
totalpay = employee .* hourpay;

% ex25
r = [5.501 5.5 5.499 5.498 5.5 5.5 5.52 5.51 5.5 5.48];
h = [11.11 11.1 11.1 11.12 11.09 11.11 11.11 11.1 11.08 11.11];
validr = r(r > 0);
validh = h(h > 0);
vol = validr .* validh;

% ex26
A = [1 4; 3 2];
B = [2 1 3; 1 5 6; 3 6 0];
C = [3 2 5; 4 1 2];
3*A; 
A*C;
C*B; %matrix multiplications can be performed

% ex27
A = [4 1 -1; 2 3 0];
B = [1 4];
C = [2 3]';
% B*C C*A can be done / A*B can't be done

% ex28
randmatrix = randi([50, 100], 1, 20);
calc = mod(randmatrix, 2);
evens = randmatrix(calc==0);
odds = randmatrix(calc==1);
