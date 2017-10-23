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

playGame(X) :- %repeat,
        p1(P1xpos, P1ypos),          
        player1turn(X, X1, P1xpos, P1ypos),
        printBoard(X1),
       (isWinCondition(X1,P1xpos,P1ypos), write('YES'),nl;
        write('here we go again'),nl,
        p2(P2xpos, P2ypos),          
        player2turn(X1, X2, P2xpos,P2ypos),
        printBoard(X2),
        playGame(X2),
        isWinCondition(X2,P2xpos,P2ypos)).

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

player1turn(Board1, Board3, Xpos, Ypos) :-
        verifyCoordenates(Board1, Xpos, Ypos,'W', Board2),
        isCapturePlay(Board2, Xpos, Ypos, Board3).

player2turn(Board1, Board3, Xpos, Ypos) :-
        verifyCoordenates(Board1, Xpos, Ypos,'B', Board2),
        isCapturePlay(Board2, Xpos, Ypos,Board3).


%       repeat,   
%        player1turn(X, X1, X1pos,Y1pos),
%        printBoard(X1),
%        (isWinCondition(X1,X1pos,Y1pos);
%         player2turn(X1, X2, X2pos,Y2pos),
%         printBoard(X2),
%         isWinCondition(X2,X2pos,Y2pos)).



