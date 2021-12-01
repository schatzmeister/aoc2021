:- use_module(library(strings)).

main :-
    open("./day1.txt", read, Stream),
    read_string(Stream, "", "", _, String),
    string_lines(String, Lines),
    maplist(number_string, Res, Lines),
    increasing(Res, Inc),
    sum(Inc, Sum),
    write(Sum).

increasing([_], []).
increasing([H, N | T], [1 | T2]) :-
    H < N,
    increasing([N | T], T2).
increasing([H, N | T], [0 | T2]) :-
    H >= N,
    increasing([N | T], T2).

sum([], 0).
sum([H|T], S) :-
    sum(T, S1),
    S is H + S1.