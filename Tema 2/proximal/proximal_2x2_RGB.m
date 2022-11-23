function out = proximal_2x2_RGB(img, STEP = 0.1)
    % ==============================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 definita img cu puncte intermediare echidistante.
    % img este o imagine colorata RGB -Red, Green, Blue.
    % =============================================================================================

    % TODO: Extrage canalul rosu al imaginii.
    canal_red = img(:,:,1);

    % TODO: Extrage canalul verde al imaginii.
    canal_green = img(:,:,2);

    % TODO: Extrage canalul albastru al imaginii.
    canal_blue = img(:,:,3);

    % TODO: Aplic? functia proximal pe cele 3 canale ale imaginii.
    canal_red=proximal_2x2(canal_red,STEP);
    canal_green=proximal_2x2(canal_green,STEP);
    canal_blue=proximal_2x2(canal_blue,STEP);

    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.
    out=cat(3,canal_red,canal_green,canal_blue);

endfunction
