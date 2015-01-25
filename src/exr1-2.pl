%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 1.2
%%
%% Which of the following sequences of characters are atoms, which are
%% variables, which are complex terms, and which are not terms at all? Give
%% the functor and arity of each complex term.

%% 1.  loves(Vincent, mia)      complex term, loves/2
%% 2.  'loves(Vincent, mia)'    atom
%% 3.  Butch(boxer)             not a term, variable cannot be used as a functor
%% 4.  boxer(Butch)             complex term, boxer/1
%% 5.  and(big(burger), kahuna(burger))  complex term, and/2
%% 6.  and(big(X), kahuna(X))   complex term, and/2
%% 7.  _and(big(X), kahuna(X))  not a term, variable cannot be used as a functor
%% 8.  (Butch kills Vincent)    not a term, missing functor and commas
%% 9.  kills(Butch Vincent)     not a term, missing comma
%% 10. kills(Butch, Vincent     not a term, missing parenthesis
