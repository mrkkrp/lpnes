%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 11.2
%%
%% Suppose we have the following database:

q(blob, blug).
q(blob, blag).
q(blob, blig).
q(blaf, blag).
q(dang, dong).
q(dang, blug).
q(flab, blob).

%% What is Prolog’s response to the queries:

%% ?- findall(X, q(blob, X), List).
%% List = [blug, blag, blig].
%% ?- findall(X, q(X, blug), List).
%% List = [blob, dang].
%% ?- findall(X, q(X, Y), List).
%% List = [blob, blob, blob, blaf, dang, dang, flab].
%% ?- bagof(X, q(X,Y), List).
%% Y = blag,
%% List = [blob, blaf] ;
%% Y = blig,
%% List = [blob] ;
%% Y = blob,
%% List = [flab] ;
%% Y = blug,
%% List = [blob, dang] ;
%% Y = dong,
%% List = [dang].
%% ?- setof(X, Y^q(X,Y), List).
%% List = [blaf, blob, dang, flab].
