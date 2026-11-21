
% Monkey Banana Problem

% Possible locations
location(atdoor).
location(atwindow).
location(middle).

% Initial state
initial(state(atdoor, onfloor, atwindow, hasnot)).

% Monkey walks
move(state(P, onfloor, B, H),
     walk(Q),
     state(Q, onfloor, B, H)) :-
     location(Q),
     P \= Q,
     P \= B.

% Monkey pushes the box
move(state(P, onfloor, P, H),
     push(Q),
     state(Q, onfloor, Q, H)) :-
     location(Q),
     P \= Q.

% Monkey climbs the box
move(state(P, onfloor, P, H),
     climb,
     state(P, onbox, P, H)).

% Monkey grabs banana
move(state(middle, onbox, middle, hasnot),
     grab,
     state(middle, onbox, middle, has)).

% Goal condition
goal(state(_, _, _, has)).

% Solution
solve(State, _, []) :-
    goal(State).

solve(State, Visited, [Action|Rest]) :-
    move(State, Action, Next),
    \+ member(Next, Visited),
    solve(Next, [Next|Visited], Rest).

% Main predicate
monkey_banana(Solution) :-
    initial(State),
    solve(State, [State], Solution).
