function [ logiv ] = kalmanmeasurement4( x,k,t )
for i=1:21
    for i2=1:6
       % k=0.8+0.02*(i-1);
        
        if i2<=3
           % t=i2/12;
        else
           % t=(i2-3)/12;
        end
v=exp(x(1));
m=x(2);
rho=(exp(x(3))-1)/(exp(x(3))+1);
w=exp(x(4));
eta=exp(x(5));
j=x(6);
vp=exp(x(7));
mp=x(8);
rhop=(exp(x(9))-1)/(exp(x(9))+1);
jp=x(10);
if i2<=3
logiv(i2+(i-1)*6)=log(newtheoryi2( eta, t(i2+(i-1)*6), m, w, rho, v, k(i2+(i-1)*6) ,j));
else
    logiv(i2+(i-1)*6)=log( newtheoryv2( eta, t(i2+(i-1)*6), w,  mp, rhop, vp, k(i2+(i-1)*6),jp ));
end
end
end
end