%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 4.4
%%
%% Write a predicate swap12(List1,List2) which checks whether List1 is
%% identical to List2, except that the first two elements are exchanged.

swap12([X,Y|T], [Y,X|T]).
