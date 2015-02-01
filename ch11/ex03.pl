%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 11.3
%%
%% Write a predicate sigma/2 that takes an integer n > 0 and calculates the
%% sum of all integers from 1 to n. For example:
%%
%% ?- sigma(3, X).
%% X = 6
%% yes
%% ?- sigma(5, X).
%% X = 15
%% yes
%%
%% Write the predicate so that results are stored in the database (there
%% should never be more than one entry in the database for each value) and
%% are reused whenever possible. For example, suppose we make the following
%% query:
%%
%% ?- sigma(2, X).
%% X = 3
%% yes
%% ?- listing.
%% sigmares(2, 3).
%%
%% Then, if we go on to ask
%%
%% ?- sigma(3, X).
%%
%% Prolog should not calculate everything new, but should get the result for
%% sigma(2, 3) from the database and only add 3 to that. It should then
%% answer:
%%
%% X = 6
%% yes
%% ?- listing.
%% sigmares(2, 3).
%% sigmares(3, 6).

:- dynamic sigmares/2.

sigmares(1, 1).

sigma(X, Y) :-
    sigmares(X, Y),
    !.
sigma(X, Y) :-
    Xp is X - 1,
    sigma(Xp, R),
    Y is R + X,
    assert(sigmares(X, Y)).
