%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 4.2
%%
%% Which of the following are syntactically correct lists? If the
%% representation is correct, how many elements does the list have?

%% 1.  [1|[2,3,4]]            (correct list, 4 elements)
%% 2.  [1,2,3|[]]             (correct list, 3 elements)
%% 3.  [1|2,3,4]              (syntax error)
%% 4.  [1|[2|[3|[4]]]]        (correct list, 4 elements)        
%% 5.  [1,2,3,4|[]]           (correct list, 4 elements)
%% 6.  [[]|[]]                (correct list, 1 element)
%% 7.  [[1,2]|4]              (syntax error)
%% 8.  [[1,2],[3,4]|[5,6,7]]  (correct list, 5 elements)
