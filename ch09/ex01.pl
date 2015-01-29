%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 9.1
%%
%% Which of the following queries succeed, and which fail?

%% ?- 12 is 2 * 6.                   true
%% ?- 14 =\= 2 * 6.                  true
%% ?- 14 = 2 * 7.                    false
%% ?- 14 == 2 * 7.                   false
%% ?- 14 \== 2 * 7.                  true
%% ?- 14 =:= 2 * 7.                  true
%% ?- [1,2,3|[d,e]] == [1,2,3,d,e].  true
%% ?- 2 + 3 == 3 + 2.                false
%% ?- 2 + 3 =:= 3 + 2.               true
%% ?- 7 - 2 =\= 9 - 2.               true
%% ?- p == 'p'.                      true
%% ?- p =\= 'p'.                     ERROR: =\=/2: `p/0' is not a function
%% ?- vincent == VAR.                false
%% ?- vincent = VAR, VAR == vincent. VAR = vincent
