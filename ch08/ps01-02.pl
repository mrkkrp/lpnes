%% -*- Mode: Prolog; -*-
%%
%% Learn Prolog Now! Exercise Solutions
%%
%% Text of this exercise is copyright by Patrick Blackburn, Johan Bos, and
%% Kristina Striegnitz. The proposed solution has been placed into public
%% domain by its author, Mark Karpov.
%%
%% Practical Session 8, Exercise 1 and 2
%%
%% Now for some programming. We suggest the following mini-project, which
%% draws on all you have learned so far. Incidentally, in the Practical
%% Session at the end of Chapter 12 we will be asking to extend this work
%% even further, so do take this project seriously.
%%
%% 1. First, bring together all the things we have learned about DCGs for
%% English into one DCG. In particular, in the text we saw how to use extra
%% arguments to deal with the subject/object distinction, and in the
%% exercises you were asked to use additional arguments to deal with the
%% singular/plural distinction. Write a DCG which handles both. Moreover,
%% write the DCG in such a way that it will produce parse trees, and makes
%% use of a separate lexicon.
%%
%% 2. Once you have done this, extend the DCG so that noun phrases can be
%% modified by adjectives and simple prepositional phrases (that is, it
%% should be able to handle noun phrases such as "the small frightened woman
%% on the table" or "the big fat cow under the shower"). Then, further
%% extend it so that the distinction between first, second, and third person
%% pronouns is correctly handled (both in subject and object form).

%% grammar

s(s(NP, VP), Q, P) --> np(NP, Q, P), vp(VP, Q).

np(np(DET, N), Q, _) --> det(DET, Q), n(N, Q).
np(np(PRO), Q, P) --> pro(PRO, Q, P).
np(np(DET, ADJ, N), Q, _) --> det(DET, Q), adj(ADJ), n(N, Q).
%% variations with prepositional phrases:
np(np(DET, N, PP), Q, _) --> det(DET, Q), n(N, Q), pp(PP).
np(np(PRO, PP), Q, P) --> pro(PRO, Q, P), pp(PP).
np(np(DET, ADJ, N, PP), Q, _) --> det(DET, Q), adj(ADJ), n(N, Q), pp(PP).

pp(pp(PRE, NP)) --> pre(PRE), np(NP, _, object).

vp(vp(V, NP), Q) --> v(V, Q), np(NP, _, object).
vp(vp(V), Q) --> v(V, Q).

det(det(W), Q) --> [W], {lex(W, det, Q)}.
pro(pro(W), Q, P) --> [W], {lex(W, pro, Q, P)}.
n(n(W), Q) --> [W], {lex(W, n, Q)}.
v(v(W), Q) --> [W], {lex(W, v, Q)}.
adj(adj([W])) --> [W], {lex(W, adj)}.
adj(adj([W,Wa])) --> [W,Wa], {lex(W, adj), lex(Wa, adj)}.
pre(pre(W)) --> [W], {lex(W, pre)}.

%% This grammar allows up to 2 adjectives in a row, can you write a grammar
%% that allows indefinite number of adjectives before a noun? If you can,
%% contribute to this repository, share your hacks.

%% lexicon

lex(the, det, _).
lex(a,   det, singular).

lex(woman,   n, singular).
lex(women,   n, plural).
lex(man,     n, singular).
lex(men,     n, plural).
lex(table,   n, singular).
lex(tables,  n, plural).
lex(cow,     n, singular).
lex(cows,    n, plural).
lex(shower,  n, singular).
lex(showers, n, plural).

lex(shoots, v, singular).
lex(shoot,  v, plural).
lex(loves,  v, singular).
lex(love,   v, plural).

lex(small,      adj).
lex(frightened, adj).
lex(big,        adj).
lex(fat,        adj).

lex(above, pre).
lex(at,    pre).
lex(below, pre).
lex(on,    pre).
lex(over,  pre).
lex(under, pre).

lex('I',  pro, plural,   subject).
%% Interestingly, we need more complex rules to make it understand that 'I'
%% is a 'special' pronoun. For now, I will tell Prolog that 'I' is
%% plural. This is a simplification, but sometimes simplifications are
%% good. Remember Unix rule: the worse the better, that is, if your program
%% works in such a way that it's easy to understand, you may let it have
%% minor imperfections.
lex(me,   pro, singular, object).
lex(we,   pro, plural,   subject).
lex(us,   pro, plural,   object).
lex(you,  pro, plural,   subject).
lex(you,  pro, plural,   object).
lex(he,   pro, singular, subject).
lex(him,  pro, singular, object).
lex(she,  pro, singular, subject).
lex(her,  pro, singular, object).
lex(they, pro, plural,   subject).
lex(them, pro, plural,   object).

%% ?- s(T,Q,P,[the,men,shoot,a,woman],[]).
%% T = s(np(det(the),
%%          n(men)),
%%       vp(v(shoot),
%%       np(det(a),
%%          n(woman)))),
%% Q = plural ;
%% false.

%% ?- s(T,Q,P,[she,shoots,she],[]).
%% false.

%% ?- s(T,Q,P,['I',shoot,a,woman],[]).
%% T = s(np(pro('I')),
%%       vp(v(shoot),
%%       np(det(a),
%%          n(woman)))),
%% Q = plural,
%% P = subject ;
%% false.

%% ?- np(T,Q,P,[the,small,frightened,woman,on,the,table],[]).
%% T = np(det(the),
%%        adj([small, frightened]),
%%        n(woman),
%%        pp(pre(on),
%%           np(det(the),
%%              n(table)))),
%% Q = singular ;
%% false.

%% ?- s(T,Q,P,[the,men,love,the,small,frightened,woman,on,the,table],[]).
%% T = s(np(det(the),
%%          n(men)),
%%       vp(v(love),
%%       np(det(the),
%%          adj([small, frightened]),
%%          n(woman),
%%          pp(pre(on),
%%             np(det(the),
%%                n(table)))))),
%% Q = plural ;
%% false.
