%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 1.3
%%
%% How many facts, rules, clauses, and predicates are there in the following
%% knowledge base? What are the heads of the rules, and what are the goals
%% they contain?

woman(vincent).
woman(mia).
man(jules).

%% head        goals
person(X)    :- man(X);  woman(X).
loves(X, Y)  :- father(X, Y).
father(Y, Z) :- man(Y), son(Z, Y).
father(Y, Z) :- man(Y), daughter(Z, Y).

%% There are three facts, four rules, seven clauses, and seven predicates.
