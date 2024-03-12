function X = newFeatureScale(input)
    mean = mean(input);
    std = std(input);
    X = input-mean;
    X = X ./ std;
    X(:, 1) = ones(rows(X), 1);
end