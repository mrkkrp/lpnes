%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 5, Exercise 3
%%
%% Another fundamental operation on vectors is the dot product. This
%% operation combines two vectors of the same dimension and yields a number
%% as a result. The operation is carried out as follows: the corresponding
%% elements of the two vectors are multiplied, and the results added. For
%% example, the dot product of [2,5,6] and [3,4,1] is 6+20+6, that is,
%% 32. Write a 3-place predicate dot whose first argument is a list of
%% integers, whose second argument is a list of integers of the same length
%% as the first, and whose third argument is the dot product of the first
%% argument with the second. For example, the query
%%
%% ?- dot([2,5,6], [3,4,1], Result).
%%
%% should yield
%%
%% Result = 32

dot([], [], 0).
dot([A|Ta], [B|Tb], Rx) :-
    dot(Ta, Tb, R),
    Rx is R + A * B.
