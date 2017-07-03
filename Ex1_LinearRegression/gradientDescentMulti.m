function [theta, J_history] = gradientDescentMulti(New_X, y, theta, alpha, num_iters)

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    Z = New_X' * (New_X * theta - y);
    theta = theta - alpha / m * Z;
    J_history(iter) = computeCostMulti(New_X, y, theta);
end

end
