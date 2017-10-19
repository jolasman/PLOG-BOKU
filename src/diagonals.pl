/*******************************************************************  Piece  *************************/
/***********************************diagonal 1 -> esq cima para baixo / *********************************************/
verifyCaptureDiagonal1(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal1aux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal1(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal1(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        append([],Board,Board2).

verifyCaptureDiagonal1aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y + 1, 
        verifyCaptureDiagonal1aux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal1aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).


verifyCaptureDiagonal1aux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal1aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y + 1,
        verifyCaptureDiagonal1aux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal1aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal1aux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal1aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal esquerda cima para baixo\n'),
        X1 is X,
        Y1 is Y - 1,
        X2 is X1,
        Y2 is Y1 - 1,
        changePieceAtCapture(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal1aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal1aux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/*****************************************************************************************************/



/***********************************diagonal 2 -> direita baixo para cima   / ***************************/
/**********************************************************************  Piece ******************/
verifyCaptureDiagonal2(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal2aux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal2(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal2(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        append([],Board,Board2).

verifyCaptureDiagonal2aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y - 1, 
        verifyCaptureDiagonal2aux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal2aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).


verifyCaptureDiagonal2aux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal2aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y - 1,
        verifyCaptureDiagonal2aux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal2aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal2aux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal2aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal direita baixo para cima\n'),
        X1 is X,
        Y1 is Y + 1,
        X2 is X1,
        Y2 is Y1 + 1,
        changePieceAtCapture(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal2aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal2aux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/*****************************************************************************************************/



/********************************************************************** Piece **************************/
/***********************************diagonal 3 -> direita peça cima para baixo \ *********************************************/

verifyCaptureDiagonal3(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal3aux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal3(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal3(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X + 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        append([],Board,Board2).

verifyCaptureDiagonal3aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X + 1,
        Y1 is Y + 1, 
        verifyCaptureDiagonal3aux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal3aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).


verifyCaptureDiagonal3aux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal3aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y + 1,
        verifyCaptureDiagonal3aux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal3aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal3aux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal3aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal direita cima para baixo\n'),
        X1 is X - 1,
        Y1 is Y - 1,
        X2 is X1 - 1,
        Y2 is Y1 - 1,
        changePieceAtCapture(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal3aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal3aux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/*****************************************************************************************************/




/***********************************diagonal 4 -> esquerda baixo para cima  \ *********************************************/
/*************************************************************************  Piece *******************/
verifyCaptureDiagonal4(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal4aux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal4(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal4(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X - 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        append([],Board,Board2).

verifyCaptureDiagonal4aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X - 1,
        Y1 is Y - 1, 
        verifyCaptureDiagonal4aux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal4aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).


verifyCaptureDiagonal4aux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal4aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y - 1,
        verifyCaptureDiagonal4aux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal4aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal4aux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal4aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal esquerda baixo para cima\n'),
        X1 is X + 1,
        Y1 is Y + 1,
        X2 is X1 + 1,
        Y2 is Y1 + 1,
        changePieceAtCapture(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal4aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal4aux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/*****************************************************************************************************/


/****************************************************************************************************/
/******************************************************************************************************/
/************************** diagonais parte de baixo do tabuleiro*********************************/
/****************************************************************************************************/
/******************************************************************************************************/


/***********************************diagonal 1 -> esq cima para baixo *********************************************/
verifyCaptureDiagonal11(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal11aux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal11(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal11(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X - 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        append([],Board,Board2).

verifyCaptureDiagonal11aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X - 1,
        Y1 is Y + 1, 
        verifyCaptureDiagonal11aux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal11aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).


verifyCaptureDiagonal11aux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal11aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y + 1,
        verifyCaptureDiagonal11aux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal11aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal11aux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal11aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal esquerda cima para baixo. Tab parte baixo\n'),
        X1 is X + 1,
        Y1 is Y - 1,
        X2 is X1 + 1,
        Y2 is Y1 - 1,
        changePieceAtCapture(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal11aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal11aux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/*****************************************************************************************************/



/***********************************diagonal 2 -> direita baixo para cima *********************************************/

verifyCaptureDiagonal21(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal21aux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal21(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal21(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X + 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        append([],Board,Board2).

verifyCaptureDiagonal21aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X + 1,
        Y1 is Y - 1, 
        verifyCaptureDiagonal21aux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal21aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).


verifyCaptureDiagonal21aux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal21aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y - 1,
        verifyCaptureDiagonal21aux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal21aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal21aux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal21aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal direita baixo para cima. Tab parte baixo\n'),
        X1 is X - 1,
        Y1 is Y + 1,
        X2 is X1 - 1,
        Y2 is Y1 + 1,
        changePieceAtCapture(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal21aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal21aux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/*****************************************************************************************************/




/***********************************diagonal 3 -> direita cima para baixo *********************************************/

verifyCaptureDiagonal31(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal31aux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal31(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal31(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        append([],Board,Board2).

verifyCaptureDiagonal31aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y + 1, 
        verifyCaptureDiagonal31aux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal31aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).


verifyCaptureDiagonal31aux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal31aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y + 1,
        verifyCaptureDiagonal31aux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal31aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal31aux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal31aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal direita cima para baixo. Tab parte baixo\n'),
        X1 is X,
        Y1 is Y - 1,
        X2 is X1,
        Y2 is Y1 - 1,
        changePieceAtCapture(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal31aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal31aux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/*****************************************************************************************************/




/***********************************diagonal 4 -> esquerda baixo para cima *********************************************/

verifyCaptureDiagonal41(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal41aux(Board, X1, Y1, Pieceat, Board2).

verifyCaptureDiagonal41(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal41(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        append([],Board,Board2).

verifyCaptureDiagonal41aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y - 1, 
        verifyCaptureDiagonal41aux2(Board, X1, Y1, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureDiagonal41aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).


verifyCaptureDiagonal41aux(Board,X,Y,_,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal41aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y - 1,
        verifyCaptureDiagonal41aux3(Board, X1, Y1, Pieceat, Board2). 

verifyCaptureDiagonal41aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal41aux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).


verifyCaptureDiagonal41aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal esquerda baixo para cima. Tab parte baixo\n'),
        X1 is X,
        Y1 is Y + 1,
        X2 is X1,
        Y2 is Y1 + 1,
        changePieceAtCapture(Board,X1,Y1,X2,Y2,Board2, Pieceat).

verifyCaptureDiagonal41aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureDiagonal41aux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/*****************************************************************************************************/



/*********************************** horizontal capture *************************/

%horizontal esq to dir
verifyCaptureHorizontal1(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureHorizontal1aux(Board, X1, Y, Pieceat, Board2).

verifyCaptureHorizontal1(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        append([],Board,Board2).

verifyCaptureHorizontal1(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        append([],Board,Board2).

/**********/
verifyCaptureHorizontal1aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X + 1,
        verifyCaptureHorizontal1aux2(Board, X1, Y, Pieceat, Board2). /* diagonal esq baixo */

verifyCaptureHorizontal1aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureHorizontal1aux(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/**********/
verifyCaptureHorizontal1aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        verifyCaptureHorizontal1aux3(Board, X1, Y, Pieceat, Board2). 

verifyCaptureHorizontal1aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        append([],Board,Board2).

verifyCaptureHorizontal1aux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/***********/
verifyCaptureHorizontal1aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, horizontal esquerda para a direita\n'),
        X1 is X - 1,
        X2 is X1 - 1,
        changePieceAtCaptureHorizontal(Board,X1,X2,Y,Board2, Pieceat).

verifyCaptureHorizontal1aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureHorizontal1aux3(Board, X, Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/*****************************************************************************************************/





/******************************** *************** ************************/

%horixzontal dir to esq
verifyCaptureHorizontal2(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureHorizontal2aux(Board, X1, Y, Pieceat,Board2).

verifyCaptureHorizontal2(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        append([],Board,Board2).

verifyCaptureHorizontal2(Board,X,Y,Board2):- returnPieceAt(Board, X, Y, _), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        append([],Board,Board2).

/**********/
verifyCaptureHorizontal2aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X - 1,
        verifyCaptureHorizontal2aux2(Board, X1, Y, Pieceat,Board2). /* diagonal esq baixo */

verifyCaptureHorizontal2aux(Board,X,Y,PieceAnterior,Board2):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureHorizontal2aux(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/**********/
verifyCaptureHorizontal2aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        verifyCaptureHorizontal2aux3(Board, X1, Y, Pieceat,Board2). 

verifyCaptureHorizontal2aux2(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        append([],Board,Board2).

verifyCaptureHorizontal2aux2(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/***********/
verifyCaptureHorizontal2aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, horizontal direita para a esquerda\n'),
        X1 is X + 1,
        X2 is X1 + 1,
        changePieceAtCaptureHorizontal(Board,X1,X2,Y,Board2, Pieceat).

verifyCaptureHorizontal2aux3(Board,X,Y,PieceAnterior,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        append([],Board,Board2).

verifyCaptureHorizontal2aux3(Board,X,Y,_,Board2):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' ',
        append([],Board,Board2).

/*****************************************************************************************************/
