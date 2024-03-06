I=imread('F:\4-1\Computer Networks\Lab\fruits.jpg');
I1=I(:,:,1); %red plate
I2=I(:,:,2); %green plate
I3=I(:,:,3); %blue plate
subplot(2,2,1)
imshow(I1)
title('Red plate')
subplot(2,2,2)
imshow(I2)
title('Green plate')
subplot(2,2,3)
imshow(I3)
title('Blue plate')
Y=cat(3,I1,I2,I3);
subplot(2,2,4)
imshow(Y)
title('RGB image')