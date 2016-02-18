% 1.- Definir un programa en prolog que retorne la evaluacion por competenciasn dad una calificacion numerica Ej.- nota(70,Y). Y= Aprobado 
Considera que si la calificacion es menor a 70 es reprobado, de 70 a 79 Aprobado, de 80 a 89 sobresaliente, y de 90 a 100 es excelente.%


calificacion(X, 'Reprobado') :- X<70.
calificacion(X, 'Aprobado') :- X>69, X<80.
calificacion(X, 'Sobresaliente') :- X>79, X<90.
calificacion(X, 'Excelente') :- X>89, X<101.

% 2.- Obtener el numero mayor de 3%

mayor(X,Y,Z,X) :- X>Y, X>Z.
mayor(X,Y,Z,Y) :- Y>X, Y>Z.
mayor(X,Y,Z,Z) :- Z>X, Z>Y.

%Obtener el cociente y residuo de una division.%

cR(X,Y,0,R) :- Y>X, R is X.
cR(X,Y,C,R) :- X>=Y, X1 is X-Y, cR(X1,Y,C1,R), C is C1+1.



