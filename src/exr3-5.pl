%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 3.5
%%
%% Binary trees are trees where all internal nodes have exactly two
%% children. The smallest binary trees consist of only one leaf node. We
%% will represent leaf nodes as leaf(Label). For instance, leaf(3) and
%% leaf(7) are leaf nodes, and therefore small binary trees. Given two
%% binary trees B1 and B2 we can combine them into one binary tree using the
%% functor tree/2 as follows: tree(B1,B2). So, from the leaves leaf(1) and
%% leaf(2) we can build the binary tree tree(leaf(1),leaf(2)). And from the
%% binary trees tree(leaf(1),leaf(2)) and leaf(4) we can build the binary
%% tree tree(tree(leaf(1), leaf(2)), leaf(4)).
%%
%% Now, define a predicate swap/2, which produces the mirror image of the
%% binary tree that is its first argument. For example:
%%
%% ?- swap(tree(tree(leaf(1),leaf(2)), leaf(4)), T).
%% T = tree(leaf(4), tree(leaf(2), leaf(1))).
%% yes

swap(leaf(X), leaf(X)).
swap(tree(A,B), tree(C,D)) :-
    swap(C,B),
    swap(A,D).

%% If we're asked to swap a leaf, we should just return the leaf itself. For
%% trees, we have to apply swap/2 to their children and swap the results.
