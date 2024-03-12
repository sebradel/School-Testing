function [theta, costs] = gradientDescent(theta, X, y, alpha, numIter, lambda)

	costs = [J(theta, X, y, lambda)];

	for i=1:numIter
	
		theta = theta - (alpha * JDerivative(theta, X, y, lambda));
		
		% This block of code helps debugging the functions J and JDerivative.
		if (i == -1)
		
			d1 = JDerivative(theta, X, y, lambda);
			d2 = gradientCheck(theta, X, y, lambda);

			% Expect the differences to be very small
			printf('Here are the differences:\n');
			d1-d2
		
		endif
		
		costs = [costs J(theta, X, y, lambda)];
	end

end
