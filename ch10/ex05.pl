%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 10.5
%%
%% Recall the definition of jealousy given in Chapter 1:
%%
%% jealous(X, Y) :- loves(X, Z), loves(Y, Z).
%%
%% In a world where both Vincent and Marsellus love Mia, Vincent will be
%% jealous of Marsellus, and Marsellus of Vincent. But Marsellus will also
%% be jealous of himself, and so will Vincent. Revise the Prolog definition
%% of jealousy in such a way that people can’t be jealous of themselves.

jealous(X, Y) :-
    loves(X, Z),
    loves(Y, Z),
    X \= Y.
