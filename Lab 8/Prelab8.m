h1 = [1 2 1];
h2 = [1 0 -1];
h3 = conv(h1,h1);
hA = h1*h1';
hB = h1*h2';
hC = h3'*h3;

size(hA)
size(hB)
size(hC)

A1 = zeros(16);
A1(5:11,5:11) = ones(7);

figure()
subplot(2,1,1)
mesh(A1);
y=conv2(hC, A1);

subplot(2,1,2)
mesh(y)
i1=imread('4.1.05.tiff');

size(i1)
imshow(i1)