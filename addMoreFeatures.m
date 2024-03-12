function [X] = addMoreFeatures(X, maxD)

	X = addMultFeatures(X);
	X = addPolyFeatures(X, maxD);

end
