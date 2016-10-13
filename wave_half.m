%Teren Liu(teren.liu@hit.edu.cn) published under BSD license.
function y=wave_half(wl,I)
%wl: wave length, I:intensity.
%this function will calculate the FWHM of the wave.
[Max_I,index]=max(I);
t=abs(I-0.5);
d1=min(t(1:index));
d2=min(t(index:end));
y=wl(find(t==d2))-wl(find(t==d1));
