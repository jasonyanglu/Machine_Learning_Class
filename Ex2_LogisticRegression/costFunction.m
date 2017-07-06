function [J, grad] = costFunction(theta, X, y)

% Initialize some useful values
m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));

J = -1/m*(y'*log(sigmoid(X*theta))+(1-y)'*log(1-sigmoid(X*theta)));
grad = X'*(sigmoid(X*theta)-y)/m;

end