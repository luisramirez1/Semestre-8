maximo(X,Y,X) :- X>=Y.
maximo(X,Y,Y) :- X<Y.

factorial(1,1).
factorial(X,Y) :- X > 1, X1 is X-1, factorial(X1,Y1), Y is X * Y1.

potencia(X,Y) :- Y is X * X.

potencia2(X,0,1). 
potencia2(X,Y,R) :- Y > 0, Y1 is Y-1, potencia2(X,Y1,R1), R is X * R1. 

divide(X,Y,R) :- Y > 0, R is X/Y. 

fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,X).