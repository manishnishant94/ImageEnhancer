function [ b ] = edgy( a )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
a=double(a); 
[row col]=size(a); 
w1=[1 0;-1 0]; 
w2=[1 -1;0 0]; 
for x=2:1:row-1; 
    for y=2:1:col-1; 
        a1(x,y)=w1(1)*a(x,y)+w1(2)*a(x,y+1)+w1(3)*a(x+1,y)+w1(4)*a(x+1,y+1); 
        a2(x,y)=w2(1)*a(x,y)+w2(2)*a(x,y+1)+w2(3)*a(x+1,y)+w2(4)*a(x+1,y+1); 
    end 
end 
 
a3=a1+a2; 

b=a3;

end

