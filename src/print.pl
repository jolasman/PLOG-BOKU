/***************************
* OUTPUT RELATED FUNCTIONS *
***************************/

/*Printing an entire board */
printBoard([]).
printBoard([Numbers, X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11]) :- 
        printLinenumbers(Numbers),
        printLine1(X1),
        printLine2(X2),
        printLine3(X3),
        printLine4(X4),
        printLine5(X5),
        printLine6(X6),
        printLine7(X7),
        printLine8(X8),
        printLine9(X9),
        printLine10(X10),
        printLine11(X11).

printLiteralLine([X|Xs]) :- write(X), printLiteralLine(Xs).

% print das letras
printLinenumbers([X|Xs]) :- write('   '), printLinenumbersaux([X|Xs]).
printLinenumbersaux([]) :- write('|\n').
printLinenumbersaux([X|Xs]) :- X \== '#', write('|'), write(X),  printLinenumbersaux(Xs).
printLinenumbersaux([X|Xs]) :- X == '#',  printLinenumbersaux(Xs).


printLine1([X|Xs]) :- write('1-      '), printLine1aux([X|Xs]).
printLine1aux([]) :- write('|\n').
printLine1aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine1aux(Xs).
printLine1aux([X|Xs]) :- X == '#', printLine1aux(Xs).

printLine2([X|Xs]) :- write('2-     '), printLine2aux([X|Xs]).
printLine2aux([]) :- write('|\n').
printLine2aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine2aux(Xs).
printLine2aux([X|Xs]) :- X == '#', printLine2aux(Xs).

printLine3([X|Xs]) :- write('3-    '), printLine3aux([X|Xs]).
printLine3aux([]) :- write('|\n').
printLine3aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine3aux(Xs).
printLine3aux([X|Xs]) :- X == '#', printLine3aux(Xs).

printLine4([X|Xs]) :- write('4-   '), printLine4aux([X|Xs]).
printLine4aux([]) :- write('|\n').
printLine4aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine4aux(Xs).
printLine4aux([X|Xs]) :- X == '#', printLine4aux(Xs).

printLine5([X|Xs]) :- write('5-  '), printLine5aux([X|Xs]).
printLine5aux([]) :- write('|\n').
printLine5aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine5aux(Xs).
printLine5aux([X|Xs]) :- X == '#', printLine5aux(Xs).

printLine6([X|Xs]) :- write('6- '), printLine6aux([X|Xs]).
printLine6aux([]) :- write('|\n').
printLine6aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine6aux(Xs).
printLine6aux([X|Xs]) :- X == '#', printLine6aux(Xs).

printLine7([X|Xs]) :- write('7-  '), printLine7aux([X|Xs]).
printLine7aux([]) :- write('|\n').
printLine7aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine7aux(Xs).
printLine7aux([X|Xs]) :- X == '#', printLine7aux(Xs).

printLine8([X|Xs]) :- write('8-   '), printLine8aux([X|Xs]).
printLine8aux([]) :- write('|\n').
printLine8aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine8aux(Xs).
printLine8aux([X|Xs]) :- X == '#', printLine8aux(Xs).

printLine9([X|Xs]) :- write('9-    '), printLine9aux([X|Xs]).
printLine9aux([]) :- write('|\n').
printLine9aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine9aux(Xs).
printLine9aux([X|Xs]) :- X == '#', printLine9aux(Xs).

printLine10([X|Xs]) :- write('10-    '), printLine10aux([X|Xs]).
printLine10aux([]) :- write('|\n').
printLine10aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine10aux(Xs).
printLine10aux([X|Xs]) :- X == '#', printLine10aux(Xs).

printLine11([X|Xs]) :- write('11-     '), printLine11aux([X|Xs]).
printLine11aux([]) :- write('|\n').
printLine11aux([X|Xs]) :- X \== '#', write('|'), write(X), printLine11aux(Xs).
printLine11aux([X|Xs]) :- X == '#', printLine11aux(Xs).


