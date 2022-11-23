## Girnita Alexandra Claudia ##
## 312CC ##
 
Tema 2 - Metode Numerice - Interpolare aplicata pe imagini

Timp de lucru: aprox. 5-6 ore

Interpolare Bicubica:
-> bicubic_coef: defineste cele 3 matrici cu ajutorul formulelor prezentate in pdf, 
                 astfel prima si a3a sunt cele deja definite, iar pentru cea din 
                 mijloc folosim 4 for-uri pentru a o construi prin intermediul 
                 indicilor y1,x1,y2,x2, interschimbarea dintre x si y fiind 
                 necesara in implemenatare
-> bicubic_resize: redimensioneaza imaginea alb-negru de dimensiune mxn in pxq
-> bicubic_resize_RGB: redimensioneaza imaginea RGB de dimensiune mxn in pxq
-> fx, fy, fxy: s-au folosit formulele prezentate in pdf pentru a calcula derivatele
-> precalc_d: creeaza precalculeaza matricile Ix, Iy si Ixy ce contin derivatele fx, fy,
              fxy ale imaginii I pentru fiecare pixel al acesteia
-> surrounding_points: o definim pentru a gasi cele 4 puncte ce inconjoara ul al 5lea punct

Interpolare Proximala:
-> proximal_coef: calculeaza coeficientii a pentru interpolarea proximala intre
		 patru puncte.
-> proximal_2x2: aplica interpolare nearest-neighbour pe imaginea alb-negru  2x2 f cu
                 puncte intermediare echidistante.
-> proximal_2x2_RGB: aplica interpolare nearest neighbour pe imaginea 2x2 img cu
                     puncte intermediare echidistante, unde img este o imagine
                     colorata RGB.
-> proximal_resize: redimensioneaza imaginea alb-negru de dimensiune mxn in pxq.
-> proximal_resize_RGB: redimensioneaza imaginea RGB de dimensiune mxn in pxq.
-> proximal_rotate: roteste imaginea alb-negru I de dimensiune m x n cu unghiul
                   rotation_angle, aplicand interpolarea proximala
-> proximal_rotate_RGB: roteste imaginea RGB de dimensiune m x n cu unghiul
                   rotation_angle, aplicand interpolarea proximala


Referinte web

1. https://graphicdesign.stackexchange.com/questions/26385/difference-between-none-linear-cubic-and-sinclanczos3-interpolation-in-
2. https://software.intel.com/content/www/us/en/develop/documentation/ipp-dev-reference/top/volume-2-image-processing/ipp-ref-interpolation-in-image-geometry-transform/lanczos-interpolation.html
3. https://en.wikipedia.org/wiki/Lanczos_algorithm
4. https://theailearner.com/2018/12/29/image-processing-bicubic-interpolation/
5. https://en.wikipedia.org/wiki/Lanczos_resampling
6. https://stackoverflow.com/questions/34198553/lanczos-interpolation-in-c
7. https://www.mathworks.com/help/visionhdl/ug/image-downsize.html
8. http://cmbbe2018.tecnico.ulisboa.pt/pen_cmbbe2018/pdf/WEB_PAPERS/CMBBE2018_paper_28.pdf
9. https://www.scss.tcd.ie/~koidlk/cs4062/ExampleKNN.pdf
10.https://web.stanford.edu/~boyd/papers/prox_algs/index.html
11.https://epfl-lts2.github.io/unlocbox-html/doc/prox/prox_l1_code.html
12.https://github.com/bodono/apg
13.https://www.stat.cmu.edu/~ryantibs/convexopt-F15/homework/homework2.pdf
