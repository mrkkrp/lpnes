%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 12.2
%%
%% Write a Prolog program that reads in a plain text file word by word, and
%% asserts all read words and their frequency into the Prolog database. You
%% may use the predicate readWord/2 to read in words. Use a dynamic
%% predicate word/2 to store the words, where the first argument is a word,
%% and the second argument is the frequency of that word.

:- dynamic word/2.

read_word(S, W):-
    get_code(S, C),
    check_and_read(C, Cs, S),
    atom_codes(W, Cs).

check_and_read(32, [], _) :- !.
check_and_read(10, [], _) :- !.
check_and_read(-1, [], _) :- !.

check_and_read(C, [C|Cs], S):-
    get_code(S, N),
    check_and_read(N, Cs, S).

add_word(W) :-
    word(W, X),
    Xx is X + 1,
    retract(word(W, X)),
    assert(word(W, Xx)),
    !.

add_word(W) :-
    assert(word(W, 1)),
    !.

read_words(S) :-
    \+ at_end_of_stream(S),
    read_word(S, W),
    add_word(W),
    read_words(S).

read_file(Filename) :-
    open(Filename, read, S),
    read_words(S),
    close(S).
