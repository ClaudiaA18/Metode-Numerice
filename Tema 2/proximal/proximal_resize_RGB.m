function out = proximal_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel �nc�t aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    canal_red = img(:,:,1);

    % TODO: Extrage canalul verde al imaginii.
    canal_green = img(:,:,2);

    % TODO: Extrage canalul albastru al imaginii.
    canal_blue = img(:,:,3);

    % TODO: Aplica functia proximal pe cele 3 canale ale imaginii.
    canal_red = proximal_resize(canal_red,p,q);
    canal_green = proximal_resize(canal_green,p,q);
    canal_blue = proximal_resize(canal_blue,p,q);

    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.
    out = cat(3,canal_red,canal_green,canal_blue);

endfunction
