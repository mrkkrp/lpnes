%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 2.3
%%
%% Here is a tiny lexicon (that is, information about individual words) and
%% a mini grammar consisting of one syntactic rule (which defines a sentence
%% to be an entity consisting of five words in the following order: a
%% determiner, a noun, a verb, a determiner, a noun).

word(determiner, a).
word(determiner, every).
word(noun,       criminal).
word(noun,       'big  kahuna  burger').
word(verb,       eats).
word(verb,       likes).

sentence(W1, W2, W3, W4, W5):-
    word(determiner, W1),
    word(noun,       W2),
    word(verb,       W3),
    word(determiner, W4),
    word(noun,       W5).

%% What query do you have to pose in order to find out which sentences the
%% grammar can generate? List all sentences that this grammar can generate
%% in the order that Prolog will generate them in.

%% ?- sentence(W1, W2, W3, W4, W5).

%% a criminal eats a criminal
%% a criminal eats a big kahuna burger
%% a criminal eats every criminal
%% a criminal eats every big kahuna burger
%% a criminal likes a criminal
%% a criminal likes a big kahuna burger
%% a criminal likes every criminal
%% a criminal likes every big kahuna burger
%% a big kahuna burger eats a criminal
%% a big kahuna burger eats a big kahuna burger
%% a big kahuna burger eats every criminal
%% a big kahuna burger eats every big kahuna burger
%% a big kahuna burger likes a criminal
%% a big kahuna burger likes a big kahuna burger
%% a big kahuna burger likes every criminal
%% a big kahuna burger likes every big kahuna burger
%% every criminal eats a criminal
%% every criminal eats a big kahuna burger
%% every criminal eats every criminal
%% every criminal eats every big kahuna burger
%% every criminal likes a criminal
%% every criminal likes a big kahuna burger
%% every criminal likes every criminal
%% every criminal likes every big kahuna burger
%% every big kahuna burger eats a criminal
%% every big kahuna burger eats a big kahuna burger
%% every big kahuna burger eats every criminal
%% every big kahuna burger eats every big kahuna burger
%% every big kahuna burger likes a criminal
%% every big kahuna burger likes a big kahuna burger
%% every big kahuna burger likes every criminal
%% every big kahuna burger likes every big kahuna burger
