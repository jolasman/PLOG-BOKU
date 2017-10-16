/*******************************************************************  Piece  *************************/
/***********************************diagonal 1 -> esq cima para baixo / *********************************************/
verifyCaptureDiagonal1(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal1aux(Board, X1, Y1, Pieceat).

verifyCaptureDiagonal1(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat.

verifyCaptureDiagonal1(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' '.
       
verifyCaptureDiagonal1aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y + 1, 
        verifyCaptureDiagonal1aux2(Board, X1, Y1, Pieceat). /* diagonal esq baixo */

verifyCaptureDiagonal1aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.
        

verifyCaptureDiagonal1aux(Board, X, Y, _):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal1aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y + 1,
        verifyCaptureDiagonal1aux3(Board, X1, Y1, Pieceat). 

verifyCaptureDiagonal1aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyCaptureDiagonal1aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal1aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal esquerda cima para baixo\n').

verifyCaptureDiagonal1aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureDiagonal1aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/






/***********************************diagonal 2 -> direita baixo para cima   / ***************************/
/**********************************************************************  Piece ******************/
verifyCaptureDiagonal2(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal2aux(Board, X1, Y1, Pieceat).

verifyCaptureDiagonal2(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat.

verifyCaptureDiagonal2(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' '.
       
verifyCaptureDiagonal2aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y - 1, 
        verifyCaptureDiagonal2aux2(Board, X1, Y1, Pieceat). /* diagonal esq baixo */

verifyCaptureDiagonal2aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.
        

verifyCaptureDiagonal2aux(Board, X, Y, _):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal2aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y - 1,
        verifyCaptureDiagonal2aux3(Board, X1, Y1, Pieceat). 

verifyCaptureDiagonal2aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyCaptureDiagonal2aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal2aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal direita baixo para cima\n').

verifyCaptureDiagonal2aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureDiagonal2aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/
        


/********************************************************************** Piece **************************/
/***********************************diagonal 3 -> direita peça cima para baixo \ *********************************************/

verifyCaptureDiagonal3(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal3aux(Board, X1, Y1, Pieceat).

verifyCaptureDiagonal3(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat.

verifyCaptureDiagonal3(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X + 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' '.
       
verifyCaptureDiagonal3aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X + 1,
        Y1 is Y + 1, 
        verifyCaptureDiagonal3aux2(Board, X1, Y1, Pieceat). /* diagonal esq baixo */

verifyCaptureDiagonal3aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.
        

verifyCaptureDiagonal3aux(Board, X, Y, _):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal3aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y + 1,
        verifyCaptureDiagonal3aux3(Board, X1, Y1, Pieceat). 

verifyCaptureDiagonal3aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyCaptureDiagonal3aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal3aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal direita cima para baixo\n').

verifyCaptureDiagonal3aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureDiagonal3aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/




/***********************************diagonal 4 -> esquerda baixo para cima  \ *********************************************/
/*************************************************************************  Piece *******************/
verifyCaptureDiagonal4(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal4aux(Board, X1, Y1, Pieceat).

verifyCaptureDiagonal4(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat.

verifyCaptureDiagonal4(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X - 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' '.
       
verifyCaptureDiagonal4aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X - 1,
        Y1 is Y - 1, 
        verifyCaptureDiagonal4aux2(Board, X1, Y1, Pieceat). /* diagonal esq baixo */

verifyCaptureDiagonal4aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.
        

verifyCaptureDiagonal4aux(Board, X, Y, _):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal4aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y - 1,
        verifyCaptureDiagonal4aux3(Board, X1, Y1, Pieceat). 

verifyCaptureDiagonal4aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyCaptureDiagonal4aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal4aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal esquerda baixo para cima\n').

verifyCaptureDiagonal4aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureDiagonal4aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/






/****************************************************************************************************/
/******************************************************************************************************/
/************************** diagonais parte de baixo do tabuleiro*********************************/
/****************************************************************************************************/
/******************************************************************************************************/


        
/***********************************diagonal 1 -> esq cima para baixo *********************************************/
verifyCaptureDiagonal11(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal11aux(Board, X1, Y1, Pieceat).

verifyCaptureDiagonal11(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat.

verifyCaptureDiagonal11(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X - 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' '.
       
verifyCaptureDiagonal11aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X - 1,
        Y1 is Y + 1, 
        verifyCaptureDiagonal11aux2(Board, X1, Y1, Pieceat). /* diagonal esq baixo */

verifyCaptureDiagonal11aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.
        

verifyCaptureDiagonal11aux(Board, X, Y, _):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal11aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y + 1,
        verifyCaptureDiagonal11aux3(Board, X1, Y1, Pieceat). 

verifyCaptureDiagonal11aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyCaptureDiagonal11aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal11aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal esquerda cima para baixo. Tab parte baixo\n').

verifyCaptureDiagonal11aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureDiagonal11aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/






/***********************************diagonal 2 -> direita baixo para cima *********************************************/

verifyCaptureDiagonal21(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal21aux(Board, X1, Y1, Pieceat).

verifyCaptureDiagonal21(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat.

verifyCaptureDiagonal21(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X + 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' '.
       
verifyCaptureDiagonal21aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X + 1,
        Y1 is Y - 1, 
        verifyCaptureDiagonal21aux2(Board, X1, Y1, Pieceat). /* diagonal esq baixo */

verifyCaptureDiagonal21aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.
        

verifyCaptureDiagonal21aux(Board, X, Y, _):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal21aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y - 1,
        verifyCaptureDiagonal21aux3(Board, X1, Y1, Pieceat). 

verifyCaptureDiagonal21aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyCaptureDiagonal21aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal21aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal direita baixo para cima. Tab parte baixo\n').

verifyCaptureDiagonal21aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureDiagonal21aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/
        



/***********************************diagonal 3 -> direita cima para baixo *********************************************/

verifyCaptureDiagonal31(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal31aux(Board, X1, Y1, Pieceat).

verifyCaptureDiagonal31(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat.

verifyCaptureDiagonal31(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' '.
       
verifyCaptureDiagonal31aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y + 1, 
        verifyCaptureDiagonal31aux2(Board, X1, Y1, Pieceat). /* diagonal esq baixo */

verifyCaptureDiagonal31aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.
        

verifyCaptureDiagonal31aux(Board, X, Y, _):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal31aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y + 1,
        verifyCaptureDiagonal31aux3(Board, X1, Y1, Pieceat). 

verifyCaptureDiagonal31aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyCaptureDiagonal31aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal31aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal direita cima para baixo. Tab parte baixo\n').

verifyCaptureDiagonal31aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureDiagonal31aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/




/***********************************diagonal 4 -> esquerda baixo para cima *********************************************/

verifyCaptureDiagonal41(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureDiagonal41aux(Board, X1, Y1, Pieceat).

verifyCaptureDiagonal41(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat.

verifyCaptureDiagonal41(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' '.
       
verifyCaptureDiagonal41aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X,
        Y1 is Y - 1, 
        verifyCaptureDiagonal41aux2(Board, X1, Y1, Pieceat). /* diagonal esq baixo */

verifyCaptureDiagonal41aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.
        

verifyCaptureDiagonal41aux(Board, X, Y, _):-  returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal41aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X,
        Y1 is Y - 1,
        verifyCaptureDiagonal41aux3(Board, X1, Y1, Pieceat). 

verifyCaptureDiagonal41aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyCaptureDiagonal41aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal41aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, diagonal esquerda baixo para cima. Tab parte baixo\n').

verifyCaptureDiagonal41aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureDiagonal41aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/



/*********************************** horizontal capture *************************/

%horizontal esq to dir
verifyCaptureHorizontal1(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureHorizontal1aux(Board, X1, Y, Pieceat).

verifyCaptureHorizontal1(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat.

verifyCaptureHorizontal1(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' '.
       
/**********/
verifyCaptureHorizontal1aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X + 1,
        verifyCaptureHorizontal1aux2(Board, X1, Y, Pieceat). /* diagonal esq baixo */

verifyCaptureHorizontal1aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.
        
verifyCaptureHorizontal1aux(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/**********/
verifyCaptureHorizontal1aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        verifyCaptureHorizontal1aux3(Board, X1, Y, Pieceat). 

verifyCaptureHorizontal1aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyCaptureHorizontal1aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/***********/
verifyCaptureHorizontal1aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, horizontal esquerda para a direita\n').

verifyCaptureHorizontal1aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureHorizontal1aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/





/******************************** *************** ************************/

%horixzontal dir to esq
verifyCaptureHorizontal2(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        verifyCaptureHorizontal2aux(Board, X1, Y, Pieceat).

verifyCaptureHorizontal2(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat.

verifyCaptureHorizontal2(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' '.
       
/**********/
verifyCaptureHorizontal2aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        X1 is X - 1,
        verifyCaptureHorizontal2aux2(Board, X1, Y, Pieceat). /* diagonal esq baixo */

verifyCaptureHorizontal2aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.
        
verifyCaptureHorizontal2aux(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/**********/
verifyCaptureHorizontal2aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        verifyCaptureHorizontal2aux3(Board, X1, Y, Pieceat). 

verifyCaptureHorizontal2aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyCaptureHorizontal2aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/***********/
verifyCaptureHorizontal2aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\nPosition of capture, horizontal direita para a esquerda\n').

verifyCaptureHorizontal2aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureHorizontal2aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/
