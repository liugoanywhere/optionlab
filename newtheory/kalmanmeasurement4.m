function [ logiv,Ik ] = kalmanmeasurement4( x,k,t,mask,numk,numt,ifv,ndays )
for i3=1:ndays
for i=1:numk
for i2=1:(ifv+1)*numt
       % k=0.8+0.02*(i-1);
        
        if i2<=3
           % t=i2/12;
        else
           % t=(i2-3)/12;
        end
y=[-3; 0 ;0 ;0 ;0;0;-3;0;0;0];        
for i4=1:length(mask)
y(mask(i4))=x(i4);
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

index=(ifv+1)*numt*numk*(i3-1)+i2+(i-1)*(ifv+1)*numt;
if i2<=numt
[logiv(index),Ik(index)]=newtheoryi2( eta, t(index), m, w, rho, v, k(index) ,j);
logiv(index)=log(logiv(index));
else
    logiv(index)=log( newtheoryv2( eta, t(index), w,  mp, rhop, vp, k(index),jp ));
end
end
end
end
end