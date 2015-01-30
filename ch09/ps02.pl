%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 9, Exercise 2
%%
%% Time to practice writing operator definitions. In the practical session
%% of Chapter 7, you were asked to write a DCG generating propositional
%% logic formulas. The input you had to use was a bit awkward though. The
%% formula ¬(p → q) had to be represented as [not, '(', p, implies, q,
%% ')']. Now that you know about operators, you can do things rather more
%% neatly. Write operator definitions for not, and, or, and implies, so that
%% Prolog accepts (and correctly brackets) propositional logic formulas. Use
%% display/1 to check your code. It should yield the following kinds of
%% response:
%%
%% ?- display(not(p implies q)).
%% not(implies(p, q)).
%% yes
%%
%% ?- display(not p implies q).
%% implies(not(p), q).
%% yes

:- op(500, fy,  not).
:- op(700, xfy, implies).
:- op(700, xfy, and).
:- op(700, xfy, or).
