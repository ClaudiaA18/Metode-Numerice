function [R1, R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out
    
    filein = fopen(nume, "r");
    N = fscanf(filein, " %d ", 1);
    
    for i = 1 : N
        fgets(filein);
    end

    val1 = fscanf(filein, "%f", 1);
    val2 = fscanf(filein, "%f", 1);
    fclose(filein);
    
    nume_out = strcat(nume, ".out");
    fileout = fopen (nume_out, "w");
    fprintf(fileout, "%d\n\n", N);
    
    R1 = Iterative(nume, d, eps);
    fprintf(fileout, "%.6f\n", R1);
    fprintf(fileout, "\n");
    
    R2 = Algebraic(nume, d);
    fprintf(fileout, "%.6f\n", R2);
    fprintf(fileout, "\n");
    
    [R2_sortat, INDEX] = sort(R2, 'descend');
    
    for  i = 1 : N
        fprintf(fileout, "%d %d %f\n", i, INDEX(i), Apartenenta(R2_sortat(i), val1, val2));
    end   
end  