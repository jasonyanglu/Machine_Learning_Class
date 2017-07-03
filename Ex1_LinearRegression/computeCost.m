function J = computeCost(X, y, theta)

m = length(y); % number of training examples

J = 0;
J1 = (X * theta - y).^2;
J = sum(J1(:,1)) / (2 * m);

end