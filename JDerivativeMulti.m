function derivatives = JDerivativeMulti(theta, X, Y, lambda)
    part1 = X' * error(theta', X, Y);
    part1 = part1';
    part2 = theta;
    part2(:, 1) = zeros;
    part2 = part2 * lambda;
    derivatives = (part1 + part2) / rows(X);
end