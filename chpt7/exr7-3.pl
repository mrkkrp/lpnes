%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 7.3
%%
%% Let a^n b^2n be the formal language which contains all strings of the
%% following form: an unbroken block of as of length n followed by an
%% unbroken block of bs of length 2n, and nothing else. For example, abb,
%% aabbbb, and aaabbbbbb belong to a^n b^2n, and so does the empty
%% string. Write a DCG that generates this language.

s --> [].
s --> [a], s, [b,b].
