% homework #5 SVD for Image Compression

grayImage = double(rgb2gray(imread('flower.bmp')));
s = svd(grayImage);
% part(a): output the top 10 singular values
disp(s(1:10));
figure('Name', 'Original Gray Image');
imshow(uint8(grayImage));

[U, S, V] = svd(grayImage);
r = rank(S);
disp(['rank of S: ', int2str(r)]);

% part(b): let k = 10, 50, 100
k10img = svdImage(10, U, S, V);
k50img = svdImage(50, U, S, V);
k100img = svdImage(100, U, S, V);

figure('Name', 'K=10');
imshow(uint8(k10img));

figure('Name', 'K=50');
imshow(uint8(k50img));

figure('Name', 'K=100');
imshow(uint8(k100img));

% svdImage function
function img = svdImage(r, U, S, V)
    U1 = U(:, 1:r);
    S1 = S(1:r, 1:r);
    V1 = V';
    V1 = V1(1:r,:);
    img = U1 * S1 * V1;
end
