function a = proximal_coef(f, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii a pentru Interpolarea Proximala intre punctele
    % (x1, y1), (x1, y2), (x2, y1) si (x2, y2).
    % =========================================================================

    % TODO: Calculeaza matricea A.
    A=[1 x1 y1 x1*y1;1 x1 y2 x1*y2; 1 x2 y1 x2*y1; 1 x2 y2 x2*y2];

    % TODO: Calculeaza vectorul b.
    b=[f(y1,x1); f(y2,x1); f(y1,x2); f(y2,x2)];

    % TODO: Calculeaza coeficientii.
    a = inv(A) * double(b);

endfunction
