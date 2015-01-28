%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 3, Exercise 4
%%
%% Extend the predicate travel/3 so that it not only tells you the route to
%% take to get from one place to another, but also how you have to
%% travel. That is, the new program should let us know, for each stage of
%% the voyage, whether we need to travel by car, train, or plane.

:- consult(ps02).

travel(A, B, byCar(A, B)) :-
    byCar(A, B).
travel(A, B, byTrain(A, B)) :-
    byTrain(A, B).
travel(A, B, byPlane(A, B)) :-
    byPlane(A, B).

travel(A, B, byCar(A, X, G)) :-
    byCar(A, X),
    travel(X, B, G).
travel(A, B, byTrain(A, X, G)) :-
    byTrain(A, X),
    travel(X, B, G).
travel(A, B, byPlane(A, X, G)) :-
    byPlane(A, X),
    travel(X, B, G).
