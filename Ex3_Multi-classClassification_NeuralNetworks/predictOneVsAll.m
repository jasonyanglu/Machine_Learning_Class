function p = predictOneVsAll(Thetas, X)

m = size(X, 1);
X = [ones(m, 1) X];
prob = sigmoid(X * Thetas');
[z, p] = max(prob, [], 2);

end