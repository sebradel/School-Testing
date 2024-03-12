function [x] = fixInf(x)

	x = max(x, log(1e-323));

end
