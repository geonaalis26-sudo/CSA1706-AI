% Planet Database

planet(mercury, 57, 4222).
planet(venus, 108, 8640).
planet(earth, 150, 24).
planet(mars, 228, 25).
planet(jupiter, 778, 10).
planet(saturn, 1427, 11).
planet(uranus, 2871, 17).
planet(neptune, 4497, 16).

% Display planet details
display(Name, Distance, Day) :-
    planet(Name, Distance, Day).