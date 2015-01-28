%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 2.4
%%
%% Here are six Italian words:
%% astante, astoria, baratto, cobalto, pistola, statale.
%% They are to be arranged, crossword puzzle fashion, in the following grid:

%%      V1  V2  V3
%%      .   .   .
%% H1 . . . . . . .
%%      .   .   .
%% H2 . . . . . . .
%%      .   .   .
%% H3 . . . . . . .
%%      .   .   .

%% The following knowledge base represents a lexicon containing these words:

word(astante, a,s,t,a,n,t,e).
word(astoria, a,s,t,o,r,i,a).
word(baratto, b,a,r,a,t,t,o).
word(cobalto, c,o,b,a,l,t,o).
word(pistola, p,i,s,t,o,l,a).
word(statale, s,t,a,t,a,l,e).

%% Write a predicate crossword/6 that tells us how to fill in the grid. The
%% first three arguments should be the vertical words from left to right,
%% and the last three arguments the horizontal words from top to bottom.

crossword(V1, V2, V3, H1, H2, H3) :-
    word(V1, _,_11,_,_21,_,_31,_),
    word(V2, _,_12,_,_22,_,_32,_),
    word(V3, _,_13,_,_23,_,_33,_),
    word(H1, _,_11,_,_12,_,_13,_),
    word(H2, _,_21,_,_22,_,_23,_),
    word(H3, _,_31,_,_32,_,_33,_).
