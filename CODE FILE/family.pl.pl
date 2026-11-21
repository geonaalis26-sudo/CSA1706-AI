% Gender facts
female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

% Parent relationships (sample family facts)
parent(pam, liz).
parent(tom, liz).
parent(pam, bob).
parent(tom, bob).
parent(liz, ann).
parent(bob, pat).
parent(jim, pat).

% Mother relationship
mother(X, Y) :-
    female(X),
    parent(X, Y).

% Father relationship
father(X, Y) :-
    male(X),
    parent(X, Y).

% Grandfather relationship
grandfather(X, Y) :-
    male(X),
    parent(X, Z),
    parent(Z, Y).

% Grandmother relationship
grandmother(X, Y) :-
    female(X),
    parent(X, Z),
    parent(Z, Y).

% Sister relationship
sister(X, Y) :-
    female(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Brother relationship
brother(X, Y) :-
    male(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.