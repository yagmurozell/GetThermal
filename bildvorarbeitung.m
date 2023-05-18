% Görüntüyü yükleme
image = imread('C:\Users\z004c9ma\Desktop\Annotationbga2.jpg');

% Görüntüyü grayscale'e dönüştürme
grayImage = rgb2gray(image);

% Kontrastı artırma
enhancedImage = imadjust(grayImage);

% Gürültüyü azaltma
denoisedImage = medfilt2(enhancedImage);

% Histogram eşitleme
equalizedImage = histeq(denoisedImage);

% Sonucu görüntüleme
figure;
subplot(2, 2, 1), imshow(image), title('Orjinal Görüntü');
subplot(2, 2, 2), imshow(enhancedImage), title('Artırılmış Kontrast');
subplot(2, 2, 3), imshow(denoisedImage), title('Azaltılmış Gürültü');
subplot(2, 2, 4), imshow(equalizedImage), title('Histogram Eşitleme');

% Sonucu kaydetme
imwrite(equalizedImage, 'sonuc.png');
