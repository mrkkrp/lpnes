%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 4.5
%%
%% Suppose we are given a knowledge base with the following facts:

tran(eins,   one).
tran(zwei,   two).
tran(drei,   three).
tran(vier,   four).
tran(fuenf,  five).
tran(sechs,  six).
tran(sieben, seven).
tran(acht,   eight).
tran(neun,   nine).

%% Write a predicate listtran/2 which translates a list of German number
%% words to the corresponding list of English number words. For example:
%%
%% listtran([eins,neun,zwei], X).
%%
%% should give
%%
%% X = [one,nine,two].
%%
%% Your program should also work in the other direction. For example, if you
%% give it the query
%%
%% listtran(X, [one,seven,six,two]).
%%
%% it should return
%%
%% X = [eins,sieben,sechs,zwei].

listtran([], []).
listtran([X|T0], [Y|T1]) :-
    tran(X, Y),
    listtran(T0, T1).
