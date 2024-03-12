function plotData(X, y)
	hold on;

	plot(X(find(y==1), 2), X(find(y==1), 3), "r*", 'MarkerSize', 10);

	plot(X(find(y==0), 2), X(find(y==0), 3), "bo", 'MarkerSize', 10);

	set(gca, 'linewidth', 2, 'fontsize', 22);
	xlabel('x1'); % Set the x-axis label
	ylabel('x2'); % Set the y-axis label
end
