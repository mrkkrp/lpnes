%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 5, Exercise 1
%%
%% In the text we discussed the predicate accMax/3 which returned the
%% maximum of a list of integers. By changing the code slightly, turn this
%% into a 3-place predicate accMin which returns the minimum of a list of
%% integers.

accMin([H|T], A, R) :-
    H < A,
    accMin(T, H, R).
accMin([H|T], A, R) :-
    H >= A,
    accMin(T, A, R).
accMin([], R, R).

min([H|T], R) :-
    accMin(T, H, R).
