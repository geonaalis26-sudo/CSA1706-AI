% Initial facts
fact(rain).
fact(cloudy).

% Rules
rule(wet_ground) :-
    fact(rain).

rule(take_umbrella) :-
    fact(rain).

rule(possible_rain) :-
    fact(cloudy).

% Forward chaining
derive(X) :-
    fact(X).

derive(X) :-
    rule(X).