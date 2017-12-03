clc
clear close all
X=[1,2,3;4,5,6];


for i=1:size(X,2)
 temp=0;
 mu=mean(X(:,i));
 sigma=std(X(:,i));
 temp=X(:,i)-mu;
 temp=temp/sigma;
 Xnorm(:,i)=temp
end

Xnorm