function [b] = shosho( a )

 
a=double(a);  
 
[row col dim]=size(a); 
w=[0 -1  0;-1 5 -1;0 -1  0]; %%Structuring Elements for smoothening%%make your own nd try 
 
 
red= a(:,:,1); 
green=a(:,:,2); 
blue=a(:,:,3); 
 
 
for x=2:1:row-1 
    for y= 2:1:col-1 
 
red_f(x,y)= w(1,1)*red(x-1,y-1)+w(1,2)*red(x-1,y)+w(1,3)*red(x-1,y+1)+... 
         w(2,1)*red(x,y-1)+w(2,2)*red(x,y)+w(2,3)*red(x,y+1)... 
         +w(3,1)*red(x+1,y-1)+w(3,2)*red(x+1,y)+w(3,3)*red(x+1,y+1); 
   
  
        green_f(x,y)= w(1,1)*green(x-1,y-1)+w(1,2)*green(x-1,y)+w(1,3)*green(x-1,y+1)+... 
         w(2,1)*green(x,y-1)+w(2,2)*green(x,y)+w(2,3)*green(x,y+1)... 
         +w(3,1)*green(x+1,y-1)+w(3,2)*green(x+1,y)+w(3,3)*green(x+1,y+1); 
      
     blue_f(x,y)= w(1,1)*blue(x-1,y-1)+w(1,2)*blue(x-1,y)+w(1,3)*blue(x-1,y+1)+... 
         w(2,1)*blue(x,y-1)+w(2,2)*blue(x,y)+w(2,3)*blue(x,y+1)... 
         +w(3,1)*blue(x+1,y-1)+w(3,2)*blue(x+1,y)+w(3,3)*blue(x+1,y+1); 
 
end 
end 
final=cat(3,red_f,green_f,blue_f); 
b = uint8(final);
end
