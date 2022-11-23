function y = Apartenenta(x, val1, val2)
	% Functia care primeste ca parametrii x, val1, val2 si care calculeaza valoarea functiei membru in punctul x.
	% Stim ca 0 <= x <= 1
  
  % Calculez valoarea lui y, in functie de intervalul in care se afla x
  % princonditiile de coliniariatate
  if x >= 0 && x<val1
    y = 0;
  end
  if x > val2 && x <= 1
    y = 1;
  end
  if x >= val1 && x <= val2
    y =  (1 /(val2 - val1)) *x + val1/(val1-val2);
  end
end
	