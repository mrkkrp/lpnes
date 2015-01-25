%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 1.5
%%
%% Suppose we are working with the following knowledge base:

wizard(ron).
hasWand(harry).
quidditchPlayer(harry).

wizard(X) :-
    hasBroom(X),
    hasWand(X).
hasBroom(X) :-
    quidditchPlayer(X).

%% How does Prolog respond to the following queries?

%% 1.  wizard(ron).         true.
%% 2.  witch(ron).          ERROR: toplevel: Undefined procedure: witch/1
%% 3.  wizard(hermione).    false.
%% 4.  witch(hermione).     ERROR: toplevel: Undefined procedure: witch/1
%% 5.  wizard(harry).       true.
%% 6.  wizard(Y).           Y = ron ; Y = harry.
%% 7.  witch(Y).            ERROR: toplevel: Undefined procedure: witch/1
