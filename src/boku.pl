/*******************************
   * para correr o jogo e' consultar este ficheiro e fazer start(X). *
   *******************************/

:- include('print.pl').
:- include('board.pl').
:- include('capture.pl').
:- include('diagonals.pl').
:- include('diagonals_win.pl').
:- include('win_conditions.pl').

start(X) :-
        printMenu(X),
        generateEmptyBoard(X),
        printBoard(X),
        playGame(X).

playGame(X) :-          
        player1turn(X, X1),
        printBoard(X1),
        player2turn(X1, X2),
        printBoard(X2),
        playGame(X2).


player1turn(Board1, Board3) :-
        write('\nPlayer 1\n'),
        write('Choose the position where you want to place your piece (X and then Y):\n'),
        write('X: '),
        read(Xpos),
        write('\n'),
        write('Y: '),
        read(Ypos),
        write('\n'),
        verifyCoordenates(Board1, Xpos, Ypos,'W', Board2),
        isCapturePlay(Board2, Xpos, Ypos, Board3),
        write('chegou a player1 trurn'),
        write(Board3),
        write('\n').
% isWinCondition(Board3,Xpos,Ypos).

player2turn(Board1, Board3) :-
        write('\nPlayer 2\n'),
        write('Choose the position where you want to place your piece (X and then Y):\n'),
        write('X: '),
        read(Xpos),
        write('\n'),
        write('Y: '),
        read(Ypos),
        write('\n'),
        verifyCoordenates(Board1, Xpos, Ypos,'B', Board2),
        isCapturePlay(Board2, Xpos, Ypos,Board3),
        write('chegou a player2 trurn'),
        write(Board3),
        write('\n').
%isWinCondition(Board3,Xpos,Ypos).





