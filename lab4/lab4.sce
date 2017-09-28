clc
clear 
close;close;close;close
m=10;N=2^m;
T1=15;
dt1=T1/N;
t11=-5:dt1:0-dt1;
t12=0:dt1:5-dt1;
t13=5:dt1:10-dt1;
t1=[t11 t12 t13]
x11=4*ones(t11);
x12=0*t12;
x13=12*ones(t13);
x=[x11 x12 x13];

T2=10;
dt2=T2/N;
t21=-5:dt2:0-dt2;
t22=0:dt2:5-dt2;
t2=[t21 t22]
y21=-4*t21;
y22=-2*t22+10;
y=[y21 y22];
figure(1,'BackgroundColor',[1,1,1]);
plot2d2(t1,x,5,);
plot2d2(t2,y,3)
legend('Вхідний сигнал - x(n)','Вхідний сигнал - y(n)')
title('Вхідні сигнали')
Bxx=(1/N)*xcorr(x,x);
figure(2,'BackgroundColor',[1,1,1]);
plot(Bxx);
title('Автокореляційна функція сигналу X')
Byy=(1/N)*xcorr(y,y);
figure(3,'BackgroundColor',[1,1,1]);
plot(Byy);
title('Автокореляційна функція сигналу Y')
Bxy=(1/(2*N))*xcorr(x,y);
figure(4,'BackgroundColor',[1,1,1]);
plot(Bxy);
title('Взаємокореляційна функція сигналів X та Y')
