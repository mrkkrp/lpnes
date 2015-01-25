%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 6.5
%%
%% Write a predicate swapfl(List1, List2) which checks whether List1 is
%% identical to List2, except that the first and last elements are
%% exchanged. Here’s where append/3 could come in useful again, but it is
%% also possible to write a recursive definition without appealing to
%% append/3 (or any other) predicates.

swapfl([H1|T1], [H2|T2]) :-
    reverse(T1, [H2|X]),
    reverse(T2, [H1|X]).
