%(c)Teren Liu(teren.liu@hit.edu.cn), published under BSD license.
function [wl,I]=norm_shift(x)
%Function norm)shift, x:data, wl, wave lenth shifted, I:intensity normaled.
%%This program would give out the normaled and shifted  data of the 1550nm LD detection result.
[Ma_x,Mi]=max(x(3,:));
wl=1550-x(2,Mi)+x(2,:);
I=x(3,:)/Ma_x;



