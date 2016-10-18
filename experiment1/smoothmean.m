%(c) Teren Liu(teren.liu@hit.edu.cn. published under BSD license.
function y=smoothmean(y0)
%function smoothmean. y0::data. a small program which would use the 3-point weight average smooth method to smooth the data.
n=lenth(y0);
y=y0;
for i=2:(n-1)
	y(i-1)=( 5*y(i-1)+2*y(i)-y(i+1) )/6;
	y(i)=( y(i-1)+y(i)+y(i+1))/3;
	y(i+1)=( -y(i-1)+2*y(i)+5*y(i+1) )/6;
end
