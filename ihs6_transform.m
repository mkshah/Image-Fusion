function [ ihs6 ] = ihs6_transform(ms, pan)
ihs6 = ms;
for i=1:size(ms,1)
for j=1:size(ms,2)
Iv1v2 = [1/3 1/3 1/3; -0.236 -0.236 0.236; 0.707 -0.707 0]*[double(ms(i,j,1)) ; double(ms(i,j,2)) ; double(ms(i,j,3))];
Iv1v2(1,1) = pan(i,j);
inv = [1 -0.707 0.707; 1 -0.707 -0.707; 1 1.414 0]*Iv1v2;
ihs6(i,j,1)=inv(1,1);
ihs6(i,j,2)=inv(2,1);
ihs6(i,j,3)=inv(3,1);
end
end
imtool(ihs6);
end