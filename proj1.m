%this program is written by Teren Liu under matlab 2014a. published under BSD license.
%https://github.com/hitmesttech/computational_physics_class.git
clear;
file_path1='204.txt';
file_path2='304.txt';
file_path3='404.txt';
rx1=transpose(load(file_path1));
rx2=transpose(load(file_path2));
rx3=transpose(load(file_path3));
[wl1,I1]=norm_shift(rx1);
[wl2,I2]=norm_shift(rx2);
[wl3,I3]=norm_shift(rx3);
f1=wave_half(wl1,I1);
f2=wave_half(wl2,I2);
f3=wave_half(wl3,I3);
figure(1);
hold on;
plot(rx1(2,:),rx1(3,:),'b');
plot(rx2(2,:),rx2(3,:),'g');
plot(rx3(2,:),rx3(3,:),'r');
xlabel('wavelenth(nm)');
ylabel('Intensity(a.u.)');
title('Unnormalized LD longitudinal mode');
legend('Current=20mA','Current=30mA','Current=40mA');
figure(2);
hold on;
plot(wl1,I1,'b');
plot(wl2,I2,'g');
plot(wl3,I3,'r');
title('Normalized LD longitudinal mode');
xlabel('shifted wavelenth(nm)');
ylabel('Normalized Intensity(a.u.)');
legend(['Current=20mA,FWHM=',num2str(f1),'nm'],['Current=30mA,FWHM=',num2str(f2),'nm'],['Current=40mA,FWHM=',num2str(f3),'nm']);

