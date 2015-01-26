%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 6.1
%%
%% Let’s call a list doubled if it is made of two consecutive blocks of
%% elements that are exactly the same. For example, [a,b,c,a,b,c] is doubled
%% (it’s made up of [a,b,c] followed by [a,b,c]) and so is
%% [foo,gubble,foo,gubble]. On the other hand, [foo,gubble,foo] is not
%% doubled. Write a predicate doubled(List) which succeeds when List is a
%% doubled list.

grab(R, 0, A) :-
    reverse(A, R).
grab([H|T], N, A) :-
    N1 is N - 1,
    grab(T, N1, [H|A]).

doubled(L) :-
    length(L, Len),
    Len mod 2 =:= 0,
    Dbl is Len div 2,
    grab(L, Dbl, []).
