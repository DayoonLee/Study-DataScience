function out = ex35_makemat(v1, v2)
    
    if length(v1) > length(v2)
        nofzero = length(v1) - length(v2);
        addzero = zeros(1, nofzero);
        v2 = [v2 addzero];
    else
        nofzero = length(v2) - length(v1);
        addzero = zeros(1, nofzero);
        v1 = [v1 addzero];
    end   
    
    out = [v1; v2];
    