%(c)Teren Liu(teren.liu@hit.edu.cn). Pubished under BSD license.
function y=errorc(x,w)
%function errorc. x:data, w: error window you want.
y=x(1:2);
n=length(x);
for i=3:n
	u=x(i-1)+x(i-1)-x(i-2);
	if(abs(x(i)-u)<w
		y=[y,x(i)];
	else 
		y=[y,u];
	end
end

