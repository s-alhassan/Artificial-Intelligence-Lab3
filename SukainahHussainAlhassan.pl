male(hussain).
male(ali).
male(abbas).
male(abduallah).
male(ahmed).
female(rajaa).
female(sukainah).

parent(abduallah, hussain).
parent(hussain, ali).
parent(hussain, abbas).
parent(hussain, sukainah).
parent(rajaa, ali).
parent(rajaa, abbas).
parent(rajaa, sukainah).
parent(ali, ahmed).

father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sister(X, Y) :- female(X), parent(P, X), parent(P, Y), X\=Y.
brother(X, Y):- male(X), parent(P, X), parent(P, Y), X\=Y.
grandfather(X, Y):- male(X), parent(X, Z), parent(Z, Y).
