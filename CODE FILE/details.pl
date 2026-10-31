% Student Database
student(101, ram).
student(102, sam).
student(103, john).

% Teacher Database
teacher(t1, raja).
teacher(t2, kumar).

% Subject Code Database
subject(c101, java).
subject(c102, python).
subject(c103, prolog).

% Student-Teacher-Subject Relationship
studies(101, t1, c101).
studies(102, t2, c102).
studies(103, t1, c103).

% Display Student, Teacher and Subject
details(Student, Teacher, Subject) :-
    student(Student, SName),
    teacher(Teacher, TName),
    subject(Subject, SubName),
    studies(Student, Teacher, Subject),
    write('Student: '), write(SName),
    write(' Teacher: '), write(TName),
    write(' Subject: '), write(SubName).