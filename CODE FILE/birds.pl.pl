
% Bird facts
bird(parrot).
bird(pigeon).
bird(eagle).
bird(ostrich).
bird(penguin).
bird(sparrow).

% Flying birds
can_fly(parrot).
can_fly(pigeon).
can_fly(eagle).
can_fly(sparrow).

% Non-flying birds
cannot_fly(ostrich).
cannot_fly(penguin).

% Check flying ability
check_flight(Bird) :-
    can_fly(Bird),
    write(Bird),
    write(' can fly.').

check_flight(Bird) :-
    cannot_fly(Bird),
    write(Bird),
    write(' cannot fly.').

check_flight(Bird) :-
    \+ bird(Bird),
    write('Bird not found.').
