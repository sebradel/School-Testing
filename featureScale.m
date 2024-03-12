function [X] = featureScale(X, means, stds)

	X = (X - means) ./ stds;
	
	X(:, 1) = 1;

end
