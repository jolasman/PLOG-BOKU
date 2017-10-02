
/* Empty board generation */
generateEmptyBoard(X) :- 
        emptyBoardAux(L1, 1),
        emptyBoardAux(L2, 2),
        emptyBoardAux(L3, 3),
        emptyBoardAux(L4, 4),
        emptyBoardAux(L5, 5),
        emptyBoardAux(L6, 6),
        emptyBoardAux(L7, 7),
        emptyBoardAux(L8, 8),
        emptyBoardAux(L9, 9),
        emptyBoardAux(L10, 10),
        emptyBoardAux(L11, 11),
        append([], [L1], X1),
        append(X1, [L2], X2),
        append(X2, [L3], X3),
        append(X3, [L4], X4),
        append(X4, [L5], X5),
        append(X5, [L6], X6),
        append(X6, [L7], X7),
        append(X7, [L8], X8),
        append(X8, [L9], X9),
        append(X9, [L10], X10),
        append(X10, [L11], X).


emptyBoardAux(L, N) :-
        N == 1,
        append([],[' ',' ',' ',' ',' ','#','#','#','#','#'],L).
emptyBoardAux(L, N) :-
        N == 2,
        append([],[' ',' ',' ',' ',' ',' ','#','#','#','#'],L).
emptyBoardAux(L, N) :-
        N == 3,
        append([],[' ',' ',' ',' ',' ',' ',' ','#','#','#'],L).
emptyBoardAux(L, N) :-
        N == 4,
        append([],[' ',' ',' ',' ',' ',' ',' ',' ','#','#'],L).
emptyBoardAux(L, N) :-
        N == 5,
        append([],[' ',' ',' ',' ',' ',' ',' ',' ',' ','#'],L).
emptyBoardAux(L, N) :-
        N == 6,
        append([],[' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','#'],L).
emptyBoardAux(L, N) :-
        N == 7,
        append([],['#',' ',' ',' ',' ',' ',' ',' ',' ',' '],L).
emptyBoardAux(L, N) :-
        N == 8,
        append([],['#','#',' ',' ',' ',' ',' ',' ',' ',' '],L).
emptyBoardAux(L, N) :-
        N == 9,
        append([],['#','#','#',' ',' ',' ',' ',' ',' ',' '],L).
emptyBoardAux(L, N) :-
        N == 10,
        append([],['#','#','#','#',' ',' ',' ',' ',' ',' '],L).
emptyBoardAux(L, N) :-
        N == 11,
        append([],['#','#','#','#','#',' ',' ',' ',' ',' '],L).

