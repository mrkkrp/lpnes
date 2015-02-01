%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 11.1
%%
%% Suppose we start with an empty database. We then give the command:
%%
%% assert(q(a, b)), assertz(q(1, 2)), asserta(q(foo,blug)).
%%
%% What does the database now contain?

%% q(foo, blug).
%% q(a, b).
%% q(1, 2).

%% We then give the command:
%%
%% retract(q(1, 2)), assertz( (p(X) :- h(X)) ).
%%
%% What does the database now contain?

%% q(foo, blug).
%% q(a, b).
%% p(X) :- h(X).

%% We then give the command:
%%
%% retractall(q(_, _)).
%%
%% What does the database now contain?

%% p(X) :- h(X).
