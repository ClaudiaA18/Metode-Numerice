function R = Iterative(nume, d, eps)
	% Functia care calculeaza matricea R folosind algoritmul iterativ.
	% Intrari:
	%	-> nume: numele fisierului din care se citeste;
	%	-> d: coeficentul d, adica probabilitatea ca un anumit navigator sa continue navigarea (0.85 in cele mai multe cazuri)
	%	-> eps: eruarea care apare in algoritm.
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
  %matricea M reprezinta multimea paginilor 
  %din care se poate ajunge la pagina A printr-un singur click  
  M = A;
  for i = 1 : N
    for j = 1 : N
      if M(i,j) == 1 && i ~= j
        M(i,j) = M(i,j) / L(i);
      end
    end
  end
  
  % initializarea lui R0 pentru pasul initial
  R0(1:N, 1) =  1/N;
  ok = 1;

  % calcularea vectorului R pana cand eroarea obtinuta este mai mare
  % decat valoarea variabilei eps
   R = ones(N);
   while ok  
    % calcularea vectorului R in functie de solutia precedenta
    R = d * transpose(M) * R0  + ((1 - d) / N) * (ones(N,1));
    
    % verificarea erorii
    if norm(R-R0) >= eps
      R0 = R;
    else
     ok = 0;
     R = R0;
    end

    if ok == 0
      break
    end
  end
end