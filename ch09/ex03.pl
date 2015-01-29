%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 9.3
%%
%% Write a two-place predicate termtype(Term,Type) that takes a term and
%% gives back the type(s) of that term (atom, number, constant, variable,
%% and so on). The types should be given back in the order of their
%% generality. The predicate should behave in the following way:
%%
%% ?- termtype(Vincent, variable).
%% yes
%% ?- termtype(mia, X).
%% X = atom ;
%% X = constant ;
%% X = simple_term ;
%% X = term ;
%% no
%% ?- termtype(dead(zed), X).
%% X = complex_term ;
%% X = term ;
%% no

constant(X) :- atom(X).
constant(X) :- number(X).

simple_term(X) :-
    nonvar(X),
    functor(X, _, 0).

complex_term(X) :-
    nonvar(X),
    functor(X, _, A),
    A > 0.

termtype(X, atom) :- atom(X).
termtype(X, number) :- number(X).
termtype(X, constant) :- constant(X).
termtype(X, variable) :- var(X).
termtype(X, simple_term) :- simple_term(X).
termtype(X, complex_term) :- complex_term(X).
termtype(_, term).
