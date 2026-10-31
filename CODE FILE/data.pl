% Database of names and dates of birth

person(george, 12, 5, 2002).
person(anna, 25, 8, 2003).
person(john, 10, 1, 2001).
person(liz, 15, 3, 2004).

% Query to display name and DOB
display(Name, Day, Month, Year) :-
    person(Name, Day, Month, Year).