function [x_norm, mu, sigma] = featureNormalize(x)

x_norm = x;

mu = zeros(1, size(x, 2));
sigma = zeros(1, size(x, 2));

mu = mean(x, 1);
sigma = std(x, 1);

for i=1:size(x, 1)
    x_norm(i, :) = (x(i, :) - mu) ./ sigma;
end

end