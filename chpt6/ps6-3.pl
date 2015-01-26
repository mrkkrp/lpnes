%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 6, Exercise 3
%%
%% We 'flatten' a list by removing all the square brackets around any lists
%% it contains as elements, and around any lists that its elements contain
%% as elements, and so on, for all nested lists. For example, when we
%% flatten the list
%%
%% [a,b,[c,d],[[1,2]],foo]
%%
%% we get the list
%%
%% [a,b,c,d,1,2,foo]
%%
%% and when we flatten the list
%%
%% [a,b,[[[[[[[c,d]]]]]]],[[1,2]],foo,[]]
%%
%% we also get
%%
%% [a,b,c,d,1,2,foo].
%%
%% Write a predicate flatten(List,Flat) that holds when the first argument
%% List flattens to the second argument Flat. This should be done without
%% making use of append/3 .

flatten_acc([], A, R) :-
    reverse(A, R).
flatten_acc([[]|T], A, R) :-
    flatten_acc(T, A, R).
flatten_acc([[H|Tx]|T], A, R) :-
    flatten_acc([H,Tx|T], A, R).
flatten_acc([H|T], A, R) :-
    not(H == []),
    atomic(H),
    flatten_acc(T, [H|A], R).

flatten(L, R) :-
    flatten_acc(L, [], R).
