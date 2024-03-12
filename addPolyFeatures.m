function newX = addPolyFeatures(X, maxD)
    newX = X;
    for i=2:maxD
        Y = X(: , 2:columns(X)) .^ (i);
        newX = [newX Y];
end