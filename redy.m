function [ b ] = redy( a )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
a=double(a); 
[row col dim]=size(a); 
 
red=a(:,:,1);         %%this will give grey level scale image of the red plane 

 
%to display invidual color store them as 24-bit image 
 
plane=zeros(row,col); 
RED= cat(3,red,plane,plane);  %%Concatenate arrays along specified dimension 

b =uint8(RED);

end

