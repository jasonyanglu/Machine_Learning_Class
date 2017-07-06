function p = predict(theta, X)

m = size(X, 1); % Number of training examples

p = zeros(m, 1);

probability=sigmoid(X*theta);
for i=1:m
    if probability(i)>=0.5
        p(i)=1;
    else
        p(i)=0;
    end
end

end