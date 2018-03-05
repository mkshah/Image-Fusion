function [ mb ] = modi_brovey(ms, pan)
mb = ms;
for i=1:size(ms,1)
for j=1:size(ms,2)
for k=1:size(ms,3)
mb(i,j,k) = ms(i,j,k)/(ms(i,j,1)+ms(i,j,2)+ms(i,j,3));
mb(i,j,k) = mb(i,j,k)*pan(i,j);
end
end
end
imtool(mb);
end

