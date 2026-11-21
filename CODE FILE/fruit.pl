% Fruit and color facts
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grapes, green).
fruit_color(orange, orange).
fruit_color(mango, yellow).
fruit_color(guava, green).

% Find fruit color
find_color(Fruit, Color) :-
    fruit_color(Fruit, Color).