a = input('Enter a length of a: ');
while a <= 0
    a = input('Invalid length! Enter a length of a: ');
end

c = input('Enter a length of c: ');
while c <= 0
    c = input('Invalid length! Enter a length of a: ');
end

b = ex5_findb(a, c);
fprintf('The length of b is %.2f\n', b)