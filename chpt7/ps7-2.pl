%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 7, Exercise 2
%%
%% The formal language a^n b^2m c^2m d^n consists of all strings of the
%% following form: an unbroken block of as followed by an unbroken block of
%% bs followed by an unbroken block of cs followed by an unbroken block of
%% ds, such that the a and d blocks are exactly the same length, and the b
%% and c blocks are also exactly the same length and furthermore consist of
%% an even number of bs and cs respectively. For example, ϵ, abbccd, and
%% aabbbbccccdd all belong to a^n b^2m c^2m d^n. Write a DCG that generates
%% this language.

s --> m.
s --> [a], s, [d].
m --> [].
m --> [b,b], m, [c,c].
