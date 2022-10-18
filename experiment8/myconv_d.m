function y = myconv( x,h )
%MY_CONV 重写MATLAB内置卷积函数conv()
%   function y = my_conv( x,h )用来计算y(n) = h(n)*x(n)的卷积
nx = length(x);
nh = length(h);
y = zeros(1,nx+nh-1);
for index = 1:nx
    indexSum = x(index)*h;
    y(1,index:index+nh-1) = y(1,index:index+nh-1)+indexSum;
end
 
end