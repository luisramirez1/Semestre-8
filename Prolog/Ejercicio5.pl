primero([A|R],A).
%?.- primero([a,b,c],A].
     A=a%

ultimo([A|[],A).
ultimo([ |R],A) :- ultimo(R,A).

pertenece(X,[X|R].
pertenece(X,[Y|R] :- pertenece(X,R).

ocurrencias(X,[X|[]],1).
ocurrencias(X,[Y|[]],0).
ocurrencias(X,[X|Re],R) :- ocurrencias(X,Re,R1), R is R1+1.
ocurrencias(X,[Y|Re],R) :- ocurrencias(X,Re,R).

%Tarea%
%Insertar elementos al inicio de una lista%
insertaInicio(X,L,Z) :- Z is [X|L].

%Insertar elementos al final de una lista%
insertaFinal(X,L,Z) :- L=[], Z is [X].
insertaFinal(X,[L|Lr],Z) :- insertaFinal(X,Lr,Z1), Z is [L|Z1].
