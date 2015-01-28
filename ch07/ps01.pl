%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 7, Exercise 1
%%
%% The formal language Even is very simple: it consists of all strings
%% containing an even number of as, and nothing else. Note that the empty
%% string ϵ belongs to Even. Write a DCG that generates Even.

s --> [].
s --> [a,a], s.
