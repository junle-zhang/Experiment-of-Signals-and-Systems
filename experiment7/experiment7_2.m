clear;clc;
M=4;
A=zeros(M,M);
A(1:2,1:2)=[1,8;5,10];
for n=3:M
    for m=1:M-n+1
        A(n,m)=(A(n-2,m+1)*A(n-1,1)-A(n-2,1)*A(n-1,m+1))/A(n-1,1);
    end
end
A