/*******************************
   * para correr o jogo e' consultar este ficheiro e fazer start(X). *
   *******************************/

:- include('print.pl').
:- include('board.pl').
:- include('capture.pl').
:- include('diagonals.pl').
:- include('diagonals_win.pl').
:- include('win_conditions.pl').

?- use_module(library(random)).

boku(_):- 
        write('***************************************************'),nl,
        write('********   Boku - PLOG - Version 1.0   ************'),nl,
        write('***************************************************'),nl,
        nl,nl,
        nl, write('1 - Player VS Player'),
        nl, write('2 - Player VS Computer'),
        nl, write('3 - Computer VS Computer'),
        nl, write('4 - Exit Game'),nl,
        write('Choose the mode you want to play: '),nl,nl,
        read(Choice),
        menu(Choice).

menu(Choice):- Choice == 1, 
        start(_).
menu(Choice):- Choice == 2, 
        pvsPC(_).
menu(Choice):- Choice == 3, 
        pcvsPC(_).
menu(Choice):- Choice == 4, 
        exit(_).

start(X) :-
        printMenu(X),
        generateEmptyBoard(X),
        printBoard(X),
        playGame(X).

pvsPC(_) :- printMenu(X),
        generateEmptyBoard(X),
        printBoard(X),
        playGamevsPC(X).

pcvsPC(_) :- write('ainda nao esta feito pc pc').

exit(_) :- nl,nl,write('See you later!!!!'),nl,nl.

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

%player vs pc
playGamevsPC(X) :- p1(P1xpos, P1ypos),          
        playerturn(X, X1, P1xpos, P1ypos, 'W'),
        printBoard(X1),
        (isWinCondition(X1,P1xpos,P1ypos),nl, endGame(_);
         p2PC(P2xpos, P2ypos),          
         pc2Turn(X1, X2, P2xpos,P2ypos, 'B'),
         printBoard(X2),
         (isWinCondition(X2,P2xpos,P2ypos),nl,endGame(_);
          \+isWinCondition(X2,P2xpos,P2ypos), playGamevsPC(X2)) ).



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


p2PC(P2xpos, P2ypos):- write('\nPlayer 2 - Computer\n'),
        write('Player 2 is choosing his move!\n'),
        generateRandomMove(P2xpos,P2ypos),nl,
        write(P2xpos),nl,
        write(P2ypos),nl,
        write('\n').

generateRandomMove(Xpos,Ypos) :-
        random(1, 11, Ypos),
        randomX(Ypos,Xpos).

randomX(Ypos,Xpos) :- (Ypos == 1,random(1, 5, Xpos));Ypos == 11,random(1, 5, Xpos).
randomX(Ypos,Xpos) :- (Ypos == 2,random(1, 6, Xpos));Ypos == 10,random(1, 6, Xpos).
randomX(Ypos,Xpos) :- (Ypos == 3,random(1, 7, Xpos));Ypos == 9,random(1, 7, Xpos).
randomX(Ypos,Xpos) :- (Ypos == 4,random(1, 8, Xpos));Ypos == 8,random(1, 8, Xpos).
randomX(Ypos,Xpos) :- (Ypos == 5,random(1, 9, Xpos));Ypos == 7,random(1, 9, Xpos).
randomX(Ypos,Xpos) :- Ypos == 6,random(1, 10, Xpos).

playerturn(Board1, Board3, Xpos, Ypos, Player) :-
        verifyCoordenates(Board1, Xpos, Ypos,Player, Board2),
        isCapturePlay(Board2, Xpos, Ypos, Board3).


pc2Turn(Board1, Board3, Xpos, Ypos, Player) :-
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
        nl,nl,nl.


