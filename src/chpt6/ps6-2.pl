%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 6, Exercise 2
%%
%% Write a predicate set(InList,OutList) which takes as input an arbitrary
%% list, and returns a list in which each element of the input list appears
%% only once. For example, the query
%%
%% ?- set([2,2,foo,1,foo,[],[]],X).
%%
%% should yield the result
%%
%% X = [2,foo,1,[]].
%%
%% (Hint: use the member/2 predicate to test for repetitions of items you
%% have already found.)

acc_set([], R, R).
acc_set([H|T], A, R) :-
    member(H, A),
    acc_set(T, A, R).
acc_set([H|T], A, R) :-
    not(member(H, A)),
    acc_set(T, [H|A], R).

set(L, R) :- acc_set(L, [], R).
