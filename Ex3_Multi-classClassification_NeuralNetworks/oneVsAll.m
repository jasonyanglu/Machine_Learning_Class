function [Thetas]=oneVsAll(X,y,labels,lambda)

[m, n] = size(X);
X = [ones(m,1) X];
initial_theta = zeros(n+1, 1);
options = optimset('GradObj','on','MaxIter',50);
for i = 1:labels
    [Thetas(i,:)] = fmincg(@(t)(lrCostFunction(t, X, (y==i), lambda)), initial_theta, options);
end

end
