/*************************************** win conditions **************************************/

        
%Para verificar se a jogada é uma jogada de win
isWinCondition(Board,X,Y) :- verifyWinDiagonals(Board, X,Y),
        verifyWinHorizontal(Board, X,Y).


/******************** parte de cima do tabuleiro**********************/

%linha1 ate linha 2
verifyWinDiagonals(Board,X,Y):- Y < 3,
        verifyWinDiagonal1(Board, X, Y),
        verifyWinDiagonal3(Board, X, Y).

%linha3
verifyWinDiagonals(Board,X,Y):- Y == 3,
        X == 1,
        verifyWinDiagonal3(Board, X, Y).

%linha3
verifyWinDiagonals(Board,X,Y):- Y == 3,
        X > 1,
        X < 7,
        verifyWinDiagonal1(Board, X, Y),
        verifyWinDiagonal3(Board, X, Y).
%linha3
verifyWinDiagonals(Board,X,Y):- Y == 3,
        X == 7,
        verifyWinDiagonal1(Board, X, Y).

%linha4
verifyWinDiagonals(Board,X,Y):- Y == 4,
        X < 3,
        verifyWinDiagonal3(Board, X, Y).

%linha4
verifyWinDiagonals(Board,X,Y):- Y == 4,
        X > 2,
        X < 7,
        verifyWinDiagonal1(Board, X, Y),
        verifyWinDiagonal3(Board, X, Y).
%linha4
verifyWinDiagonals(Board,X,Y):- Y == 4,
        X > 6,
        verifyWinDiagonal1(Board, X, Y).

%linha5
verifyWinDiagonals(Board,X,Y):- Y == 5,
        X < 4,
        verifyWinDiagonal2(Board, X, Y),
        verifyWinDiagonal3(Board, X, Y).

%linha5
verifyWinDiagonals(Board,X,Y):- Y == 5,
        X == 4,
        verifyWinDiagonal1(Board, X, Y),
        verifyWinDiagonal2(Board, X, Y),
        verifyWinDiagonal3(Board, X, Y).
%linha5
verifyWinDiagonals(Board,X,Y):- Y == 5,
        X == 5,
        verifyWinDiagonal1(Board, X, Y),
        verifyWinDiagonal2(Board, X, Y),
        verifyWinDiagonal3(Board, X, Y),
        verifyWinDiagonal4(Board, X, Y).
%linha5
verifyWinDiagonals(Board,X,Y):- Y == 5,
        X == 6,
        verifyWinDiagonal1(Board, X, Y),
        verifyWinDiagonal3(Board, X, Y),
        verifyWinDiagonal4(Board, X, Y).
%linha5
verifyWinDiagonals(Board,X,Y):- Y == 5,
        X > 6,
        verifyWinDiagonal1(Board, X, Y),
        verifyWinDiagonal4(Board, X, Y).
%linha6
verifyWinDiagonals(Board,X,Y):- Y == 6,
        X < 5,
        verifyWinDiagonal2(Board, X, Y),
        verifyWinDiagonal3(Board, X, Y).
%linha6
verifyWinDiagonals(Board,X,Y):- Y == 6,
        X > 4,
        X < 7,
        verifyWinDiagonal1(Board, X, Y),
        verifyWinDiagonal2(Board, X, Y),
        verifyWinDiagonal3(Board, X, Y),
        verifyWinDiagonal4(Board, X, Y).
%linha6
verifyWinDiagonals(Board,X,Y):- Y == 6,
        X > 6,
        verifyWinDiagonal1(Board, X, Y),
        verifyWinDiagonal4(Board, X, Y).

/*************************************************************/
/******************** parte de baixo do tabuleiro**********************/


%linha11
verifyWinDiagonals(Board,X,Y):- Y > 7,
        Y < 12,
        X > 0,
        verifyWinDiagonal44(Board, X, Y),
        verifyWinDiagonal22(Board, X, Y).
%linha7
verifyWinDiagonals(Board,X,Y):- Y == 7,
        X < 4,
        verifyWinDiagonal22(Board, X, Y),
        verifyWinDiagonal33(Board, X, Y).
%linha7
verifyWinDiagonals(Board,X,Y):- Y == 7,
        X > 3,
        X < 6,
        verifyWinDiagonal11(Board, X, Y),
        verifyWinDiagonal22(Board, X, Y),
        verifyWinDiagonal33(Board, X, Y),
        verifyWinDiagonal44(Board, X, Y).
%linha7
verifyWinDiagonals(Board,X,Y):- Y == 7,
        X == 6,
        verifyWinDiagonal11(Board, X, Y),
        verifyWinDiagonal22(Board, X, Y),
        verifyWinDiagonal44(Board, X, Y).
%linha7
verifyWinDiagonals(Board,X,Y):- Y == 7,
        X > 6,
        verifyWinDiagonal11(Board, X, Y),
        verifyWinDiagonal44(Board, X, Y).


/******************************************************************************************/

%linha1
verifyWinHorizontal(Board,X,Y):- Y == 1,
        X == 1,
        verifyWinHorizontal1(Board,X,Y).
%linha1
verifyWinHorizontal(Board,X,Y):- Y == 1,
        X == 5,
        verifyWinHorizontal2(Board,X,Y).
%linha1
verifyWinHorizontal(_,X,Y):- Y == 1,
        X > 1,
        X < 5.
%linha2
verifyWinHorizontal(Board,X,Y):- Y == 2,
        X < 3,
        verifyWinHorizontal1(Board,X,Y).
%linha2  
verifyWinHorizontal(Board,X,Y):- Y == 2,
        X > 4,
        verifyWinHorizontal2(Board,X,Y).
%linha2
verifyWinHorizontal(_,X,Y):- Y == 2,
        X > 2,
        X < 5.
%linha3
verifyWinHorizontal(Board,X,Y):- Y == 3,
        X < 3,
        verifyWinHorizontal1(Board,X,Y).
%linha3  
verifyWinHorizontal(Board,X,Y):- Y == 3,
        X > 4,
        verifyWinHorizontal2(Board,X,Y).  
%linha3  
verifyWinHorizontal(_,X,Y):- Y == 3,
        X > 2,
        X < 5.  
%linha4
verifyWinHorizontal(Board,X,Y):- Y == 4,
        X < 5,
        verifyWinHorizontal1(Board,X,Y).
%linha4  
verifyWinHorizontal(Board,X,Y):- Y == 4,
        X > 4,
        verifyWinHorizontal2(Board,X,Y).  
%linha5
verifyWinHorizontal(Board,X,Y):- Y == 5,
        X < 6,
        verifyWinHorizontal1(Board,X,Y).
%linha5  
verifyWinHorizontal(Board,X,Y):- Y == 5,
        X > 4,
        verifyWinHorizontal2(Board,X,Y). 
%linha6
verifyWinHorizontal(Board,X,Y):- Y == 6,
        X < 7,
        verifyWinHorizontal1(Board,X,Y).
%linha6  
verifyWinHorizontal(Board,X,Y):- Y == 6,
        X > 4,
        verifyWinHorizontal2(Board,X,Y). 
%linha7
verifyWinHorizontal(Board,X,Y):- Y == 7,
        X < 6,
        verifyWinHorizontal1(Board,X,Y).
%linha7  
verifyWinHorizontal(Board,X,Y):- Y == 7,
        X > 4,
        verifyWinHorizontal2(Board,X,Y). 
%linha8
verifyWinHorizontal(Board,X,Y):- Y == 8,
        X < 5,
        verifyWinHorizontal1(Board,X,Y).
%linha8 
verifyWinHorizontal(Board,X,Y):- Y == 8,
        X > 4,
        verifyWinHorizontal2(Board,X,Y). 
%linha9
verifyWinHorizontal(Board,X,Y):- Y == 9,
        X < 4,
        verifyWinHorizontal1(Board,X,Y).
%linha9
verifyWinHorizontal(Board,X,Y):- Y == 9,
        X > 4,
        verifyWinHorizontal2(Board,X,Y).
%linha9
verifyWinHorizontal(_,X,Y):- Y == 9,
        X == 4.
%linha10
verifyWinHorizontal(Board,X,Y):- Y == 10,
        X < 3,
        verifyWinHorizontal1(Board,X,Y).
%linha10
verifyWinHorizontal(Board,X,Y):- Y == 10,
        X > 4,
        verifyWinHorizontal2(Board,X,Y).
%linha10
verifyWinHorizontal(_,X,Y):- Y == 10,
        X > 2,
        X < 5.
%linha11
verifyWinHorizontal(Board,X,Y):- Y == 11,
        X == 1,
        verifyWinHorizontal1(Board,X,Y).
%linha11
verifyWinHorizontal(Board,X,Y):- Y == 11,
        X == 5,
        verifyWinHorizontal2(Board,X,Y).
%linha11
verifyWinHorizontal(_,X,Y):- Y == 11,
        X > 1,
        X < 5.


