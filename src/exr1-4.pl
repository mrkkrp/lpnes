%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 1.4
%%
%% Represent the following in Prolog:

%% 1.  Butch is a killer.

killer(butch).

%% 2.  Mia and Marsellus are married.

married(mia, marsellus).

%% 3.  Zed is dead.

dead(zed).

%% 4.  Mia loves everyone who is a good dancer.

loves(mia, X) :- good_dancer(X).

%% 5.  Jules eats anything that is nutritious or tasty.

eats(jules, X) :- nutritious(X); tasty(X).
