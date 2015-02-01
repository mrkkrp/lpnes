%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 10, Exercise 2
%%
%% Define a predicate unifiable(List1, Term, List2) where List2 is the list
%% of all members of List1 that unify with Term. The elements of List2
%% should not be instantiated by the unification. For example
%%
%% unifiable([X,b,t(Y)], t(a) ,List)
%%
%% should yield
%%
%% List = [X, t(Y)].
%%
%% Note that X and Y are still not instantiated. So the tricky part is: how
%% do we check that they unify with t(a) without instantiating them?
%%
%% (Hint: consider using tests of the form \+ term1 = term2. Why? Think
%% about it. You might also like to think about tests of the form \+ \+
%% term1 = term2.)

unifiable([], _, []).
unifiable([H|T], C, R) :-
    \+ H = C,
    !,
    unifiable(T, C, R).
unifiable([H|T], C, [H|R]) :-
    unifiable(T, C, R).
