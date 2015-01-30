%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 9, Exercise 1
%%
%% <...> Write a predicate pptree/1 that takes a complex term representing a
%% tree as its argument and prints the tree in a more readable form.

put_if(S, Cond) :-
    Cond,
    S.
put_if(_, Cond) :-
    not(Cond).

ppargs([], _).
ppargs([H|T], N) :-
    pptree(H, N),
    put_if(nl, T \== []),
    ppargs(T, N).

pptree(E, N) :-
    E =.. [H|T],
    length(T, Len),
    put_if(tab(N), Len >= 1),
    write(H),
    put_if(write('('), Len >= 1),
    put_if(nl, Len >= 2),
    Nx is N + 2,
    ppargs(T, Nx),
    put_if(write(')'), Len >= 1).

pptree(E) :-
    pptree(E, 0).

%% ?- pptree(s(np(det(a),n(man)),vp(v(shoots),np(det(a),n(woman))))).
%% s(
%%   np(
%%     det(a)
%%     n(man))
%%   vp(
%%     v(shoots)
%%     np(
%%       det(a)
%%       n(woman))))
%% true ;
%% false.
