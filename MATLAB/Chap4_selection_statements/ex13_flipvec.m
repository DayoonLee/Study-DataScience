function out = ex13_flipvec(vec)
    %If the input is a row / column vector, the function will reverse the
    %order. For a matrix or a scalar, will return the unchanged input.
    [r c] = size(vec);
    if (r==1) && (c~=1)
        out = flip(vec);
    elseif (r~=1) && (c==1)
        out = flip(vec);
    elseif (r==1) && (c==1)
        out = vec;
    else
        out = vec;
    end
        
    