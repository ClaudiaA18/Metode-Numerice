function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaz? coeficien?ii de Interpolare Bicubic? pentru 4 puncte al?turate
    % =========================================================================

    Mat_Aux=zeros(4,4);
    aux=[y1,x1,y2,x2];

    % TODO: Calculeaz? matricile intermediare.
    A1=inverse([1 0 0 0; 1 1 1 1; 0 1 0 0; 0 1 2 3]);
    A2=transpose(A1);


    for i = 0 : 1
        for j = 0 : 1
            Mat_Aux(i+1,j+1)=f(aux(1,i*2+1),aux(1,j*2+2));
        endfor
     endfor

     for i = 0 : 1
        for j = 0 : 1
            Mat_Aux(i+1,2+j+1)=Ix(aux(1,i*2+1),aux(1,j*2+2));
        endfor
     endfor

     for i = 0 : 1
        for j = 0 : 1
            Mat_Aux(2+i+1,j+1)=Iy(aux(1,i*2+1),aux(1,j*2+2));
        endfor
     endfor

     for i = 0 : 1
        for j = 0 : 1
            Mat_Aux(2+i+1,2+j+1)=Ixy(aux(1,i*2+1),aux(1,j*2+2));
        endfor
     endfor

    % TODO: Converte?te matricile intermediare la double.
    A1=double(A1);
    A2=double(A2);
    Mat_Aux=transpose(double(Mat_Aux));

    % TODO: Calculeaz? matricea final?.
    A=A1*Mat_Aux*A2;

endfunction
