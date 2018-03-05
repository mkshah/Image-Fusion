function [ lmvm ] = lmvm_transform(ms, pan)
lmvm = ms;
h=fspecial('average',[3,3]);
sca=imfilter(ms, h);
sga=imfilter(pan, h);
sclsd = stdfilt(ms, ones(11,11));
sglsd = stdfilt(pan, ones(11,11));
sglsd = uint8(sglsd);
sclsd = uint8(sclsd);
for i=1:size(ms,1)
for j=1:size(ms,2)
for k=1:size(ms,3)
lmvm(i,j,k) = (((pan(i,j) - sga(i,j))*sclsd(i,j,k))/sglsd(i,j)) + sca(i,j,k);
end
end
end
imtool(lmvm, []);
end