%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 2.1
%%
%% Which of the following pairs of terms unify? Where relevant, give the
%% variable instantiations that lead to successful unification.

%% 1.  bread = bread
%% true
%% 2.  'Bread' = bread
%% false
%% 3.  'bread' = bread
%% true
%% 4.  Bread = bread
%% true, Bread = bread
%% 5.  bread = sausage
%% false
%% 6.  food(bread) = bread
%% false
%% 7.  food(bread) = X
%% true, X = food(bread)
%% 8.  food(X) = food(bread)
%% true, X = bread
%% 9.  food(bread, X) = food(Y, sausage)
%% true, X = sausage, Y = bread
%% 10. food(bread, X, beer) = food(Y, sausage, X)
%% false
%% 11. food(bread, X, beer) = food(Y, kahuna_burger)
%% false
%% 12. food(X) = X
%% true, X = food(X)
%% 13. meal(food(bread), drink(beer)) = meal (X, Y)
%% true, X = food(bread), Y = drink(beer).
%% 14. meal(food(bread), X) = meal(X, drink(beer))
%% false
