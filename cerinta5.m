% Mirea Teodor-Adrian, 313CA

function cerinta5()
  img = ['2'; '3'];
  % Se reprezinta cele 4 grafice pentru cele 2 imagini.
  for x = 1:2
    image = strcat('in/images/image', img(x), '.gif');
    A = double(imread(image));
    [m, n] = size(A);
    k = [1:min(m,n)];
    [A_k S] = cerinta3(image, min(m,n));
    
    %---1: Se formeaza vectorul valorilor singulare generate de cerinta3.
    R1 = diag(S); %valorile sunt deja in ordine descrescatoare
    
    %---2&3&4
    for i = 1: length(k)
      [A_k S] = cerinta3(image, k(i));
      %--2: Se calculeaza informatia data de primele k valori singulare.
      S_k = S(1:k(i), 1:k(i));
      R2(i) = sum(diag(S_k)) / sum(diag(S));
      %--3: Se calculeaza eroarea aproximarii pentru matricea A.
      R3(i) = sum(sum((A-A_k).^2)) / (m*n);
      %--4: Se calculeaza rata de compresie a datelor.
      R4(i) = (2*k(i) + 1) / n;
    endfor
    
    % Se reprezinta graficele.
    reprezentare(img(x), k, R1, R2, R3, R4);
  endfor
endfunction
