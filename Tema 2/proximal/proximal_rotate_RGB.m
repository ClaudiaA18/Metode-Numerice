function out = proximal_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica Interpolarea Proximala pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    canal_red = img(:,:,1);

    % TODO: Extrage canalul verde al imaginii.
    canal_green = img(:,:,2);

    % TODO: Extrage canalul albastru al imaginii.
    canal_blue = img(:,:,3);

    % TODO: Aplica rotatia pe fiecare canal al imaginii.
    canal_red=proximal_rotate(canal_red, rotation_angle);
    canal_green=proximal_rotate(canal_green, rotation_angle);
    canal_blue=proximal_rotate(canal_blue, rotation_angle);

    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.
     out=cat(3,canal_red,canal_green,canal_blue);

endfunction
