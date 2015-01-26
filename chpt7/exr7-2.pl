%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 7.2
%%
%% The formal language a^n b^n − {ϵ} consists of all the strings in a^n b^n
%% except the empty string. Write a DCG that generates this language.

s --> l, r.
s --> l, s, r.
l --> [a].
r --> [b].
