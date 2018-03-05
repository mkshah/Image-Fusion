function [ hsv ] = hsv_transform(ms, pan)
hsv = ms;
for i=1:size(ms,1)
for j=1:size(ms,2)
Iv1v2 = [0.577 0.577 0.577; -0.408 -0.408 0.816; -0.707 0.707 1.703]*[double(ms(i,j,1)) ; double(ms(i,j,2)) ; double(ms(i,j,3))];
Iv1v2(1,1) = pan(i,j);
inv = [0.577 -0.408 -0.707; 0.577 -0.408 -0.816; 0.577 0.816 0]*Iv1v2;
hsv(i,j,1)=inv(1,1);
hsv(i,j,2)=inv(2,1);
hsv(i,j,3)=inv(3,1);
end
end
imtool(hsv);
end