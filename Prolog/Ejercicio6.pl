%Obtener el nesimo elemento de una lista.%
%? obtener(3,[1,3,4,6,8],X).% 
% X=4.%


%Calcular la longitud de una lista%
%? Longitud([1,2,3,4,8],X)%
% X=5%


obtenerElemento(1,[L|R],L).
obtenerElemento(X,[L|R],E):-X1 is X-1, obtenerElemento(X1,R,E1), E is E1.

longitud([],0).
longitud([L|R],C):-longitud(R,C1), C is C1+1.

imprimir([L|[]]):-write(L).
imprimir([L|R]):-write(L), imprimir(R).

eliminarOcurrencia(X,[],[]).
eliminarOcurrencia(X,[X|R],L):-eliminarOcurrencia(X,R,L).
eliminarOcurrencia(X,[Y|R],[Y|L]):-eliminarOcurrencia(X,R,L).

penultimo([A|[B|[]]],A).
penultimo([_|R],A):-penultimo(R,A).

iguales([C|[]]).
iguales([C|[R|R2]]):-C==R, iguales([R|R2]).