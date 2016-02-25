suma([],0).
suma([C|R],N):-suma(R,N1), N is C+N1.

maximo([C|[]],C).
maximo([X|[Y|M]],X):-maximo([Y|M],Z),X>=Z.
maximo([X|M],Z):-maximo(M,Z),Z>X.

elementoEnP([C|R],1,C).
elementoEnP([C|R],P,E):-P1 is P-1, elementoEnP(R,P1,E1), E is E1.

elemento_par(X,List), posicion(X,List,Pos), divide(Pos,2,C,R), R=:=0.

posicion(X,[X|_],1).
posicion(X[_|R],Pos) :- posicion(X,R,Pos1), Pos is Pos1 + 1.

pEscalar([],[],0).
pEscalar([C|R],[C1|R1],P) :- pEscalar(R,R1,P1), P is C*C1+P1.

%TAREA
%Realizar las operaciones sobre conjuntos:
% Union(L1,L2,Lu).
% Interseccion(L1,L2,I).
% DiferenciaL1-L2(L1,L2,D)
