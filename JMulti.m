function cost = JMulti(theta, X, Y, lambda)
    sumTheta = lambda * sum(sum(dot(theta(:,2:columns(theta)),theta(:,2:columns(theta))))) / 2;
    brack1= dot(-ln(h(theta', X)), Y);
    brack2 = dot(ln(1-h(theta', X)),(1-Y));
    cost = (sum(sum((brack1-brack2)))+sumTheta)/rows(X);
end