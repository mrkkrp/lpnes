%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 12.1
%%
%% Write code that creates hogwart.houses, a file that that looks like this:
%%
%%        gryffindor
%% hufflepuff   ravenclaw
%%         slytherin
%%
%% You can use the built-in predicates open/3, close/1, tab/2, nl/1, and
%% write/2.

main :-
    open('hogwarts.houses', write, S),
    tab(S, 7),
    write(S, 'gryffindor'),
    nl(S),
    write(S, 'hufflepuff'),
    tab(S, 4),
    write(S, 'ravenclaw'),
    nl(S),
    tab(S, 7),
    write(S, 'slytherin'),
    close(S).
