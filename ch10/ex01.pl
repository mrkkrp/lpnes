%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 10.1
%%
%% Suppose we have the following database:

p(1).
p(2) :- !.
p(3).

%% Write all of Prolog's answers to the following queries:
%% ?- p(X).
%% X = 1 ;
%% X = 2.
%% ?- p(X), p(Y).
%% X = Y, Y = 1 ;
%% X = 1,
%% Y = 2 ;
%% X = 2,
%% Y = 1 ;
%% X = Y, Y = 2.
%% ?- p(X), ! ,p(Y).
%% X = Y, Y = 1 ;
%% X = 1,
%% Y = 2.
