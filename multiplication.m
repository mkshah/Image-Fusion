function [ mul ] = multiplication(ms, pan)
mul = ms;
for i=1:size(ms,1)
for j=1:size(ms,2)
for k=1:size(ms,3)
mul(i,j,k) = round(power(1*1*(double(ms(i,j,k)))*(double(pan(i,j))),0.5));
end
end
end
imtool(mul);
end

