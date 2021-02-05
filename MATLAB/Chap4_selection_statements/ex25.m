letter = input('Enter a letter: ', 's');
%fprintf('what %c', letter);

if letter == 'x'
    disp('Hello');
elseif letter == 'y' || letter == 'Y'
    disp('Yes');
elseif letter == 'Q'
    disp('Quit');
else
    disp('Error');
end