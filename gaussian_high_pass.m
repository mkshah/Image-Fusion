% Note : This is not an Image Fusion Algorithm. This Function is used in 'highpass_filter.m' which is an Image Fusion Algorithm.  
function [ a ] = gaussian_high_pass(im1, rad)                        
f = fftshift(fft2(im1));
[r c] = size(im1);
d = zeros(r,c);
filter = zeros(r,c);
for i=1:r
    for j=1:c
        d(i,j)=sqrt((i-(r/2)).*(i-(r/2))+(j-(c/2)).*(j-(c/2)));
        e = (d(i,j).*d(i,j))/(-2)*rad*rad;
        filter(i,j) = exp(e);   
    end
end
filter = 1- filter;
im2 = (f.*filter);
imr = ifft2(ifftshift(im2));
a = imr;
imtool(im1);
imtool(abs(imr),[]);
subplot (1 ,3 ,1);
imshow(im1);
title('Original');
subplot (1 ,3 ,2);
imshow(filter);
title('filter');
subplot (1 ,3 ,3);
imshow(abs(imr),[]);
title('Filtered Image');
end