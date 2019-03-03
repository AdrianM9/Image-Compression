% Mirea Teodor-Adrian, 313CA

function reprezentare(image, k, R1, R2, R3, R4)
  figure();
  
  % Graficul 1
  subplot(2,2,1);
  plot(R1);
  title_text = strcat("Valorile singulare (imaginea ", image, ")");
  title(title_text, 'fontsize', 16);
  xlabel('k', 'fontsize', 14);
  ylabel('S_{kk}', 'fontsize', 14);
  
  % Graficul 2
  subplot(2,2,2);
  plot(k, R2);
  title_text = strcat("Informatia data de primele k valori singulare ",
  " (imaginea ", image, ")");
  title(title_text, 'fontsize', 16);
  xlabel('k', 'fontsize', 14);
  ylabel('Informatie', 'fontsize', 14);
  
  % Graficul 3
  subplot(2,2,3);
  plot(k, R3);
  title_text = strcat("Eroarea aproximarii (imaginea ", image, ")");
  title(title_text, 'fontsize', 16);
  xlabel('k', 'fontsize', 14);
  ylabel('Eroare', 'fontsize', 14);
  
  % Graficul 4
  subplot(2,2,4);
  plot(k, R4);
  title_text = strcat("Rata de compresie a datelor (imaginea ", image, ")");
  title(title_text, 'fontsize', 16);
  xlabel('k', 'fontsize', 14);
  ylabel('Rata de compresie', 'fontsize', 14);
endfunction