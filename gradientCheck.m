function [d] = gradientCheck(theta, X, y, lambda)

	epsilon = 0.0001;
	ep = epsilon * eye(rows(theta));

	d = zeros(columns(X),1);
	
	for j = 1:columns(X)
	
		d(j) = (J(theta + ep(:,j), X, y, lambda) - J(theta - ep(:,j), X, y, lambda)) / (2 * epsilon);		
	
	endfor
	
end
