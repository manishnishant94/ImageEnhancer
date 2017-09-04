function [ b ] = bluy( a )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    a=double(a); 
    [row col dim]=size(a); 
    
    blue=a(:,:,3);   %%this will give grey level scale image of the blue plane 

    %to display invidual color store them as 24-bit image 

    plane=zeros(row,col); 
     BLUE=cat(3,plane,plane,blue);
 b = uint8(BLUE);
end

