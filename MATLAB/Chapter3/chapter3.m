%chapter3
%multiple line comment: ctrl+r, uncomment: ctrl+t

% a = [1:3; 4:6];
% str = 'apple';
% fprintf('The first element in the array is %d, the string is %s', a(1,1), str);
% 
% y = x.^2;
% plot(x, y, 'ro--')
% xlabel('n')
% ylabel('x^2')
% title('First Graph')

% load 'objweights.dat'
% 
% rounded = round(objweights);
% x = 1:length(rounded);
% plot(x, rounded,'r*')
% xlabel('Object #')
% ylabel('Weight')
% title('Practice Plot')

% calcarea(2)
% %help calcarea
% calcarea(4)
% 
% for i = 1:4
%     disp(calcarea(i))
% end

ri = input('inner radius?: ');
ro = input('outer radius?: ');

volume = calcvol(ri, ro);

fprintf('Inner radius: %.1f\nOuter radius: %.1f\nThe volume is %.2f\n', ri, ro, volume)