%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 3, Exercise 2
%%
%% We are given the following knowledge base of travel information:

byCar(auckland, hamilton).
byCar(hamilton, raglan).
byCar(valmont, saarbruecken).
byCar(valmont, metz).

byTrain(metz, frankfurt).
byTrain(saarbruecken, frankfurt).
byTrain(metz, paris).
byTrain(saarbruecken, paris).

byPlane(frankfurt, bangkok).
byPlane(frankfurt, singapore).
byPlane(paris, losAngeles).
byPlane(bangkok, auckland).
byPlane(singapore, auckland).
byPlane(losAngeles, auckland).

%% Write a predicate travel/2 which determines whether it is possible to
%% travel from one place to another by chaining together car, train, and
%% plane journeys. For example, your program should answer yes to the query
%% travel(valmont, raglan).

directly(A, B) :-
    byCar(A, B);
    byPlane(A, B);
    byTrain(A, B).
travel(A, B) :-
    directly(A, B).
travel(A, B) :-
    directly(A, X),
    travel(X, B).
