%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 5, Exercise 2
%%
%% In mathematics, an n-dimensional vector is a list of numbers of length
%% n. For example, [2,5,12] is a 3-dimensional vector, and [45,27,3,-4,6] is
%% a 5-dimensional vector. One of the basic operations on vectors is scalar
%% multiplication. In this operation, every element of a vector is
%% multiplied by some number. For example, if we scalar multiply the
%% 3-dimensional vector [2,7,4] by 3 the result is the 3-dimensional vector
%% [6,21,12].
%%
%% Write a 3-place predicate scalarMult whose first argument is an integer,
%% whose second argument is a list of integers, and whose third argument is
%% the result of scalar multiplying the second argument by the first. For
%% example, the query
%%
%% ?- scalarMult(3,[2,7,4], Result).
%%
%% should yield
%%
%% Result = [6,21,12]

scalarMult(_, [], []).
scalarMult(X, [H|T], [Hx|R]) :-
    Hx is H * X,
    scalarMult(X, T, R).
