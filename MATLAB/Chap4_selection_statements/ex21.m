speed = input('Enter a speed of the storm: ');
if speed <= 38
    disp('type: tropical depression');
elseif (39 < speed) && (speed < 73)
    disp('type: tropical storm');
elseif speed >= 74
    disp('type: storm')
end
