function task5()
  
  A = double(imread('in/images/image3.gif'));
  B = double(imread('in/images/image4.gif'));
  
  %grafic 1
  
  [m1 n1] = size(A);
  k=[1:19 20:20:99 100:30:min(m1, n1)];
  [A_k S1] = task3('in/images/image3.gif', k);
  [m2 n2] = size(B);
  k=[1:19 20:20:99 100:30:min(m2, n2)];
  [B_k S2] = task3('in/images/image4.gif', k);
  vs1 = diag(S1);
  vs2 = diag(S2);

  subplot(4, 2, 1);
  plot(vs1);
  title("task 5, image3.gif, grafic 1");
  subplot(4, 2, 2);
  plot(vs2);
  title("task 5, image4.gif, grafic 1");  
  
  %grafic 2
  
  [m1 n1] = size(A_k);
  k=[1:19 20:20:99 100:30:min(m1, n1)];
  info1 = zeros(length(k), 1);
  
    sum1_1 = 0;
    sum2_1 = 0;
    for j=1:min(m1,n1)
      sum1_1 = sum1_1 + S1(j, j);
    endfor
    
    for i=1:length(k)
      for j=1:k(i)
      sum2_1 = sum2_1 + S1(j, j);
    endfor
    info1(i) = sum2_1/sum1_1;
    sum2_1=0;
  endfor
    
  subplot(4, 2, 3);
  plot(k, info1);
  title("task 5, image3.gif, grafic 2");
  
  [m2 n2] = size(B_k);
  k=[1:19 20:20:99 100:30:min(m2, n2)];
  info2 = zeros(length(k), 1);
  
    sum1_2 = 0;
    sum2_2 = 0;
    for j=1:min(m2,n2)
      sum1_2 = sum1_2 + S2(j, j);
    endfor
    
    for i=1:length(k)
      for j=1:k(i)
      sum2_2 = sum2_2 + S2(j, j);
    endfor
    info2(i) = sum2_2/sum1_2;
    sum2_2=0;
  endfor
    
  subplot(4, 2, 4);
  plot(k, info2);
  title("task 5, image4.gif, grafic 2");
  
  %grafic 3
  
  [m1 n1] = size(A);
  k=[1:19 20:20:99 100:30:min(m1, n1)];
  err1 = zeros(length(k), 1);
  for t=1:length(k)
    [A_k S1] = task3('in/images/image3.gif', k(t));
    sum3_1 = 0;
    for i=1:m1
      for j=1:n1
        sum3_1 = sum3_1 + (A(i, j)-A_k(i, j))*(A(i, j)-A_k(i, j));
      endfor
    endfor
    err1(t) = sum3_1 / (m1*n1);
  endfor
  subplot(4, 2, 5);
  plot(k, err1);
  title("task 5, image3.gif, grafic 3");
  
  [m2 n2] = size(B);
  k=[1:19 20:20:99 100:30:min(m2, n2)];
  err2 = zeros(length(k), 1);
  for t=1:length(k)
    [B_k S2] = task3('in/images/image4.gif', k(t));
    sum3_2 = 0;
    for i=1:m2
      for j=1:n2
        sum3_2 = sum3_2 + (B(i, j)-B_k(i, j))*(B(i, j)-B_k(i, j));
      endfor
    endfor
    err2(t) = sum3_2 / (m2*n2);
  endfor
  subplot(4, 2, 6);
  plot(k, err2);
  title("task 5, image4.gif, grafic 3");

  %grafic 4
  
  k=[1:19 20:20:99 100:30:min(m1, n1)];
  rcd1 = zeros(length(k), 1);
  for i=1:length(k)
    rcd1(i) = (2*k(i)+1)/n1;
  endfor

  subplot(4, 2, 7);
  plot(k, rcd1);
  title("task 5, image3.gif, grafic 4");
  
  k=[1:19 20:20:99 100:30:min(m2, n2)];
  rcd2 = zeros(length(k), 1);
  for i=1:length(k)
    rcd2(i) = (2*k(i)+1)/n2;
  endfor

  subplot(4, 2, 8);
  plot(k, rcd2);
  title("task 5, image4.gif, grafic 4");
  
endfunction