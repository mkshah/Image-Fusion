function [ pca ] = pca_transform(ms, pan)
pca = ms;
for i=1:size(ms,1)
for j=1:size(ms,2)
PPc123 = [1/3 1/3 1/3; 1/2 0 -1/2; -1/4 1/2 -1/4]*[double(ms(i,j,1)) ; double(ms(i,j,2)) ; double(ms(i,j,3))];
PPc123(1,1) = pan(i,j);
inv = [1 1 -2/3; 1 0 4/3; 1 -1 -2/3]*PPc123;
pca(i,j,1)=inv(1,1);
pca(i,j,2)=inv(2,1);
pca(i,j,3)=inv(3,1);
end
end
imtool(pca);
end