function [ v,m,rho,w,eta,j,vp,mp,rhop,jp,mink ] = explainx( x,mask )
%INTERPRETX Summary of this function goes here
%   Detailed explanation goes here
y=[-3; 0 ;0 ;0 ;0;0;-3;0;0;0];        
for i3=1:length(mask)
y(mask(i3))=x(i3);
end

v=exp(y(1));
m=y(2);
rho=(exp(y(3))-1)/(exp(y(3))+1);
w=exp(y(4));
eta=exp(y(5));
j=y(6);
vp=exp(y(7));
mp=y(8);
rhop=(exp(y(9))-1)/(exp(y(9))+1);
jp=y(10);




end