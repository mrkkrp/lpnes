%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 6.2
%%
%% A palindrome is a word or phrase that spells the same forwards and
%% backwards. For example, 'rotator', 'eve', and 'nurses run' are all
%% palindromes. Write a predicate palindrome/1 , which checks whether List
%% is a palindrome. For example, to the queries
%%
%% ?- palindrome([r,o,t,a,t,o,r]).
%%
%% and
%%
%% ?- palindrome([n,u,r,s,e,s,r,u,n]).
%%
%% Prolog should respond yes, but to the query
%%
%% ?- palindrome([n,o,t,h,i,s]).
%%
%% it should respond no.

palindrome(L) :- reverse(L, L).
