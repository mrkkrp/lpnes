%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 6, Exercise 1
%%
%% It is possible to write a one line definition of the member predicate by
%% making use of append/3. Do so. How does this new version of member
%% compare in efficiency with the standard one?

member(X, L) :- append(_, [X|_], L).

%% Append based version is less efficient because it involves calls of
%% append, rebuilding of its second argument and redos. Standard version
%% only involves recursive calls.
