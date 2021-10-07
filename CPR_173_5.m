for n=1:25
    image_{n} = imread(sprintf('%s.png',num2str(n)));
    G_{n} = rgb2gray(image_{n});
end

multi = cat(3,G_{1},G_{2:25});

F = fftn(multi);
S = abs(fftshift(F));
out = squeeze(mean(S,2));

figure;
imagesc(out)

figure;
subplot(2,2,1);
imagesc(abs(fftshift(F(:,:,5))));
subplot(2,2,2);
imagesc(abs(fftshift(F(:,:,6))));
subplot(2,2,3);
imagesc(abs(fftshift(F(:,:,7))));
subplot(2,2,4);
imagesc(abs(fftshift(F(:,:,8))));