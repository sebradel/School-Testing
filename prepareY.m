function Y = prepareY(y)
    k = 0;
    for i=1:length(y)
        if(y(i)>k)
            k = y(i);
        endif
    endfor
    Y = zeros(length(y), k);
    for i=1:length(y)
        Y(i, y(i)) = 1;
    endfor
end