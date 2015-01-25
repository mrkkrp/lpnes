%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 6.3
%%
%% Write a predicate toptail(InList, OutList) which says no if InList is a
%% list containing fewer than 2 elements, and which deletes the first and
%% the last elements of InList and returns the result as OutList, when
%% InList is a list containing at least 2 elements. For example:
%%
%% ?- toptail([a], T).
%% no
%%
%% ?- toptail([a,b], T).
%% T = []
%%
%% ?- toptail([a,b,c], T).
%% T = [b]
%%
%% (Hint: here’s where append/3 comes in useful.)

toptail([_|T],R) :- append(R,[_],T).
