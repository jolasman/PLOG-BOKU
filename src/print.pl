/***************************
* OUTPUT RELATED FUNCTIONS *
***************************/

/*Printing an entire board */
printBoard([]).
printBoard([X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11]) :- 
        printLine1(X1),
        printLine2(X2),
        printLine3(X3),
        printLine4(X4),
        printLine5(X5),
        printLine6(X6),
        printLine5(X7),
        printLine4(X8),
        printLine3(X9),
        printLine2(X10),
        printLine1(X11).

printLiteralLine([X|Xs]) :- write(X), printLiteralLine(Xs).

printLine1([X|Xs]) :- write('     '), printLine1aux([X|Xs]).
printLine1aux([]) :- write('|\n').
printLine1aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine1aux(Xs).
printLine1aux([X|Xs]) :- X == '#', printLine1aux(Xs).

printLine2([X|Xs]) :- write('    '), printLine2aux([X|Xs]).
printLine2aux([]) :- write('|\n').
printLine2aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine2aux(Xs).
printLine2aux([X|Xs]) :- X == '#', printLine2aux(Xs).

printLine3([X|Xs]) :- write('   '), printLine3aux([X|Xs]).
printLine3aux([]) :- write('|\n').
printLine3aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine3aux(Xs).
printLine3aux([X|Xs]) :- X == '#', printLine3aux(Xs).

printLine4([X|Xs]) :- write('  '), printLine4aux([X|Xs]).
printLine4aux([]) :- write('|\n').
printLine4aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine4aux(Xs).
printLine4aux([X|Xs]) :- X == '#', printLine4aux(Xs).

printLine5([X|Xs]) :- write(' '), printLine5aux([X|Xs]).
printLine5aux([]) :- write('|\n').
printLine5aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine5aux(Xs).
printLine5aux([X|Xs]) :- X == '#', printLine5aux(Xs).

printLine6([X|Xs]) :- write(''), printLine6aux([X|Xs]).
printLine6aux([]) :- write('|\n').
printLine6aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine6aux(Xs).
printLine6aux([X|Xs]) :- X == '#', printLine6aux(Xs).