%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 4, Exercise 3
%%
%% Finally, write a 3-place predicate combine3 which takes three lists as
%% arguments and combines the elements of the first two lists into the third
%% as follows:
%%
%% ?- combine3([a,b,c], [1,2,3], X).
%% X = [j(a,1), j(b,2), j(c,3)]
%%
%% ?- combine3([f,b,yip,yup], [glu,gla,gli,glo], R).
%% R = [j(f,glu), j(b,gla), j(yip,gli), j(yup,glo)]

combine3([], [], []).
combine3([H0|T0], [H1|T1], [j(H0,H1)|T]) :-
    combine3(T0, T1, T).
