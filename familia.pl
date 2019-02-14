padrede('laura','camila').
padrede('sergio','camila').
padrede('laura','rafael').
padrede('carlos','rafael').
padrede('laura','rodrigo').
padrede('sergio','rodrigo').
padrede('laura','estela').
padrede('sergio','estela').
padrede('camila','camilo').
padrede('ricardo','camilo').
padrede('camila','andres').
padrede('ricardo','andres').
padrede('rafael','pepe').
padrede('maria','pepe').
padrede('rafael','valentina').
padrede('maria','valentina').
padrede('rodrigo','alejandro').
padrede('sofia','alejandro').
padrede('rodrigo','juan').
padrede('sofia','juan').


hijode(A,B):-padrede(B,A).
hermanode(A,B):-padrede(C,A),padrede(C,B),A\== B.
abuelode(A,B):-padrede(A,C),padrede(C,B).
estancasados(A,B):-hijode(C,A),hijode(C,B),A\==B.
casado(A):-hijode(B,A),padrede(C,B),C\==A.
esfeliz(A):-not(casado(A)).
tiode(A,B):-hermanode(A,C),padrede(C,B).
primode(A,B):-padrede(C,A),tiode(C,B).
sobrinode(A,B):-tiode(B,A).
nietode(A,B):-abuelode(B,A).






