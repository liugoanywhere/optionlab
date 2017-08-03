function [ logiv ] = kalmanmeasurement3( x,k,t )
for i=1:21
    for i2=1:3
        %k=0.8+0.02*(i-1);
        %t=i2/12;
v=exp(x(1));
m=x(2);
rho=(exp(x(3))-1)/(exp(x(3))+1);
w=exp(x(4));
eta=exp(x(5));
j=x(6);
logiv(i2+(i-1)*3)=log(newtheoryi2( eta, t(i2+(i-1)*3), m, w, rho, v, k(i2+(i-1)*3),j ));
end
end
end

