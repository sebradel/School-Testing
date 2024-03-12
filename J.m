function cost = J(theta, X, y, lambda)
    sumSquares = lambda*(theta(2:length(theta))' * theta(2:length(theta)))/2;
    
    cost = (sum((-ln(h(theta, X)).*y)-(ln(1-h(theta, X) .* (1-y))))+sumSquares )./ rows(X);
end