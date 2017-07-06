function [J, grad] = costFunctionReg(theta, X, y, lambda)

% Initialize some useful values
m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));

J=-1/m*(y'*log(sigmoid(X*theta))+(1-y)'*log(1-sigmoid(X*theta)))+lambda/(2*m)*sum(theta(:,1).^2-theta(1)^2);
grad(1)=X(:,1)'*(sigmoid(X*theta)-y)/m;
grad=X'*(sigmoid(X*theta)-y)/m+lambda/m*theta;

end