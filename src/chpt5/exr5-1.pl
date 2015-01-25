%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 5.1
%%
%% How does Prolog respond to the following queries?

%% 1.  X = 3 * 4.                     X = 3 * 4.
%% 2.  X is 3 * 4.                    X = 12.
%% 3.  4 is X.                        Arguments aren't sufficiently instantiated
%% 4.  X = Y.                         X = Y.
%% 5.  3 is 1 + 2.                    true.
%% 6.  3 is +(1, 2).                  true.
%% 7.  3 is X + 2.                    Arguments aren't sufficiently instantiated
%% 8.  X is 1 + 2.                    X = 3.
%% 9.  1 + 2 is 1 + 2.                false.
%% 10. is(X, +(1, 2)).                X = 3.
%% 11. 3 + 2 = +(3, 2).               true.
%% 12. *(7, 5) = 7 * 5.               true.
%% 13. *(7, +(3, 2)) = 7 * (3 + 2).   true.
%% 14. *(7, (3 + 2)) = 7 * (3 + 2).   true.
%% 15. 7 * 3 + 2 = *(7, +(3, 2)).     false.
%% 16. *(7, (3 + 2)) = 7 * (+(3, 2)). true.
