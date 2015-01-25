%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 6.6
%%
%% Here is an exercise for those of you who like logic puzzles.
%%
%% There is a street with three neighbouring houses that all have a
%% different colour, namely red, blue, and green. People of different
%% nationalities live in the different houses and they all have a different
%% pet. Here are some more facts about them:
%%
%% * The Englishman lives in the red house.
%% * The jaguar is the pet of the Spanish family.
%% * The Japanese lives to the right of the snail keeper.
%% * The snail keeper lives to the left of the blue house.
%%
%% Who keeps the zebra? Don’t work it out for yourself: define a predicate
%% zebra/1 that tells you the nationality of the owner of the zebra!
%%
%% (Hint: Think of a representation for the houses and the street. Code the
%% four constraints in Prolog. You may find member/2 and sublist/2 useful.)

%% Helper functions.

prefix(P, L) :-
    append(P, _, L).
suffix(S, L) :-
    append(_, S, L).
sublist(SubL, L) :-
    suffix(S, L),
    prefix(SubL, S).

zebra(X) :-
    member(house(red, english, _), [H0,H1,H2]),
    member(house(_, spanish, jaguar), [H0,H1,H2]),
    sublist([house(_, _, snail), house(_, japanese, _)], [H0,H1,H2]),
    sublist([house(_, _, snail), house(blue, _, _)], [H0,H1,H2]),
    member(house(_, X, zebra), [H0,H1,H2]).
