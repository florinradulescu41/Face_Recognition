function [Ak S] = task4(image, k)
  
  A = double(imread(image)); %citesc A matrice de pixeli
  [m n] = size(A);
  miu = zeros(m);

  for i = 1:m
    
    for j = 1:n
      
      miu(i,1) = miu(i, 1) + A(i, j)/n;
      
    endfor
  
  endfor
  
  for j=1:m
    
    A(j, 1:n) = A(j, 1:n) - miu(j, 1);
    
  endfor
  
  Z = A * (A'/(n-1));
  [V S] = eig(Z);
  W(1:m, 1:k) = V(1:m, 1:k);
  Y = W' * A;
  Ak = (W * Y) + miu(1:m, 1);
  
endfunction
