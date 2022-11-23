function R = Algebraic(nume, d)
	% Functia care calculeaza vectorul PageRank folosind varianta algebrica de calcul.
	% Intrari: 
	%	-> nume: numele fisierului in care se scrie;
	%	-> d: probabilitatea ca un anumit utilizator sa continue navigarea la o pagina urmatoare.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.
  
  filein = fopen(nume, "r");
  N = fscanf(filein, " %f ", 1);

  A = zeros(N); %matricea de adiacenta
  K = zeros(N); %matricea diagonala

  %creez matricea de adiacenta 
  for i = 1 : N
    nod = fscanf(filein, " %f ", 1);
    nrnod =  fscanf(filein, " %f ", 1);
    for j = 1 : nrnod
         vecin = fscanf(filein, " %f ", 1);
         if nod ~= vecin 
             A(nod, vecin) = 1;
             K(i , i) = K(i , i) + 1;      
         end
    end
  end

  %verific ca elementele de pe diagonala sa fie nule 
  for i = 1 : N
      A(i, i) = 0;
  end

  %initializez vectorul L(i)
      L(1 : N) = 0;
  
  %calculez numarul de linkuri de pe o anumita pagina i
  for i = 1 : N
    for j = 1 : N
      if A(i,j) == 1 && i ~= j
        L(i) = L(i) + 1;
      end
    end
  end

  %calculez matricea stochastica
  M = A;
  for i = 1 : N
    for j = 1 : N
      if M(i,j) == 1 && i ~= j
        M(i,j) = M(i,j) / L(i);
      end
    end
  end
  
  %aplic algoritmul pentru a calcula vectorul R 
  I = eye(N);
  R = PR_Inv( I - d * transpose(M)) * ((1 - d) / N) * ones(N , 1);
  
end