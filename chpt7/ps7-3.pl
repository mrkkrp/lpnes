%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 7, Exercise 3
%%
%% The language that logicians call "propositional logic over the
%% propositional symbols p, q, and r" can be defined by the following
%% context free grammar:
%%
%% prop -> p
%% prop -> q
%% prop -> r
%% prop -> ¬ prop
%% prop -> (prop ∧ prop)
%% prop -> (prop ∨ prop)
%% prop -> (prop → prop)
%%
%% Write a DCG that generates this language. Actually, because we don't know
%% about Prolog operators yet, you will have to make a few rather clumsy
%% looking compromises. For example, instead of getting it to recognise
%%
%% ¬ (p → q)
%%
%% you will have to get it recognise things like
%%
%% [not, '(', p, implies, q, ')']
%%
%% instead. We will learn in Chapter 9 how to deal with propositional logic
%% somewhat more naturally; in the meantime, write a DCG that accepts a
%% clumsy looking version of this language. Use 'or' for ∨ , and 'and' for
%% ∧.

prop --> [p].
prop --> [q].
prop --> [r].
prop --> [not], prop.
prop --> ['('], prop, conj, prop, [')'].
conj --> [and].
conj --> [or].
conj --> [implies].
