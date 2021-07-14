function A_k = task1(image, k)
  
  A = double(imread(image)); %citesc A matrice de pixeli
  
  [U S V] = svd(A); %aflu U, S, V
  
  [m n] = size(A); 
  
  U_k = U(1:m, 1:k); %pastrez doar ce conteaza din U, S, V
  S_k = S(1:k, 1:k);
  V_k = V(1:n, 1:k);
  
  A_k = U_k * S_k * V_k'; %calculez A_k
  
endfunction