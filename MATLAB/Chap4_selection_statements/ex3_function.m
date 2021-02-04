%ex3_choice_function
function output = ex3_function(user_inp)

    choice = menu('Is that i or c?', 'i', 'c');
    switch choice
        case 1
            output = user_inp;
        case 2
            output = (1/2.54) * user_inp;
        otherwise
            disp('Error!')
    end
end
