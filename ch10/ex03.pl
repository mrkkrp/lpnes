%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 10.3
%%
%% Without using cut, write a predicate split/3 that splits a list of
%% integers into two lists: one containing the positive ones (and zero), the
%% other containing the negative ones. For example:
%%
%% split([3,4,-5,-1,0,4,-9], P, N).
%%
%% should return:
%%
%% P = [3,4,0,4]
%% N = [-5,-1,-9].
%%
%% Then improve this program, without changing its meaning, with the help of
%% the cut.

split([], [], []).
split([H|T], [H|P], N) :-
    H >= 0,
    !,
    split(T, P, N).
split([H|T], P, [H|N]) :-
    H < 0,
    split(T, P, N).
