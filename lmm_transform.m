function [ lmm ] = lmm_transform(ms, pan)
lmm = ms;
h=fspecial('average',[3,3]);
sca=imfilter(ms, h);
sga=imfilter(pan, h);
for i=1:size(ms,1)
for j=1:size(ms,2)
for k=1:size(ms,3)
lmm(i,j,k) = pan(i,j)*(sca(i,j,k)/sga(i,j));
end
end
end
imtool(lmm, []);
end