%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 12, Step 2 and 3
%%
%% In the practical session of Chapter 9, you had to write a program for
%% pretty printing parse trees onto the screen. Turn that into a module as
%% well.
%%
%% Now modify the program so that it prints the tree not to the screen but
%% to a given stream. That means that the predicate pptree should now be a
%% two-place predicate taking the Prolog representation of a parse tree and
%% a stream as arguments.

:- module('pretty-printer', [pptree/2]).

put_if(S, Cond) :-
    Cond,
    S.
put_if(_, Cond) :-
    not(Cond).

ppargs([], _, _).
ppargs([H|T], N, S) :-
    pptree(H, N, S),
    put_if(nl(S), T \== []),
    ppargs(T, N, S).

pptree(E, N, S) :-
    E =.. [H|T],
    length(T, Len),
    put_if(tab(S, N), Len >= 1),
    write(S, H),
    put_if(write(S, '('), Len >= 1),
    put_if(nl(S), Len >= 2),
    Nx is N + 2,
    ppargs(T, Nx, S),
    put_if(write(S, ')'), Len >= 1).

pptree(E, S) :-
    pptree(E, 0, S).

rere :-
    open('test.txt', write, S),
    pptree(s(np(det(a), n(woman)), vp(v(shoots))), S),
    close(S).
