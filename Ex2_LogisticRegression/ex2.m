%% Gussian Discriminant Analysis（same covariance matrices）

%% Initialization

clear ; 
close all; 
clc

%% Load Data

data1 = load('dataX.txt');
X = data1(:, 1:2);

data2 = load('dataY.txt');
y = data2(:, 1);

%% Plotting

plotData(X, y);

legend('y=1', 'y=0')

%% Gussian models

total_num1 = size(find(y==1),1);
total_num2 = size(find(y==0),1);

H1 = [X(y==1,1),X(y==1,2)];
u1 = sum(H1,1)/total_num1;


H2 = [X(y==0,1),X(y==0,2)];
u2 = sum(H2,1)/total_num2;

plotData(X,y)
plot(u1(:,1),u1(:,2),'r^', 'MarkerSize',8 ,'LineWidth',2)
plot(u2(:,1),u2(:,2),'r^', 'MarkerSize',8 ,'LineWidth',2)


sigma1 = eye(size(H1,2));
sigma2 = eye(size(H2,2));

u11=repmat(u1,size(H1,1),1);
u22=repmat(u2,size(H2,1),1);

%G1=exp(-0.5*((H1-u11)*inv(sigma1)*(H1-u11)'))/((2*pi)*sqrt(det(sigma1)));
G2 = exp(-0.5*((H2-u22)*inv(sigma1)*(H2-u22)'))/((2*pi)*sqrt(det(sigma2)));

G1 = exp(-0.5*((H1-u11)*inv(sigma1)*(H1-u11)'))/((2*pi)*sqrt(det(sigma1)));
Z1 = diag(G1);

scatter3(H1(:,1),H1(:,2),Z1)

[X,Y,Z] = griddata(H1(:,1),H1(:,2),Z1,linspace(min(H1(:,1)),max(H1(:,2)))',linspace(min(H1(:,2)),max(H1(:,2))),'v4');
%surf(X,Y,Z)
figure
mesh(X,Y,Z)
plotData(X,y)
hold on
contour(X, Y, Z)
%scatter3(X,Y,Z);
hold off


