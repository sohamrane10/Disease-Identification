go:- hypothesis(Disease),
write('I believe you have: '),
write(Disease),
nl,
undo.

/* Hypothesis that should be tested */
hypothesis(cold) :- cold, !.
hypothesis(flu) :- flu, !.
hypothesis(ebola) :- ebola, !.
hypothesis(measles) :- measles, !.
hypothesis(arthritis) :- arthritis, !.
hypothesis(unknown).	/* no diagnosis */

/* Hypothesis Identification Rules */
cold :-
verify(headache),
verify(runny_nose),
verify(sneezing),
verify(sore_throat).

flu :-
verify(fever),
verify(headache),
verify(chills),
verify(body_ache).

ebola :-
verify(headache),
verify(rash),
verify(nausea),
verify(bleeding).

measles :-
verify(fever),
verify(runny_nose),
verify(rash),
verify(conjunctivitis).

arthritis :-
verify(pain_in_joints),
verify(stiffness_in_joints),
verify(fatigue).

/* how to ask question */
ask(Question) :-
write('Does the patient have following symptom: '),
write(Question),
write('? '),
read(Response),
nl,
( (Response == yes ; Response == y)
->
assert(yes(Question)) ;
assert(no(Question)), fail).

:- dynamic yes/1,no/1.
/* How to verify something */
verify(S) :-
	(yes(S)
	->
		true;
			(no(S)
			->
			fail ;
				ask(S))).

/* undo all yes/no assertions */

undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.