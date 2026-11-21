% Initial facts
rain.
cloudy.

% Rules
wet_ground :-
    rain.

take_umbrella :-
    rain.

possible_rain :-
    cloudy.

% Goal checking
check(X) :-
    call(X).