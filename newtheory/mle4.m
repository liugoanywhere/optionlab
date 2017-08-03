function [ loglikelihood ] = mle4( iv,x,k,t )
loglikelihood=0;
v=x(1);
m=x(2);
rho=x(3);
w=x(4);
eta=x(5);
j=x(6);
vp=x(7);
mp=x(8);
rhop=x(9);
jp=x(10);

for i3=1:21
for i=1:21
    for i2=1:6
       % k=0.8+0.02*(i-1);
        
        if i2<=3
           % t=i2/12;
        else
           % t=(i2-3)/12;
        end

if i2<=3

loglikelihood=loglikelihood+log(normpdf(iv(126*(i3-1)+i2+(i-1)*6)-newtheoryi2( eta, t(126*(i3-1)+i2+(i-1)*6), m, w, rho, v, k(126*(i3-1)+i2+(i-1)*6) ,j)));
else
    loglikelihood=loglikelihood+log(normpdf(iv(126*(i3-1)+i2+(i-1)*6)- newtheoryv2( eta, t(126*(i3-1)+i2+(i-1)*6), w,  mp, rhop, vp, k(126*(i3-1)+i2+(i-1)*6),jp )));
end

end
end
end
end

