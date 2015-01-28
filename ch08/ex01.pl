%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 8.1
%%
%% Here’s our basic DCG:
%%
%% s --> np, vp.
%%
%% np --> det, n.
%%
%% vp --> v, np.
%% vp --> v.
%%
%% det --> [the].
%% det --> [a].
%%
%% n --> [woman].
%% n --> [man].
%% n --> [apple].
%% n --> [pear].
%%
%% v --> [eats].
%%
%% Suppose we add the noun "men" (which is plural) and the verb "know". Then
%% we would want a DCG which says that "The men eat" is ok, "The man eats"
%% is ok, "The men eats" is not ok, and "The man eat" is not ok. Change the
%% DCG so that it correctly handles these sentences. Use an extra argument
%% to cope with the singular/plural distinction.

%% grammar

s(Q) --> np(Q), vp(Q).

np(Q) --> det(Q), n(Q).

vp(Q) --> v(Q), np(_).
vp(Q) --> v(Q).

%% lexicon

det(_) --> [the].
det(singular) --> [a].

n(singular) --> [woman].
n(singular) --> [man].
n(plural) --> [men].
n(singular) --> [apple].
n(singular) --> [pear].

v(singular) --> [eats].
v(plural) --> [eat].
