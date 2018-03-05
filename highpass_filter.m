function [ hpf ] = highpass_filter(ms, pan)
a = gaussian_high_pass(pan, 0.5);   % 'gaussian_high_pass.m' is provided in the same folder.
b = abs(a);
c = uint8(b);
imtool(c,[]);
hpf(:,:,1)=(ms(:,:,1)+c(:,:))/2;
hpf(:,:,2)=(ms(:,:,2)+c(:,:))/2;
hpf(:,:,3)=(ms(:,:,3)+c(:,:))/2;
imtool(hpf, []);
end