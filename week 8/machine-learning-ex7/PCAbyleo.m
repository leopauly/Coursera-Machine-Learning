%My personal experiments with PCA
clc
clear 
close all
data=load ('fisheriris.mat');
x=data.meas(:,1:4);
%x=[-10;9;-9;10]
for i=1:2
x_norm(:,i)=(x(:,i)-mean(x(:,i)))/range(x(:,i));
end
scatter(x_norm(:,1),x_norm(:,2))
hold on
[pc,latent]=princomp(x_norm);
c=[255,255,0]
plotv(pc,'-')

