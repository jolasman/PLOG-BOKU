/*******************************
* para correr o jogo e' consultar este ficheiro e fazer start(X). *
*******************************/

:- include('print.pl').
:- include('board.pl').

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

      
player1turn(Board1, Board2) :-
        write('\nJOGADOR 1\n'),
        write('Escolha a posicao onde pretende colocar a sua peca (X e de seguida Y):\n'),
        write('X: '),
        read(Xpos),
        write('\n'),
        write('Y: '),
        read(Ypos),
        write('\n'),
        verifyCoordenates(Board1, Xpos, Ypos,'W', Board2).

player2turn(Board1, Board2) :-
        write('\nJOGADOR 2\n'),
        write('Escolha a posicao onde pretende colocar a sua peca (X e de seguida Y):\n'),
        write('X: '),
        read(Xpos),
        write('\n'),
        write('Y: '),
        read(Ypos),
        write('\n'),
        verifyCoordenates(Board1, Xpos, Ypos,'B', Board2).





