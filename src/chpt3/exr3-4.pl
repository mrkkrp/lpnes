%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 3.4
%%
%% Define a predicate greater_than/2 that takes two numerals in the notation
%% that we introduced in the text (that is, 0, succ(0), succ(succ(0)), and
%% so on) as arguments and decides whether the first one is greater than the
%% second one. For example:
%%
%% ?- greater_than(succ(succ(succ(0))), succ(0)).
%% yes
%% ?- greater_than(succ(succ(0)), succ(succ(succ(0)))).
%% no

greater_than(succ(_), 0).
greater_than(succ(X), succ(Y)) :-
    greater_than(X, Y).

%% Since we have only positive numbers, the least possible number is 0. So
%% any number not equal to 0 is greater than 0. First part of the rule for
%% greater_than/2 reflects this idea. Second part of the rule allows us to
%% bring any combination of numbers to the point where the first rule
%% applies (or both rules fail showing us that the first argument is not
%% greater than the second one).
