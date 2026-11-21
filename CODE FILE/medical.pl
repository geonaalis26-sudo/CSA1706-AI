% Symptoms
symptom(john, fever).
symptom(john, cough).
symptom(john, headache).

symptom(anna, sneezing).
symptom(anna, cold).

symptom(peter, fever).
symptom(peter, bodypain).

% Diagnosis rules
disease(X, flu) :-
    symptom(X, fever),
    symptom(X, cough).

disease(X, common_cold) :-
    symptom(X, sneezing),
    symptom(X, cold).

disease(X, viral_fever) :-
    symptom(X, fever),
    symptom(X, bodypain).