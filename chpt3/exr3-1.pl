%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 3.1
%%
%% In the text, we discussed the predicate
%%
%% descend(X, Y) :- child(X, Y).
%% descend(X, Y) :- child(X, Z),
%%     descend(Z, Y).
%%
%% Suppose we reformulated this predicate as follows:
%%
%% descend(X, Y) :- child(X, Y).
%% descend(X, Y) :- descend(X, Z),
%%     descend(Z, Y).
%%
%% Would this be problematic?
%%
%% Yes, the program would be unable to resolve false assumptions. It would
%% fail with error 'Out of local stack' or something like this. It's because
%% first part of the rule for descend/2 would be always ignored because Y is
%% not a child of X (we consider false assumptions), so definition of rule
%% for descend/2 would become a recursive definition without base case.
