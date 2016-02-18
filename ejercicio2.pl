mujer(oam).
mujer(liz).
mujer(pat).
mujer(ann).
mujer(tom).
mujer(bob).
mujer(jim).

hermana(X,Y) :- progenitor(Z,X), progenitor(Z,Y), mujer(X).

abuela(X,Y) :- progenitor(X,Z), progenitor(Z,Y), mujer(X).

mama(X,Y) :- progenitor(X,Y), mujer(X).

tia(X,Y) :- progenitor(Z,Y), hermana(Z,X).

sobrino(X,Y) :- progenitor(Z,X), hermano(Z,Y); hermana(Z,Y), hombre(X). 

primo(X,Y) :- progenitor(A,X), progenitor(B,A), progenitor(B,C), progenitor(C,Y), hombre(X).