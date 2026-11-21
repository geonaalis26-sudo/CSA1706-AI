% Disease and diet suggestions

diet(diabetes, 'Avoid sugar and sweets').
diet(obesity, 'Eat low calorie food').
diet(anemia, 'Eat iron rich foods').
diet(bp, 'Reduce salt intake').
diet(heart, 'Avoid oily and fatty foods').

% Query rule
suggest_diet(Disease, Diet) :-
    diet(Disease, Diet).