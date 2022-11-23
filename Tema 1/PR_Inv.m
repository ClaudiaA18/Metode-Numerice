function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Se va inlocui aceasta linie cu descrierea algoritmului de inversare
	
  % extragerea dimensiunilor matricii A
  N = size(A);
  
  % initializarea matricilor Q si R cu 0-uri
  Q = zeros(N);
  R = zeros(N);
  
  % determinarea matricilor Q si R folosind algoritmul 
  % Gram-Schmidt modificat
  for i = 1 : N
    R(i,i) = norm(A(:,i),2);
    Q(:,i) = A(:,i) / R(i,i);
    for j = i+1 : N
      R(i,j) = transpose(Q(:,i)) * A(:,j);
      A(:,j) = A(:,j) - Q(:,i) * R(i,j);
    end
  end
 
  % B - inversa matricei A
  B = zeros(N);
  
  % initializarea matricei identitate
  I = eye(N);
   
  % rezolvarea sistemelor superior triunghiulare obtinute 
  for i = 1 : N
    B(:,i) = SST(R, transpose(Q) * I(:, i));
  end
end
