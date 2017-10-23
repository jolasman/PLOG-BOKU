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

%se o player1 ganhar faz endgame, se nao ganhar verifica se o player dois ganha ou nao.
%se o player2 ganhar acaba, se nao ganhar chama de novo
playGame(X) :- p1(P1xpos, P1ypos),          
        playerturn(X, X1, P1xpos, P1ypos, 'W'),
        printBoard(X1),
        (isWinCondition(X1,P1xpos,P1ypos),nl, endGame(_);
         p2(P2xpos, P2ypos),          
         playerturn(X1, X2, P2xpos,P2ypos, 'B'),
         printBoard(X2),
        (isWinCondition(X2,P2xpos,P2ypos),nl,endGame(_);
         \+isWinCondition(X2,P2xpos,P2ypos), playGame(X2)) ).

p1(P1xpos, P1ypos):-  write('\nPlayer 1\n'),
        write('Choose the position where you want to place your piece (X and then Y):\n'),
        write('X: '),
        read(Xpos),
        P1xpos is Xpos,
        write('\n'),
        write('Y: '),
        read(Ypos),
        P1ypos is Ypos,
        write('\n').

p2(P2xpos, P2ypos):- write('\nPlayer 2\n'),
        write('Choose the position where you want to place your piece (X and then Y):\n'),
        write('X: '),
        read(Xpos),
        P2xpos is Xpos,
        write('\n'),
        write('Y: '),
        read(Ypos),
        P2ypos is Ypos,
        write('\n').

playerturn(Board1, Board3, Xpos, Ypos, Player) :-
        verifyCoordenates(Board1, Xpos, Ypos,Player, Board2),
        isCapturePlay(Board2, Xpos, Ypos, Board3).

endGame(_):- 
        write('****************************************************'),nl,
        write('******************           ***********************'),nl,
        write('****************** Game Over ***********************'),nl,
        write('******************           ***********************'),nl,
        write('****************************************************'),nl,
        write('*************** Boku Version 1.0 *******************'),nl,
        write('***************                  *******************'),nl,
        write('****************************************************'),nl,
        nl,nl,nl,nl,nl,nl,nl,nl.


