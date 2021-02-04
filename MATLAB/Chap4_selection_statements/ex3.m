fprintf('This program will calculate the volume of a pyramid.\n');
l = input('Enter the length of the base: ');
l_cal = ex3_function(l);  

w = input('Enter the width of the base: ');
w_cal = ex3_function(w);

h = input('Enter the height: ');
h_cal = ex3_function(h);

%fprintf('so far l: %.3f, w: %.3f, h: %.3f', l_cal, w_cal, h_cal);

vol = 1/3 * l_cal * w_cal * h_cal;
fprintf('The volume of the pyramid is %.3f cubic inches\n', vol);