clear all
clc
close()
A1 = 0,48; A2 = 23; A3= -5; A4 = -17;
w1 = 13; w2 = 1/7; w3 = 15; w4 = 5;
phi1 = %pi/7; phi2 = %pi/5; phi3 = 0; phi4 = %pi/4;
M = 2^5
koef = 2^0
w_gr=max([w1,w2,w4,w3]);
f_gr=w_gr/(2*%pi);
dt=1/(2*f_gr*koef);
T=6*%pi;
t=0:dt:T-dt;
x=A1*cos(w1*t+phi1)-A2*sin(w2*t+phi2)+A3*sin(w3*t+phi3)-A4*cos(w4*t+phi4);
maxA=max(abs(x))
minA=-maxA
N=length(x);
k=(maxA-minA)/(M-1);
K=minA:k:maxA;
y=floor(x/k)*k;
if modulo(M,2)==0
    y=y+k/2;
end;
KK=ones(N,1)*K; plot(t,KK,'k--')
ff=gca()
ff.auto_ticks=["on","on","on"]
xlabel('Час,с'); ylabel('Рівні квантування')
plot2d(t,x,3)
plot2d2(t,y,5)
a=max(abs(y-x))
disp(a,"a=")
b=(1/N)*(sum(y)-sum(x))
disp(b,"b=")
d=(1/N)*sum((y-x).^2)
disp(d,"d=")
