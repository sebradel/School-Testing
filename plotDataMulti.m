function plotDataMulti(X, y, k)
	hold on;

	style = {"bo"; "ro"; "go"; "b*"; "r*"; "g*"; "b+"; "r+"; "g+"};

	for i = 1:k
		plot(X(find(y==i), 2), X(find(y==i), 3), style{i}, 'MarkerSize', 10);
	end

	set(gca, 'linewidth', 2, 'fontsize', 22);
	xlabel('x1'); % Set the x-axis label
	ylabel('x2'); % Set the y-axis label
end
