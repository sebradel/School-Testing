function [Theta, costs] = gradientDescentMulti(Theta, costFunc, costDer, alpha, numIter)

	costs = [feval(costFunc, Theta)];

	for i=1:numIter
	
		Theta = Theta - (alpha * feval(costDer, Theta));

		costs = [costs feval(costFunc, Theta)];
	end

end
