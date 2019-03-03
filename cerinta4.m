% Mirea Teodor-Adrian, 313CA

function [A_k S] = cerinta4(image, k)
  A = double(imread(image));
  [m, n] = size(A);
  
  % Se calculeaza media pentru fiecare linie din A.
  for i = 1: m
    miu(i,1) = sum(A(i, :))/n;
  endfor
  
  % Se actualizeaza liniile din A.
  for i = 1: m
    A(i, :) = A(i, :) .- miu(i);
  endfor
  
  % Se construieste matricea Z si i se calculeaza valorile proprii.
  Z = 1/(n-1) * A * A';
  [V S] = eig(Z);
  
  % Se formeaza spatiul k-dimensional al componentelor principale si se
  % calculeaza proiectia lui A in acest spatiu.
  W = V(:, 1:k);
  Y = W' * A;
  
  % Se aproximeaza matricea A.
  A_k = W*Y + miu;
endfunction