%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 4.1
%%
%% How does Prolog respond to the following queries?

%% 1.  [a,b,c,d] = [a,[b,c,d]].  (false)
%% 2.  [a,b,c,d] = [a|[b,c,d]].  (true)
%% 3.  [a,b,c,d] = [a,b,[c,d]].  (false)
%% 4.  [a,b,c,d] = [a,b|[c,d]].  (true)
%% 5.  [a,b,c,d] = [a,b,c,[d]].  (false)
%% 6.  [a,b,c,d] = [a,b,c|[d]].  (true)
%% 7.  [a,b,c,d] = [a,b,c,d,[]]. (false)
%% 8.  [a,b,c,d] = [a,b,c,d|[]]. (true)
%% 9.  [] = _.                   (true)
%% 10. [] = [_].                 (false)
%% 11. [] = [_|[]].              (false)
