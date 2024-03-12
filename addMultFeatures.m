function newX = addMultFeatures(X)
    newX = X;
    y = columns(X);
    for i=2:y-1
        for j=(i+1):y
            newX = [newX (newX(: , i).*newX(: , j))];
        endfor
    endfor
end