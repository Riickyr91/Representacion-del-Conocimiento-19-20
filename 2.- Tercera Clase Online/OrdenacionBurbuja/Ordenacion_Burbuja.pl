%-------------------------------------------
%
% Ordenación en Burbuja 
% burbuja( +Lista, -R)
%
% es cierto si R unifica con una lista que contienen los elementos de
% Lista ordenados de menos a mayor utilizando el metodo de burbuja
%
% En este caso construimos la induccion no por el tamaño de la lista, 
% sino ordenando en cada paso la lista un poco mas
%
%-------------------------------------------

burbuja(Lista, Lista) :- ordenada(Lista).

burbuja( Lista, R2) :-
    append( Lista1, [E1, E2 | Lista2], Lista),
        E1 > E2, 
        append( Lista1, [E2, E1 | Lista2], R),
            burbuja(R, R2).

%-------------------------------------------
%
% Ordenada?
% ordenada( +Lista)
%
% es cierto si los elementos de Lista están ordenados de menor a mayor
%
%-------------------------------------------

ordenada([]).
ordenada([_]).
ordenada( [E1,E2|Resto]) :-
    E1 =< E2, ordenada( [E2|Resto]).