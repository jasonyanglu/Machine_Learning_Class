%% ANN
clc;
clear; 
close all; 
input_layer_size = 400;
hidden_layer_size = 25;
labels = 10;
load('ex3data1.mat');
m = size(X, 1);
s = randperm(size(X, 1));
displayData(X(s(1:100),:));
load('ex3weights.mat');
pred = predict(Theta1, Theta2, X);
fprintf('Training Set Accuracy: %f\n',mean(double(pred==y))*100);