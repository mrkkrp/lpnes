%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 2.2
%%
%% We are working with the following knowledge base:

house_elf(dobby).
witch(hermione).
witch('McGonagall').
witch(rita_skeeter).

magic(X) :- house_elf(X).
magic(X) :- wizard(X).
magic(X) :- witch(X).

%% Which of the following queries are satisfied? Where relevant, give all
%% the variable instantiations that lead to success.

%% 1.  ?- magic(house_elf).    ERROR: magic/1: Undefined procedure: wizard/1
%% 2.  ?- wizard(harry).       ERROR: toplevel: Undefined procedure: wizard/1
%% 3.  ?- magic(wizard).       ERROR: magic/1: Undefined procedure: wizard/1
%% 4.  ?- magic('McGonagall'). ERROR: magic/1: Undefined procedure: wizard/1
%% 5.  ?- magic(Hermione).     Hermione = dobby; Undefined procedure: wizard/1

%% Draw the search tree for the query magic(Hermione).

%% [trace]  ?- magic(Hermione).
%%    Call: (6) magic(_G572) ? 
%%    Call: (7) house_elf(_G572) ? 
%%    Exit: (7) house_elf(dobby) ? 
%%    Exit: (6) magic(dobby) ? 
%% Hermione = dobby ;
%%    Redo: (6) magic(_G572) ? 
%%    Call: (7) wizard(_G572) ? 
%% ERROR: magic/1: Undefined procedure: wizard/1
%%    Exception: (7) wizard(_G572) ? 
%%    Exception: (6) magic(_G572) ? 
