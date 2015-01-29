%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Exercise 9.2
%%
%% How does Prolog respond to the following queries?

%% ?- .(a, .(b, .(c, []))) = [a,b,c].                true
%% ?- .(a, .(b, .(c, []))) = [a,b|[c]].              true
%% ?- .(.(a, []), .(.(b, []), .(.(c, []), []))) = X. X = [[a],[b],[c]].
%% ?- .(a, .(b, .(.(c, []), []))) = [a,b|[c]].       false
