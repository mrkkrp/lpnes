%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 10.2
%%
%% First, explain what the following program does:
%%
%% class(Number, positive) :- Number > 0.
%% class(0,      zero).
%% class(Number, negative) :- Number < 0.
%%
%% This program determines to which class of numbers its arguments belongs:
%% positive numbers, negative numbers, or zero. It does so by comparing
%% given argument with zero and also by unification with zero.
%%
%% Second, improve it by adding green cuts.

class(Number, positive) :- Number > 0, !.
class(0,      zero) :- !.
class(Number, negative) :- Number < 0.
