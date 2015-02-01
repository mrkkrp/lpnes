%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 12, Step 4 - 7
%%
%% Import both modules into a file and define a two-place predicate test/2
%% which takes a list representing a sentence (such as [a,woman,shoots]),
%% parses it, and writes the result to the file specified by the second
%% argument of test/2. Check that everything is working as it should.
%%
%% Finally, modify test/2, so that it takes a filename instead of a sentence
%% as its first argument, reads in the sentences given in the file one by
%% one, parses them, and writes the sentence as well as the parsing result
%% into the output file.
%%
%% Now (if you are in for some real Prolog hacking) try to write a module
%% that reads in sentences terminated by a full stop or a line break from a
%% file, so that you can give your testsuite as
%%
%% the cow under the table shoots .
%% a dead woman likes he .
%%
%% instead of
%%
%% [the,cow,under,the,table,shoots].
%% [a,dead,woman,likes,he].
%%
%% Make the testsuite environment more sophisticated, by adding information
%% to the input file about the expected output (in this case, whether the
%% sentences has a parse or not). Then modify the program so that it checks
%% whether the expected output matches the obtained output.

:- ['parse-sentence',
    'pretty-printer'].

test(L, Filename) :-
    open(Filename, write, S),
    s(T, _, _, L, []),
    pptree(T, S),
    close(S).

%% Since these are not conceptual steps, it's not a big problem to leave
%% them unsolved for now. If you have written good solutions to this last
%% practical session, please open a pull request.
