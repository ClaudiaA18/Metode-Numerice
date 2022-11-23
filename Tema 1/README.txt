Girnita Alexandra Claudia 312CC
 
Tema 1 - Metode Numerice - PageRank

Timp de lucru: 5-7ore

Iterative:
	- citesc datele din fisierele de intrare
        - initializez cu o matricea de adiacenta si cea diagonala  
        - creez matricea de adiacenta prin verificarea vecinilor fiecarui nod 
        - initializez vectorul de linkuri de pe o pagina cu indexul i
	- calculat matricea stochastica pentru a evita folosirea comenzii de inversare
        - matricea M reprezinta multimea paginilor din care se poate ajunge la pagina A printr-un singur click  
	- calculez vectorului R pana cand eroarea obtinuta este mai mare decat valoarea variabilei eps
        - intru in bucla while calculand de fiecare data vectorul R in functie de solutia precedenta , 
             pana ajung la precizia dorită
        - verificarea erorii:
             % daca eroarea obtinuta este mai mare decat valoarea variabilei eps
             % se continua procesul de determinare a lui R, R0 luand valoarea lui R
             % daca eroarea obtinuta este mai mica decat valoarea variabilei eps
             % variabila ok isi schimba valoarea si se va afisa ca si solutie a lui R anterior
             % daca contorul ok isi schimba valoarea, determinarea lui R se incheie

Algebraic:
	- folosesc un algoritm identic cu cel iterativ
	- am lasat 0  pe diagonala (matricea I), fiindca nu se ia in considerare link-ul catre ele
	  insasi
	- am folosit algoritmul Gram-Schimdt modificat din functia PR_Inv pentru a descompune in QR, am folosit 
	  algoritmul SST pentru calcularea ecuatiilor
        - in final am aflat inversa necesara la calcularea vectorul PR prin transpusa matricei stochastice


PageRank:
	- am apelat functiile descrise mai sus si am inscris numărul de pagini web 
	  analizate si rezultatele functiior in fisierul de tip nume".out"
	- am sortat vectorul rezultat la functia Algebraic
	- am scris numerele si indicii la care nod apartine gradul de apartenenta
	- am apelat functia Apartenenta care calculeaza gradul de apartenenta
	- si le am scris in fisier langa indicile nodului
	- am returnat vectorii calculati de functiile anterioare


Resurse Web

1. http://en.wikipedia.org/wiki/PageRank
2. http://en.wikipedia.org/wiki/Fuzzy logic
3. http://www.cs.huji.ac.il/ csip/CSIP2007-intro.pdf
4. https://neo4j.com/docs/graph-data-science/current/algorithms/page-rank/
5. https://www.geeksforgeeks.org/page-rank-algorithm-implementation/
6. Algoritmul Gram-Schmidt modificat: prezentat in materialele de curs puse la dispozitie.
7. Algoritmul de rezolvare SST: implementat pe baza modelului prezentat si des utilizat la/in laboratoare.\
8. comanda "sort" https://www.mathworks.com/help/matlab/ref/sort.html
9. https://personalpages.manchester.ac.uk/staff/yanghong.huang/teaching/MATH36032/html/labdemo16.html
10. https://www.geneseo.edu/~aguilar/public/assets/rw-2017/pagerank-notes-aguilar.pdf
11. https://blog.katastros.com/a?ID=01050-2618dbc6-5d56-4776-a470-0718c5ea7415
12. https://pure.tue.nl/ws/portalfiles/portal/91275069/Lukas_2014.pdf
13. https://www.math.umd.edu/~immortal/MATH401/book/ch_google_pagerank.pdf