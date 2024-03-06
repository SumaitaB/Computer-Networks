e = 3; 
n = 33; 
d = 7; %RSA parameters

y='JAHANGIRNAGAR'; %input string
z = double(y); %ASCII values
S=z-60; %to reduce size of the integer

for i=1:length(z)
    Encrypt(i)=mod(S(i)^e, n);
end

char(Encrypt) % encrypted string
Encrypt=double(Encrypt);

for j=1:length(z)
    Decrypt(j)=mod(Encrypt(j)^d, n);
end

Recover=char(Decrypt+60)