%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 4, Exercise 1
%%
%% Write a 3-place predicate combine1 which takes three lists as arguments
%% and combines the elements of the first two lists into the third as
%% follows:
%%
%% ?- combine1([a,b,c], [1,2,3], X).
%%
%% X = [a,1,b,2,c,3]
%%
%% ?- combine1([f,b,yip,yup], [glu,gla,gli,glo], Result).
%%
%% Result = [f,glu,b,gla,yip,gli,yup,glo]

combine1([], [], []).
combine1([H0|T0], [H1|T1], [H0,H1|T]) :-
    combine1(T0, T1, T).
