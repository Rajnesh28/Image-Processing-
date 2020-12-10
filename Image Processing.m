
%% ------------- Task 1 -------------
%Read Image%%
%%Convert From uint8 to double%%
X = imread('4.1.04.tiff');
X = double(X);

%Extend Image%%
Y = wextend('2D', 'sym', x, [1,1]);

%%Assign a Vector for size of image Y%
[r,c,p] = size(Y);

for k = 1:p
    for i = 2:r-1
        for j = 2:c-1
            Y(i,j,p) = (Y(i-1,j,p) +Y(i+1,j,p)+Y(i,j-1,p)+Y(i,j+1,p)+Y(i-1,j-1,p)+Y(i-1,j+1,p)+Y(i+1,j-1,p)+Y(i+1,j+1,p)+Y(i,j,p));./9;
        end
    end
end

X1 = Y(k,i,j);
X1 = uint(X1);
figure, imshow('X1')


X = uint(X);
imshow('X')

%% ------------- Task 2 -------------
X = imread('4.1.04.tiff');
X = double(X);
Y = wextend('2D', 'sym', X, [2,2]);
[r,c,p] = size(Y);

for k = 1:p
    for i = 3:r-2
        for j = 3:c-2
            Y(i,j,p)=(Y(i-1,j,p) +Y(i+1,j,p)+Y(i,j-1,p)+Y(i,j+1,p)+Y(i-1,j-1,p)+Y(i-1,j+1,p)+Y(i+1,j-1,p)+Y(i+1,j+1,p)+Y(i,j,p)+Y(i+2,j+2,p)+Y(i+2,j-2,p)+Y(i+2,j-1,p)+Y(i+2,j+1,p)+Y(i+2,j,p)+Y(i-2,j+2,p)+Y(i-2,j-2,p)+Y(i-2,j+1,p)+Y(i-2,j-1,p)+Y(i-2,j,p)+Y(i-1,j-2,p)+Y(i-1,j+2,p)+Y(i+1,j-2,p)+Y(i+1,j+2,p)+Y(i,j-2,p)+Y(i,j+2,p))./25;
        end
    end
end

X2=Y(2:r-1,2:c-1,1:p);
X2=uint8(X2);
X=uint8(X);
figure;
imshow(X);
title('Original Image');
figure,
imshow(X2);
title('Filtered Image')

%% ------------- Task 3 -------------
X = imread('4.1.04.tiff');
X = double(X)
%Built In Function For 3x3%
H = fspecial('average',[3 3]);
X3_1 = imfilter(X, H, 'symmetric', 'same');
X3_1 = uint8(X3_1);
figure, imshow(x3_1)

%Built In Function For 5x5%
H = fspecial('average',[5 5]);
X3_2 = imfilter(X, H, 'symmetric', 'same');
X3_2 = uint8(X3_2);
figure, imshow(x3_2)

%Gaussian%
H =fspecial('gaussian', [5 5], 2);
X3_3 = imfilter(X, H, 'symmetric', 'same');
figure, imshow(X3_3)

%% ------------- Task 4 -------------

