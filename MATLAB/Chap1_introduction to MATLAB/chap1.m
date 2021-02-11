% ex1
atomic_weight = 63.55;

% ex2
my_age = 27;
my_age = my_age - 2;
my_age = my_age + 1;

% ex3
weight_pounds = 100;
weight_ounces = 200;
clear('weight_ounces')
who

% ex4
format RAT
5/16 + 2/7;

% ex5
format Short
ftemp = 75;
ctemp = (ftemp-32) * 5/9

% ex6 fix(), ceil(), floor()
fix(3.5) == floor(3.5);
fix(3.4) == fix(-3.4);
fix(3.2) == floor(3.2);
fix(-3.2) == floor(-3.2);
fix(-3.2) == ceil(-3.2);

% ex7
(3 == 2) + 1;
3 == 2 + 1;

% ex8
format bank
r = 11;
C = (32430/r)+428*pi*r
