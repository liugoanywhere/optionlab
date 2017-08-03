function [ loglikelihood ] = mle3( iv,x,k,t )
loglikelihood=0;
v=x(1);
m=x(2);
rho=x(3);
w=x(4);
eta=x(5);
j=x(6);


for i3=1:21
for i=1:21
    for i2=1:3
       % k=0.8+0.02*(i-1);
        
        if i2<=3
           % t=i2/12;
        else
           % t=(i2-3)/12;
        end



loglikelihood=loglikelihood+log(normpdf(iv(63*(i3-1)+i2+(i-1)*3)-newtheoryi2( eta, t(63*(i3-1)+i2+(i-1)*3), m, w, rho, v, k(63*(i3-1)+i2+(i-1)*3) ,j)));


end
end
end
end

