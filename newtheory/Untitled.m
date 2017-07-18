syms eta t I m w rho v k positive
F=1/4*exp(-2*eta*t)*w^2*t^2*I^4+(1-2*exp(-eta*t)*m*t-exp(-eta*t)*w*rho*v^0.5*t)*I^2-(v+2*exp(-eta*t)*w*rho*v^0.4*k+exp(-2*eta*t)*w^2*k^2)
A=1/4*exp(-2*eta*t)*w^2*t^2
B=(1-2*exp(-eta*t)*m*t-exp(-eta*t)*w*rho*v^0.5*t)
C=-(v+2*exp(-eta*t)*w*rho*v^0.4*k+exp(-2*eta*t)*w^2*k^2)
I0=((-B+(B^2-4*A*C)^0.5)/(2*A))^0.5
syms eta t w V mp rhop vp k positive
A=1/4*exp(-2*eta*t)*w^2*t^2
B=1-2*exp(-eta*t)*mp*t-exp(-eta*t)*w*rhop*vp^0.5*t
C=-(vp+2*exp(-eta*t)*w*rhop*vp^0.5*k+exp(-2*eta*t)*w^2*k^2)
V0=((-B+(B^2-4*A*C)^0.5)/(2*A))^0.5