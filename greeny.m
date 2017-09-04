function [ b ] = greeny( a )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    a=double(a); 
[row col dim]=size(a); 
        
green=a(:,:,2);     %%this will give grey level scale image of the green plane  

%to display invidual color store them as 24-bit image 
 
plane=zeros(row,col); 
 %%Concatenate arrays along specified dimension 
GREEN= cat(3,plane,green,plane); 

b = uint8(GREEN);
end

