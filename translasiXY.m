a = imread('unm.jpg'); %membaca data gambar logo.jpg
b = a;  
[m n o] = size(b);   %membaca dimensi dari citra b dimana m adalah jumlah baris dan n adalah jumlah kolom
c = zeros(m,n,o);   % membuat matrik nol atau berisi nilai 0 dengan dimensi m x n x o atau m baris dan n kolom
c = uint8(c);       %konversi type double menjadi type uint8 (type data citra)
p = 10;            %nilai  translasi arah baris
q = 100;              % nilai translasi arah kolom
for K = 1:m
    for L = 1:n
        x = K+p;    %proses translasi arah baris x2 = x1 + p
        y = L+q;    %proses translasi arah kolom y2 = y1 + q dimana q adalah nilai pergeserannya
        c(x,y,:) = b(K,L,:); %proses pemberian koordinat baru untuk seluruh intensitas citra
    end
end
d = c(1:m,1:n,:);    %menyesuaikan dimensi citranya
figure(1);
imshow(d)
