function y=det7()
  
I = imread('Figura.jpg');

% Përcaktoni matricën për përafrimin e derivatit të dytë
Matrica = [0,0,1,0,0;
           0,-1,0,1,0;
           -1,0,0,0,-1;
           0,1,0,-1,0;
           0,0,1,0,0];
           
% Përcaktoni filtrin laplasian
F = fspecial('laplacian', 0);

% Zbatoni matricën e përafrimit të derivatit të dytë në imazh
Foto = imfilter(I, Matrica);

% Aplikoni filtrin Laplasian në imazhin origjinal
laplace_filter = imfilter(I,F);

% Shfaqi imazhet
subplot(1,3,1), imshow(I), title("Foto origjinale");
subplot(1,3,2), imshow(Foto), title("Filtrimi");
subplot(1,3,3), imshow(laplace_filter), title("Filtrimi me Laplace");
  
endfunction
