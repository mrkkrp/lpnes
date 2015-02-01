%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 10, Exercise 1
%%
%% Define a predicate nu/2 ("not unifiable") which takes two terms as
%% arguments and succeeds if the two terms do not unify. For example:
%%
%% ?- nu(foo, foo).
%% no
%%
%% ?- nu(foo, blob).
%% yes
%%
%% ?- nu(foo,X).
%% no
%%
%% You should define this predicate in three different ways:

%% 1. First (and easiest) write it with the help of = and \+.

nu1(X, Y) :- \+ X = Y.

%% 2. Second write it with the help of =, but don't use \+.

nu2(X, Y) :- not(X = Y).

%% 3. Third, write it using a cut-fail combination. Don't use = and don't
%% use \+.

nu3(X, X) :- !, fail.
nu3(_, _).
