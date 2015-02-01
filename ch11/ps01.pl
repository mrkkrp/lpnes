%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 11, Exercise 1
%%
%% Sets can be thought of as lists that don't contain any repeated
%% elements. For example, [a,4,6] is a set, but [a,4,6,a] is not (as it
%% contains two occurrences of a). Write a Prolog program subset/2 that is
%% satisfied when the first argument is a subset of the second argument
%% (that is, when every element of the first argument is a member of the
%% second argument). For example:
%%
%% ?-  subset([a,b], [a,b,c]).
%% yes
%% ?-  subset([c,b], [a,b,c]).
%% yes
%% ?-  subset([], [a,b,c]).
%% yes
%%
%% Your program should be capable of generating all subsets of an input set
%% by backtracking. For example, if you give it as input
%%
%% ?- subset(X, [a,b,c]).
%%
%% it should successively generate all eight subsets of [a,b,c].

subset([], []).
subset([H|T], [H|S]) :-
    subset(T, S).
subset(T, [_|S]) :-
    subset(T, S).

%% Additional challenge is that it should generate all possible subsets
%% too. Even built-in subset/2 fails to do so. Also, since we should handle
%% queries like subset([c,b], [a,b,c]), it means that our subset/2 should
%% handle unordered subsets as well, but it makes the query subset(X,
%% [a,b,c]) yield more than eight solutions (i.d. permutations too). This
%% exercise is poorly designed or there is a typo in the second example. I
%% chose to ignore unordered subsets (I think it is a typo), and generate
%% proper output to sbuset(X, [a,b,c]) query.
