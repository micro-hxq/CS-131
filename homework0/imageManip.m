%reads in the image, converts it to grayscale, and converts the intensities
%from uint8 integers to doubles. (Brightness must be in 'double' format for
%computations, or else MATLAB will do integer math, which we don't want.)
dark = double(rgb2gray(imread('u2dark.png')));

%%%%%% Your part (a) code here: calculate statistics
m = mean(mean(dark));
disp(['Average pixel value: ', num2str(m)])
maxval = max(max(dark));
disp(['Maximum pixel value: ', num2str(maxval)])
minval = min(min(dark));
disp(['Minimum pixel value: ', num2str(minval)])

%%%%%% Your part (b) code here: apply offset and scaling
scalefactor = 255/(maxval - minval);
fixedimg =(dark - minval)*scalefactor;

%displays the image
imshow(uint8(fixedimg));

%%%%%% Your part (c) code here: apply the formula to increase contrast,
% and display the image
contrasted = 2 * (fixedimg - 128) + 128;
imshow(uint8(contrasted));