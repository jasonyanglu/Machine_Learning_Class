function p = predict(Theta1, Theta2, X)

m = size(X, 1);
p = zeros(size(X, 1),1);
X = [ones(m, 1) X];
prob1 = sigmoid(X * Theta1');
prob1 = [ones(m, 1) prob1];
prob2 = sigmoid(prob1 * Theta2');
[z, p] = max(prob2, [], 2);

end
