function [x1 y1 x2 y2] = surrounding_points(n, m, x, y)

    x1 = floor(x);
    x2 = floor(x) + 1;
    y1 = floor(y);
    y2 = floor(y) + 1;

    if y2 > m
      y2 = m;
    endif

    if x2 > n
      x2 = n;
    endif

endfunction
