d1 = input('Enter the length d1: ');
d2 = input('Enter the length d2: ');

if (d1 <= 0) || (d2 <= 0)
    disp('Error!');
else
    A = d1 * d2 / 2;
    fprintf('Area is: %.2f\n', A);
end

