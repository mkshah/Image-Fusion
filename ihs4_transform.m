function [ ihs4 ] = ihs4_transform(ms, pan)
ihs4 = ms;
for i=1:size(ms,1)
for j=1:size(ms,2)
Iv1v2 = [1/3 1/3 1/3; 0.408 0.408 -0.816; 0.707 -0.707 0]*[double(ms(i,j,1)) ; double(ms(i,j,2)) ; double(ms(i,j,3))];
Iv1v2(1,1) = pan(i,j);
inv = [0.577 0.408 0.707; 0.577 0.408 -0.707; 0.577 -0.816 0]*Iv1v2;
ihs4(i,j,1)=inv(1,1);
ihs4(i,j,2)=inv(2,1);
ihs4(i,j,3)=inv(3,1);
end
end
imtool(ihs4);
end