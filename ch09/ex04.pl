%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 9.4
%%
%% Write a Prolog program that defines the predicate groundterm(Term) which
%% tests whether or not Term is a ground term. Ground terms are terms that
%% don't contain variables. Here are examples of how the predicate should
%% behave:
%%
%% ?- groundterm(X).
%% no
%% ?- groundterm(french(bic_mac, le_bic_mac)).
%% yes
%% ?- groundterm(french(whopper, X)).
%% no

groundterm(X) :-
    nonvar(X),
    X =.. L,
    check_vars(L).

check_vars([]).
check_vars([H|T]) :-
    nonvar(H),
    functor(H, _, 0),
    check_vars(T).
check_vars([H|T]) :-
    nonvar(H),
    functor(H, _, A),
    A > 0,
    groundterm(H),
    check_vars(T).

%% This version can detect even nested variables.
