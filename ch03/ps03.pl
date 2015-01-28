%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 3, Exercise 3
%%
%% So, by using travel/2 to query the above database, you can find out that
%% it is possible to go from Valmont to Raglan. If you are planning such a
%% voyage, that’s already something useful to know, but you would probably
%% prefer to have the precise route from Valmont to Raglan. Write a
%% predicate travel/3 which tells you which route to take when traveling
%% from one place to another. For example, the program should respond
%%
%% X  =  go(valmont, metz,
%%          go(metz, paris,
%%             go(paris, losAngeles)))
%%
%% to the query travel(valmont, losAngeles, X).

:- consult(ps02).

travel(A, B, go(A, B)) :-
    directly(A, B).
travel(A, B, go(A, X, G)) :-
    directly(A, X),
    travel(X, B, G).

%% ?- travel(valmont, losAngeles, X).
%% X = go(valmont, saarbruecken,
%%        go(saarbruecken, paris,
%%           go(paris, losAngeles))) ;
%% X = go(valmont, metz,
%%        go(metz, paris,
%%           go(paris, losAngeles))) ;
%% false.
