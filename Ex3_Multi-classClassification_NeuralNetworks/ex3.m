%% One-vs-all
clc;
clear; 
close all;
input = 400;
labels = 10;
load('ex3data1.mat');
m = size(X, 1);
rand_indices = randperm(m);
s = X(rand_indices(1:100), :);
displayData(s);
%% Logistic Regression
lambda = 0.1;
[Thetas] = oneVsAll(X, y, labels, lambda);
%% Predict
pred = predictOneVsAll(Thetas,X);
fprintf('\nTraining Set Accuracy: %f\n',mean(double(pred==y))*100);