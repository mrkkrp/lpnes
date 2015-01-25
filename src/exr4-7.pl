%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 4.7
%%
%% Draw the search trees for the following three queries:
%%
%% ?- member(a, [c,b,a,y]).
%% ?- member(x, [a,b,c]).
%% ?- member(X, [a,b,c]).

%% [trace]  ?- member(a,[c,b,a,y]).
%%    Call: (6) member(a, [c, b, a, y]) ?
%%    Call: (7) member(a, [b, a, y]) ?
%%    Call: (8) member(a, [a, y]) ?
%%    Exit: (8) member(a, [a, y]) ?
%%    Exit: (7) member(a, [b, a, y]) ?
%%    Exit: (6) member(a, [c, b, a, y]) ?
%% true ;
%%    Redo: (8) member(a, [a, y]) ?
%%    Call: (9) member(a, [y]) ?
%%    Call: (10) member(a, []) ?
%%    Fail: (10) member(a, []) ?
%%    Fail: (9) member(a, [y]) ?
%%    Fail: (8) member(a, [a, y]) ?
%%    Fail: (7) member(a, [b, a, y]) ?
%%    Fail: (6) member(a, [c, b, a, y]) ?
%% false.

%% [trace]  ?- member(x,[a,b,c]).
%%    Call: (6) member(x, [a, b, c]) ?
%%    Call: (7) member(x, [b, c]) ?
%%    Call: (8) member(x, [c]) ?
%%    Call: (9) member(x, []) ?
%%    Fail: (9) member(x, []) ?
%%    Fail: (8) member(x, [c]) ?
%%    Fail: (7) member(x, [b, c]) ?
%%    Fail: (6) member(x, [a, b, c]) ?
%% false.

%% [trace]  ?- member(X,[a,b,c]).
%%    Call: (6) member(_G1490, [a, b, c]) ?
%%    Exit: (6) member(a, [a, b, c]) ?
%% X = a ;
%%    Redo: (6) member(_G1490, [a, b, c]) ?
%%    Call: (7) member(_G1490, [b, c]) ?
%%    Exit: (7) member(b, [b, c]) ?
%%    Exit: (6) member(b, [a, b, c]) ?
%% X = b ;
%%    Redo: (7) member(_G1490, [b, c]) ?
%%    Call: (8) member(_G1490, [c]) ?
%%    Exit: (8) member(c, [c]) ?
%%    Exit: (7) member(c, [b, c]) ?
%%    Exit: (6) member(c, [a, b, c]) ?
%% X = c ;
%%    Redo: (8) member(_G1490, [c]) ?
%%    Call: (9) member(_G1490, []) ?
%%    Fail: (9) member(_G1490, []) ?
%%    Fail: (8) member(_G1490, [c]) ?
%%    Fail: (7) member(_G1490, [b, c]) ?
%%    Fail: (6) member(_G1490, [a, b, c]) ?
%% false.
