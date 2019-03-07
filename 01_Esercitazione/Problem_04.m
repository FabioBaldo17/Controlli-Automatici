clear all, clc, close all;
t=linspace(0,10);
y_1=cos(2*t)+sin(2*t);
y_2=t.*cos(2*t);

figure(1)
plot(t,y_1)
xlabel('seconds')

figure(2)
plot(t,y_2)
xlabel('seconds')

figure(3)
ax1 = subplot(2,1,1);
plot(t,y_1)
xlabel('seconds')

ax2 = subplot(2,1,2);  
plot(t,y_2)
xlabel('seconds')
[x,y] = ginput

figure(4)
plot(t,y_1,t,y_2)
xlabel('seconds')