:- use_module(library(strings)).
:- use_module(library(lists)).

main :-
    % Preprocessing
    open("./day1.txt", read, Stream),
    read_string(Stream, "", "", _, String),
    string_lines(String, Lines),
    maplist(number_string, Parsed, Lines),
    % Problem 1
    increasing(Parsed, Inc),
    sum_list(Inc, Sum),
    writeln(Sum),
    % Problem 2
    increasing2(Parsed, Inc2),
    sum_list(Inc2, Sum2),
    writeln(Sum2).

% Problem 1
increasing([_], []).
increasing([H, N | T], [1 | T2]) :-
    H < N,
    increasing([N | T], T2).
increasing([H, N | T], [0 | T2]) :-
    H >= N,
    increasing([N | T], T2).

% Problem 2
increasing2([_, _, _], []).
increasing2([H, N1, N2, N3 | T], [1 | T2]) :-
    (H + N1 + N2) < (N1 + N2 + N3),
    increasing2([N1, N2, N3 | T], T2).
increasing2([H, N1, N2, N3 | T], [0 | T2]) :-
    (H + N1 + N2) >= (N1 + N2 + N3),
    increasing2([N1, N2, N3 | T], T2).