e = 3; 
n = 33; 
d = 7; 
N=256;
I=imread('F:\4-1\Computer Networks\Lab\fruits.jpg');
I=rgb2gray(I);
I=imresize(I,[N, N]);
subplot(2,2,1)
imshow(I)
title('Original Image')

I=double(I);
R=mod(I,16); 
%Remainder of the image
for i=1:N
    for j=1:N
        Q(i,j)=uint8((I(i,j)/16)-0.5);
        % Quiescent of the image
    end
end

Q=double(Q);
for i =1:N
    for j = 1:N
        Qe(i, j)=mod(Q(i,j)^e, n);
        Re(i, j)=mod(R(i,j)^e, n);
        %Decryption of image
        Qd(i, j)=mod((Qe(i,j))^d, n);
        Rd(i, j)=mod((Re(i,j))^d, n);
    end
end

Rec=Qd*16+Rd;
subplot(2,2,2)
imshow(uint8(Qe)-200)
title('Encrypted Quiescent Image')
subplot(2,2,3)
imshow(uint8(Re)-200)
title('Encrypted Remainder Image')
subplot(2,2,4)
imshow(uint8(Rec)+100)
title('Decrypted Image')

    