function newX = addNonLinearFeature(X)
    vector = prod(X');
    newX = [X vector'];
end