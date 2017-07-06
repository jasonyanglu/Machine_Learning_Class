function plotData(X, y)


figure; 
hold on;

plot(X(y==1,1),X(y==1,2),'k+', 'MarkerSize',7 ,'LineWidth',2);
plot(X(y==0,1),X(y==0,2),'yo', 'MarkerSize',7 ,'LineWidth',2);


hold off;

end
