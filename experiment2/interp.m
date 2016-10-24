%(c)Teren Liu(teren.liu@hit.edu.cn). Pubished under BSD license.
function y=interp(X,Y,x)
%function interp, X,Y:original X sample data. x, the data you want to interplation.
% use the the piecewise linear interpolation method to give out the result.
[a,b]=length(X);
if a>b
  X=trans(X);
end
[a,b]=length(Y);
if a>b
  Y=trans(Y);
end
% these 4 lines intense to make sure the X,Y is column vector. 
temp=sortrows([X Y]);
X=temp(:,1),Y=temp(:,2);
y=x,l=length(x),n=length(X);
for i=1:l
	[ax,ay,v]=find(X<=x,1,'last');
	%[bx,by,vb]=find(X>=x,1,'first');
	l0=( x(i)-X(ax+1) )/( X(ax)-X(ax+1) );
	l1=( x(i)-X(ax) )/(X(ax+1)-X(ax) );
	y(i)=l0*Y(ax)+l1*Y(ax+1);
end
