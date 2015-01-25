%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 5.2
%%
%% 1. Define a 2-place predicate increment that holds only when its second
%% argument is an integer one larger than its first argument. For example,
%% increment(4,5) should hold, but increment(4,6) should not.

increment(X, Y) :- Y is X + 1.

%% 2. Define a 3-place predicate sum that holds only when its third argument
%% is the sum of the first two arguments. For example, sum(4,5,9) should
%% hold, but sum(4,6,12) should not.

sum(X, Y, R) :- R is X + Y.
