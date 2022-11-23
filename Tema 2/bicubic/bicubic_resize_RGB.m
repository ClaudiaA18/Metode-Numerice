function out = bicubic_resize_RGB(img, p, q)
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

    % TODO: Aplica functia bicubic pe cele 3 canale ale imaginii.
    canal_red = bicubic_resize(canal_red,p,q);
    canal_green = bicubic_resize(canal_green,p,q);
    canal_blue = bicubic_resize(canal_blue,p,q);

    % TODO: Formeaza imaginea finala concatenand cele 3 canale de culori.
    out = cat(3,canal_red,canal_green,canal_blue);

endfunction
