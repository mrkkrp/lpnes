%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 3.2
%%
%% Do you know these wooden Russian dolls (Matryoshka dolls) where the
%% smaller ones are contained in bigger ones? Here is a schematic picture:
%%
%% /  katarina   \
%%  /   olga    \
%%   / natasha \
%%    / irina \
%%
%% First, write a knowledge base using the predicate directlyIn/2 which
%% encodes which doll is directly contained in which other doll. Then,
%% define a recursive predicate in/2, that tells us which doll is (directly
%% or indirectly) contained in which other dolls. For example, the query
%%
%% ?- in(katarina, natasha).
%%
%% should evaluate to true, while
%%
%% ?- in(olga, katarina).
%%
%% should fail.

directlyIn(katarina, olga).
directlyIn(olga,     natasha).
directlyIn(natasha,  irina).

in(X, Y) :-
    directlyIn(X, Y).
in(X, Y) :-
    directlyIn(X, Z),
    in(Z, Y).
