/*******************************************************************  Piece  *************************/
/***********************************diagonal 1 -> esq cima para baixo / *********************************************/
verifyCaptureDiagonal1PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal1PCaux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal1PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal1PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        Board2 = Board.

verifyCaptureDiagonal1PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y + 1, 
        verifyCaptureDiagonal1PCaux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal1PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.


verifyCaptureDiagonal1PCaux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal1PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y + 1,
        verifyCaptureDiagonal1PCaux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal1PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Board2 = Board.

verifyCaptureDiagonal1PCaux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal1PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal left top to bottom\n'),
        X1 is X,
        Y1 is Y - 1,
        X2 is X1,
        Y2 is Y1 - 1,
        changePieceAtCapturePC(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal1PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal1PCaux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/*****************************************************************************************************/



/***********************************diagonal 2 -> direita baixo para cima   / ***************************/
/**********************************************************************  Piece ******************/
verifyCaptureDiagonal2PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal2PCaux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal2PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal2PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        Board2 = Board.

verifyCaptureDiagonal2PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y - 1, 
        verifyCaptureDiagonal2PCaux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal2PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.


verifyCaptureDiagonal2PCaux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal2PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y - 1,
        verifyCaptureDiagonal2PCaux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal2PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Board2 = Board.

verifyCaptureDiagonal2PCaux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal2PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, right diagonal low up\n'),
        X1 is X,
        Y1 is Y + 1,
        X2 is X1,
        Y2 is Y1 + 1,
        changePieceAtCapturePC(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal2PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal2PCaux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/*****************************************************************************************************/



/********************************************************************** Piece **************************/
/***********************************diagonal 3 -> direita peça cima para baixo \ *********************************************/

verifyCaptureDiagonal3PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal3PCaux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal3PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal3PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X + 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        Board2 = Board.

verifyCaptureDiagonal3PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X + 1,
        Y1 is Y + 1, 
        verifyCaptureDiagonal3PCaux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal3PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.


verifyCaptureDiagonal3PCaux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal3PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y + 1,
        verifyCaptureDiagonal3PCaux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal3PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Board2 = Board.

verifyCaptureDiagonal3PCaux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal3PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal right up down.\n'),
        X1 is X - 1,
        Y1 is Y - 1,
        X2 is X1 - 1,
        Y2 is Y1 - 1,
        changePieceAtCapturePC(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal3PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal3PCaux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/*****************************************************************************************************/




/***********************************diagonal 4 -> esquerda baixo para cima  \ *********************************************/
/*************************************************************************  Piece *******************/
verifyCaptureDiagonal4PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal4PCaux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal4PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal4PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X - 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        Board2 = Board.

verifyCaptureDiagonal4PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X - 1,
        Y1 is Y - 1, 
        verifyCaptureDiagonal4PCaux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal4PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.


verifyCaptureDiagonal4PCaux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal4PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y - 1,
        verifyCaptureDiagonal4PCaux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal4PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Board2 = Board.

verifyCaptureDiagonal4PCaux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal4PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal left low up\n'),
        X1 is X + 1,
        Y1 is Y + 1,
        X2 is X1 + 1,
        Y2 is Y1 + 1,
        changePieceAtCapturePC(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal4PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal4PCaux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/*****************************************************************************************************/


/****************************************************************************************************/
/******************************************************************************************************/
/************************** diagonais parte de baixo do tabuleiro*********************************/
/****************************************************************************************************/
/******************************************************************************************************/


/***********************************diagonal 1 -> esq cima para baixo *********************************************/
verifyCaptureDiagonal11PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal11PCaux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal11PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal11PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X - 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        Board2 = Board.

verifyCaptureDiagonal11PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X - 1,
        Y1 is Y + 1, 
        verifyCaptureDiagonal11PCaux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal11PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.


verifyCaptureDiagonal11PCaux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal11PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y + 1,
        verifyCaptureDiagonal11PCaux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal11PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Board2 = Board.

verifyCaptureDiagonal11PCaux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal11PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal left top to bottom. Bottom of the board\n'),
        X1 is X + 1,
        Y1 is Y - 1,
        X2 is X1 + 1,
        Y2 is Y1 - 1,
        changePieceAtCapturePC(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal11PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal11PCaux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/*****************************************************************************************************/



/***********************************diagonal 2 -> direita baixo para cima *********************************************/

verifyCaptureDiagonal21PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal21PCaux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal21PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal21PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X + 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        Board2 = Board.

verifyCaptureDiagonal21PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X + 1,
        Y1 is Y - 1, 
        verifyCaptureDiagonal21PCaux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal21PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.


verifyCaptureDiagonal21PCaux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal21PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y - 1,
        verifyCaptureDiagonal21PCaux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal21PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Board2 = Board.

verifyCaptureDiagonal21PCaux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal21PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, right diagonal low up. Bottom of the board.\n'),
        X1 is X - 1,
        Y1 is Y + 1,
        X2 is X1 - 1,
        Y2 is Y1 + 1,
        changePieceAtCapturePC(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal21PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal21PCaux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/*****************************************************************************************************/




/***********************************diagonal 3 -> direita cima para baixo *********************************************/

verifyCaptureDiagonal31PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal31PCaux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal31PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal31PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        Board2 = Board.

verifyCaptureDiagonal31PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y + 1, 
        verifyCaptureDiagonal31PCaux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal31PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.


verifyCaptureDiagonal31PCaux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal31PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y + 1,
        verifyCaptureDiagonal31PCaux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal31PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Board2 = Board.

verifyCaptureDiagonal31PCaux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal31PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal right up down. Bottom of the board.\n'),
        X1 is X,
        Y1 is Y - 1,
        X2 is X1,
        Y2 is Y1 - 1,
        changePieceAtCapturePC(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal31PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal31PCaux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/*****************************************************************************************************/




/***********************************diagonal 4 -> esquerda baixo para cima *********************************************/

verifyCaptureDiagonal41PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal41PCaux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal41PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal41PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        Board2 = Board.

verifyCaptureDiagonal41PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y - 1, 
        verifyCaptureDiagonal41PCaux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal41PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.


verifyCaptureDiagonal41PCaux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal41PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y - 1,
        verifyCaptureDiagonal41PCaux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal41PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Board2 = Board.

verifyCaptureDiagonal41PCaux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.


verifyCaptureDiagonal41PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal left low up. Bottom of the board\n'),
        X1 is X,
        Y1 is Y + 1,
        X2 is X1,
        Y2 is Y1 + 1,
        changePieceAtCapturePC(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal41PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureDiagonal41PCaux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/*****************************************************************************************************/



/*********************************** horizontal capture *************************/

%horizontal esq to dir
verifyCaptureHorizontal1PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureHorizontal1PCaux(Board, X1, Y, Pieceat, Board2).

verifyCaptureHorizontal1PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        Board2 = Board.

verifyCaptureHorizontal1PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        Board2 = Board.

/**********/
verifyCaptureHorizontal1PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X + 1,
        verifyCaptureHorizontal1PCaux2(Board, X1, Y, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureHorizontal1PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureHorizontal1PCaux(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/**********/
verifyCaptureHorizontal1PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        verifyCaptureHorizontal1PCaux3(Board, X1, Y, Pieceat, Board2). 

verifyCaptureHorizontal1PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Board2 = Board.

verifyCaptureHorizontal1PCaux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/***********/
verifyCaptureHorizontal1PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, horizontal left to right\n'),
        X1 is X - 1,
        X2 is X1 - 1,
        changePieceAtCaptureHorizontalPC(Board,X1,X2,Y,Board2, Pieceat).

verifyCaptureHorizontal1PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureHorizontal1PCaux3(Board, X, Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/*****************************************************************************************************/



/******************************** *************** ************************/

%horixzontal dir to esq
verifyCaptureHorizontal2PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureHorizontal2PCaux(Board, X1, Y, Pieceat,Board2).

verifyCaptureHorizontal2PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        Board2 = Board.

verifyCaptureHorizontal2PC(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        Board2 = Board.

/**********/
verifyCaptureHorizontal2PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X - 1,
        verifyCaptureHorizontal2PCaux2(Board, X1, Y, Pieceat,Board2). /* diagonal esq baixo */

verifyCaptureHorizontal2PCaux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureHorizontal2PCaux(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/**********/
verifyCaptureHorizontal2PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        verifyCaptureHorizontal2PCaux3(Board, X1, Y, Pieceat,Board2). 

verifyCaptureHorizontal2PCaux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Board2 = Board.

verifyCaptureHorizontal2PCaux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/***********/
verifyCaptureHorizontal2PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, horizontal right to left\n'),
        X1 is X + 1,
        X2 is X1 + 1,
        changePieceAtCaptureHorizontalPC(Board,X1,X2,Y,Board2, Pieceat).

verifyCaptureHorizontal2PCaux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Board2 = Board.

verifyCaptureHorizontal2PCaux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        Board2 = Board.

/*****************************************************************************************************/






%linha1 ate linha 3
verifyCaptureDiagonal1PCPC(Board,X,Y,BoardR):- Y < 4,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha1 ate linha 3
verifyCaptureDiagonalsPC(Board,X,Y,Board2):- Y < 4,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal3PC(Board,X,Y,Board2).
%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X == 1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha4
verifyCaptureDiagonalsPC(Board,X,Y,Board2):- Y == 4,
        X == 1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal3PC(Board,X,Y,Board2).
%%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X > 1,
        X < 4,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.

%%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X > 1,
        X < 4,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X > 1,
        X < 4,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3PC(Board,X,Y,BoardR).
%%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3PC(Board,X,Y,Board3),
        Board \= Board3,
        Board3 = BoardR.
%%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3PC(Board,X,Y,Board3),
        Board == Board3,
        verifyCaptureDiagonal4PC(Board,X,Y,BoardR).
%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X > 5,
        X < 8,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X > 5,
        X < 8,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X > 5,
        X < 8,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal4PC(Board,X,Y,BoardR).
%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X == 8,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha4
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 4,
        X == 8,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal4PC(Board,X,Y,BoardR).
%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X < 3,
        verifyCaptureDiagonal2PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X < 3,
        verifyCaptureDiagonal2PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal3PC(Board,X,Y,BoardR).
%%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X == 3,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X == 3,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X == 3,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3PC(Board,X,Y,BoardR).
%%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3PC(Board,X,Y,Board3),
        Board \= Board3,
        Board3 = BoardR.
%%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3PC(Board,X,Y,Board3),
        Board == Board3,
        verifyCaptureDiagonal4PC(Board,X,Y,BoardR).
%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X == 7,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X == 7,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X > 7,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal4PC(Board,X,Y,BoardR).
%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X > 7,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha5
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 5,
        X == 7,
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal4PC(Board,X,Y,BoardR).
%%linha 6
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 6,
        X < 4, 
        verifyCaptureDiagonal3PC(Board,X,Y,Board1),
        board \= 1,
        Board1 = BoardR.
%%linha 6
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 6,
        X < 4, 
        verifyCaptureDiagonal3PC(Board,X,Y,Board1),
        board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,BoardR).
%%linha 6
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 6,
        X > 3, 
        X < 7, 
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%%linha 6
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 6,
        X > 3, 
        X < 7, 
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%%linha 6
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 6,
        X > 3, 
        X < 7, 
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3PC(Board,X,Y,Board3),
        Board \= Board3,
        Board3 = BoardR.
%%linha 6
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 6,
        X > 3, 
        X < 7, 
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3(Board,X,Y,Board3),
        Board == Board3,
        verifyCaptureDiagonal4PC(Board,X,Y,BoardR).
%%linha 6
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 6,
        X > 6, 
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%%linha 6
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 6,
        X > 6, 
        verifyCaptureDiagonal1PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal4PC(Board,X,Y,BoardR).

/*************************************************************/
/******************** parte de baixo do tabuleiro**********************/

%linha11
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y > 8,
        Y < 12,
        X > 0,
        verifyCaptureDiagonal41PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha11
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y > 8,
        Y < 12,
        X > 0,
        verifyCaptureDiagonal41PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,BoardR).
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X == 1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X == 1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal31PC(Board,X,Y,BoardR).
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X > 1,
        X < 4,
        verifyCaptureDiagonal41PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X > 1,
        X < 4,
        verifyCaptureDiagonal41PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board \= Board2,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X > 1,
        X < 4,
        verifyCaptureDiagonal41PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31PC(Board,X,Y,BoardR).
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X > 3,
        X < 6,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X > 3,
        X < 6,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X > 3,
        X < 6,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31PC(Board,X,Y,Board3),
        Board \= Board3,
        Board3 = BoardR.
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X > 3,
        X < 6,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31PC(Board,X,Y,Board3),
        Board == Board3,
        verifyCaptureDiagonal41PC(Board,X,Y,BoardR).
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X > 5,
        X < 8,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X > 5,
        X < 8,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X > 5,
        X < 8,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal41PC(Board,X,Y,BoardR).
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X == 8,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 8,
        X == 8,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal41PC(Board,X,Y,BoardR).
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X < 3,
        verifyCaptureDiagonal21PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X < 3,
        verifyCaptureDiagonal21PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal31PC(Board,X,Y,BoardR).
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X == 3,
        verifyCaptureDiagonal41PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X == 3,
        verifyCaptureDiagonal41PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X == 3,
        verifyCaptureDiagonal41PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31PC(Board,X,Y,BoardR).
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X > 3,
        X < 7,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X > 3,
        X < 7,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X > 3,
        X < 7,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31PC(Board,X,Y,Board3),
        Board \= Board3,
        Board3 = BoardR.
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X > 3,
        X < 7,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31PC(Board,X,Y,Board3),
        Board == Board3,
        verifyCaptureDiagonal41PC(Board,X,Y,BoardR).
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X == 7,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X == 7,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X == 7,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21PC(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal41PC(Board,X,Y,BoardR).
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X > 7,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha7
verifyCaptureDiagonalsPC(Board,X,Y,BoardR):- Y == 7,
        X > 7,
        verifyCaptureDiagonal11PC(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal41PC(Board,X,Y,BoardR).


/******************************************************************************************/

/******************************** verifical captura na horizontal ************************/
%linha1
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 1,
        X == 3,
        append([],Board,Board2).
%linha1
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 1,
        X < 3,
        verifyCaptureHorizontal1PC(Board,X,Y,Board2).
%linha1
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 1,
        X > 3,
        verifyCaptureHorizontal2PC(Board,X,Y,Board2).
%linha2
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 2,
        X < 4,
        verifyCaptureHorizontal1PC(Board,X,Y,Board2).
%linha2  
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 2,
        X > 3,
        verifyCaptureHorizontal2PC(Board,X,Y,Board2).
%linha3
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 3,
        X < 5,
        verifyCaptureHorizontal1PC(Board,X,Y,Board2).
%linha3  
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 3,
        X > 3,
        verifyCaptureHorizontal2PC(Board,X,Y,Board2).  
%linha4
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 4,
        X < 6,
        verifyCaptureHorizontal1PC(Board,X,Y,Board2).
%linha4  
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 4,
        X > 3,
        verifyCaptureHorizontal2PC(Board,X,Y,Board2).  
%linha5
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 5,
        X < 7,
        verifyCaptureHorizontal1PC(Board,X,Y,Board2).
%linha5  
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 5,
        X > 3,
        verifyCaptureHorizontal2PC(Board,X,Y,Board2). 
%linha6
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 6,
        X < 8,
        verifyCaptureHorizontal1PC(Board,X,Y,Board2).
%linha6  
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 6,
        X > 3,
        verifyCaptureHorizontal2PC(Board,X,Y,Board2). 
%linha7
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 7,
        X < 7,
        verifyCaptureHorizontal1PC(Board,X,Y,Board2).
%linha7  
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 7,
        X > 3,
        verifyCaptureHorizontal2PC(Board,X,Y,Board2). 
%linha8
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 8,
        X < 6,
        verifyCaptureHorizontal1PC(Board,X,Y,Board2).
%linha8 
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 8,
        X > 3,
        verifyCaptureHorizontal2PC(Board,X,Y,Board2). 
%linha9
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 9,
        X < 5,
        verifyCaptureHorizontal1PC(Board,X,Y,Board2).
%linha9
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 9,
        X > 3,
        verifyCaptureHorizontal2PC(Board,X,Y,Board2).
%linha10
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 10,
        X == 4,
        append([],Board,Board2).
%linha10
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 10,
        X < 4,
        verifyCaptureHorizontal1PC(Board,X,Y,Board2).
%linha10
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 10,
        X > 3,
        verifyCaptureHorizontal2PC(Board,X,Y,Board2).
%linha11
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 11,
        X < 3,
        verifyCaptureHorizontal1PC(Board,X,Y,Board2).
%linha11
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 11,
        X > 3,
        verifyCaptureHorizontal2PC(Board,X,Y,Board2).
%linha11
verifyCaptureHorizontalPC(Board,X,Y,Board2):- Y == 11,
        X == 3,
        append([],Board,Board2).

/*************************************************************/



