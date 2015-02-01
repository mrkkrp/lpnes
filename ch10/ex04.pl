%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 10.4
%%
%% Recall that in Exercise 3.3 we gave you the following knowledge base:

directTrain(saarbruecken, dudweiler).
directTrain(forbach,      saarbruecken).
directTrain(freyming,     forbach).
directTrain(stAvold,      freyming).
directTrain(fahlquemont,  stAvold).
directTrain(metz,         fahlquemont).
directTrain(nancy,        metz).

%% We asked you to write a recursive predicate travelFromTo/2 that told us
%% when we could travel by train between two towns.
%%
%% Now, it’s plausible to assume that whenever it is possible to take a
%% direct train from A to B, it is also possible to take a direct train from
%% B to A. Add this information to the database. Then write a predicate
%% route/3 which gives you a list of towns that are visited by taking the
%% train from one town to another. For instance:
%%
%% ?- route(forbach, metz, Route).
%% Route = [forbach,freyming,stAvold,fahlquemont,metz]

connected(A, B) :- directTrain(A, B).
connected(A, B) :- directTrain(B, A).

route(A, B, [A,B], _) :-
    connected(A, B),
    !.
route(A, B, [A|R], V) :-
    connected(A, C),
    \+ member(C, V),
    route(C, B, R, [A|V]).

route(A, B, R) :-
    route(A, B, R, []).
