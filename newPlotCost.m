function newPlotCost(costs, costs2)

	figure; % open a new figure window
	hold on;
	
	color = ['r-' 'g-' 'b-' 'k-' 'r*' 'g*' 'b*' 'k*'];
	
	for	i = 1:rows(costs)
	
		plot(0:length(costs(i, :))-1, costs(i, :), color(i), 'MarkerSize', 10);
        plot(0:length(costs2(i, :))-1, costs2(i, :), color(i), 'MarkerSize', 10);
	
	end
	
	set(gca, 'linewidth', 2, 'fontsize', 22);
	xlabel('m'); % Set the x-axis label
	ylabel('cost'); % Set the y-axis label

end