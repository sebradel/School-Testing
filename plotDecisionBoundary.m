function plotDecisionBoundary(theta, X, y, maxD, means, stds)
% Plots the decision boundary as unscaled (using the original scaling).

	% Here is the grid range
	u = linspace(min(X(:,2)), max(X(:,2)), 100);
	v = linspace(min(X(:,3)), max(X(:,3)), 100);
	z = zeros(length(u), length(v));

	% Evaluate z = theta*x over the grid
	for i = 1:length(u)
	    for j = 1:length(v)
	    	xx = addMoreFeatures([1 u(i) v(j)], maxD);
	    	xx = featureScale(xx, means, stds);
	        z(i,j) = xx * theta;
	    end
	end
	z = z'; % important to transpose z before calling contour
	
	% Plot Data
	plotData(X, y);
%	hold on

	% Plot z = 0
	% Notice you need to specify the range [0, 0]
	contour(u, v, z, [0, 0], 'LineWidth', 2)
%	legend('y=1', 'y=0', 'Decision Boundary')

	hold off

end
