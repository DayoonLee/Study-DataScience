choice = menu('Menu\n', '1. Cylinder\n', '2. Circle\n', '3. Rectangle\n');
fprintf('Please choose one: %d\n', choice);

switch choice
    case 1
        r = input('Enter the radius: ');
        h = input('Enter the height: ');
        A = 2*pi*r*(r+h);
    case 2
        r = input('Enter the radius: ');
        A = pi*(r^2);
    case 3
        l = input('Enter the length: ');
        w = input('Enter the width: ');
        A = l*w;
end

fprintf('The area is %.2f\n', A);
