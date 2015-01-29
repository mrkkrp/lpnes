%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 9.5
%%
%% Assume that we have the following operator definitions:

:- op(300, xfx, [are, is_a]).
:- op(300, fx,  likes).
:- op(200, xfy, and).
:- op(100, fy,  famous).

%% Which of the following are well-formed terms? What are the main
%% operators? Give the bracketings.

%% ?- X is_a witch.
%% == is_a(X, witch).
%% well-formed
%% ?- harry and ron and hermione are friends.
%% == friends(and(and(hermione, ron), harry)).
%% well-formed
%% ?- harry is_a wizard and likes quidditch.
%% == ???
%% ERROR: Syntax error: Operator priority clash
%% ERROR: harry is_a wizard an
%% ERROR: ** here **
%% ERROR: d likes quidditch .
%% ?- dumbledore is_a famous famous wizard.
%% == is_a(dumbledore, famous(famous(wizard))).
%% well-formed
