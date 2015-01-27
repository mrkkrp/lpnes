%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 8.2
%%
%% In the text, we only gave examples of DCG rules with one extra argument,
%% but in fact you can add as many extra arguments as you like. Here's a DCG
%% rule with three extra arguments:
%%
%% kanga(V, R, Q) --> roo(V, R), jumps(Q, Q), {marsupial(V, R, Q)}.
%%
%% Translate it into the form Prolog uses.

kanga(A, B, C, D, F) :-
    roo(A, B, D, E),
    jumps(C, C, E, F),
    marsupial(A, B, C).
