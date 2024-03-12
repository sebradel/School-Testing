function plotDecisionBoundaryMulti(Theta, X, y, maxD, means, stds)
% Plots the decision boundary as unscaled (using the original scaling).

	plotDataMulti(X, y, rows(Theta));

	for k = 1:rows(Theta)

		% Here is the grid range
		u = linspace(min(X(:,2)), max(X(:,2)), 100);
		v = linspace(min(X(:,3)), max(X(:,3)), 100);
		z = zeros(length(u), length(v));

		% Evaluate z = theta*x over the grid
		for i = 1:length(u)
			for j = 1:length(v)
				xx = addMoreFeatures([1 u(i) v(j)], maxD);
				xx = featureScale(xx, means, stds);
			    z(i,j) = xx * Theta(k,:)';
			end
		end
		z = z'; % important to transpose z before calling contour
		
		% Plot Data
	%	hold on

		% Plot z = 0
		% Notice you need to specify the range [0, 0]
				
		contour(u, v, z, [0, 0], 'LineWidth', 2)

	end
	hold off

end
