%This program is written by Teren Liu Under MATLAB 2014a/octave. published under BSD license.
%https://github.com/hitmesttech/computational_physics_class
data=load('couple.dat');
x = load('couplev.dat');
data_sorted=sortrows(data,1);
X=data(:,1);
Y=data(:,2);
y1=interp(X,Y,x);
y2=interp1(X,Y,x,'linear');
save couplevnew.dat x y1 -ASCII
hold on
plot(x,y1,'o',x,y2,'x');
legend('interpolation function','built-in interpolation function');
xlabel('U/mV');
ylabel('T/$^{\circ}$C','Interpreter','latex');
