%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 6.4
%%
%% Write a predicate last(List,X) which is true only when List is a list
%% that contains at least one element and X is the last element of that
%% list. Do this in two different ways:
%%
%% 1. Define last/2 using the predicate rev/2 discussed in the text.

last_rev(List, X) :- reverse(List, [X|_]).

%% 2. Define last/2 using recursion.

last_rec([X], X).
last_rec([_|T], X) :- last_rec(T, X).
