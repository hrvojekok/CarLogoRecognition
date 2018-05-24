
clear all;
close all;
clc;

newPic=imread('Volkswagen-logo.png');
newPicGray=rgb2gray(newPic);
filtered=medfilt2(newPicGray,[1 1]);
cannizirana=edge(filtered, 'canny');
mn=[3 3];
SE = strel('rectangle',mn);

imDilated= imdilate(cannizirana,SE);
%noHoles=imfill(imDilated,'holes');
noHoles=bwmorph(imDilated,'remove');
imshow(noHoles);








filtered=medfilt2(newPicGray,[1 1]);
cannizirana=edge(filtered, 'canny');
mn=[3 3];
SE = strel('rectangle',mn);

imDilated= imdilate(cannizirana,SE);
%noHoles=imfill(imDilated,'holes');
logoImage=bwmorph(imDilated,'remove');


figure;
imshow(logoImage);

title('Image of a Pads box');

originalCarImage = F;
newPicGray = rgb2gray(originalCarImage);
filteredCar=medfilt2(newPicGray,[6 6]);
canniziranaCar=edge(filteredCar, 'canny');
mn=[3 3];
SE = strel('rectangle',mn);

imDilated= imdilate(canniziranaCar,SE);
%noHoles=imfill(imDilated,'holes');
carImage=bwmorph(imDilated,'remove');



