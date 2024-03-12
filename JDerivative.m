function partDeriv = JDerivative(theta, X, y, lambda)
    newTheta = theta * lambda;
    newTheta(1) = 0;
    partDeriv = (X' * error(theta, X, y)) + newTheta;
    partDeriv = partDeriv / length(y);
end