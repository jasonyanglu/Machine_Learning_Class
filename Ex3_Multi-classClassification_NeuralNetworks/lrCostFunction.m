function [J,grad] = lrCostFunction(theta,X,y,lambda)

m = length(y);
J = 1/m*(-y'*log(sigmoid(X*theta))-(1-y)'*log(1-sigmoid(X*theta)))+(lambda/(2*m))*(theta'*theta-theta(1)^2);
grad = 1/m*X'*(sigmoid(X*theta)-y)+lambda/m*theta;
grad(1) = grad(1)-lambda/m*theta(1);
grad = grad(:);

end