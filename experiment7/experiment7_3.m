clear;
clc;
M=5;
A=zeros(M,M);
A(1:2,1:3)=[1,20,1;9,1,0];
for n=3:M
    for m=1:M-n+1
        A(n,m)=(A(n-2,m+1)*A(n-1,1)-A(n-2,1)*A(n-1,m+1))/A(n-1,1);
    end
end
A
