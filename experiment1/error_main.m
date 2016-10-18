%This program is written by Teren Liu Under MATLAB 2014a/octave. published under BSD license.
%https://github.com/hitmesttech/computational_physics_class
data=load('erro.dat');
x=a(1,:);
y0=a(2,");
y1=errorc(y0,0.5);
plot(x,y0,'o',x,y1);
legend('raw data', 'corrected data');
