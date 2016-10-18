%This program is written by Teren Liu Under MATLAB 2014a/octave. published under BSD license.
%https://github.com/hitmesttech/computational_physics_class
a=load('smooth.dat');
x=a(1,:);
y0=a(2,:);
hold on;
y1=smoothmean(y0);
y2=smooth(y0);
plot(x,y0,'*',x,y1,x,y2);
legend('raw data','function writed','system inner function');

