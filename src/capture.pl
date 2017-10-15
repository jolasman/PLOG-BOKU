/*************************************** captura **************************************/
%Para alterar a peça (para vazio) quando é feita a captura
changePieceAtCapture(Board1, Xpos, Ypos, Board2) :- returnPieceAt(Board1,Xpos,Ypos,Pieceat),
        Pieceat \= ' ',
        setPieceAt(Board1, Xpos, Ypos, Board2, ' ').
        
        
%Para verificar se a jogada é uma jogada em que pode ser feita uma captura
isCapturePlay(Board,X,Y) :- verifyCaptureDiagonals(Board, X,Y),
        verifyCaptureHorizontal(Board, X,Y).

verifyCaptureDiagonals(Board,X,Y):- Y < 7,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).

verifyCaptureDiagonals(Board,X,Y):- Y > 6,
        verifyCaptureDiagonal11(Board, X, Y),
        verifyCaptureDiagonal21(Board, X, Y),
        verifyCaptureDiagonal31(Board, X, Y),
        verifyCaptureDiagonal41(Board, X, Y).

verifyCaptureHorizontal(Board,X,Y):- verifyCaptureHorizontal1(Board,X,Y),
        verifyCaptureHorizontal2(Board,X,Y).
/******************************** verifical captura na horizontal ************************/

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
        write('\nPosition of capture, horizontal direita para a esquerda\n').

verifyCaptureHorizontal2aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureHorizontal2aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/

%Para que o jogador escolha qual das duas peças do adversário quer retirar  
%choosePiece(Board, X,Y,Board2) :- 
        
  
%bloqueia a posição X,Y do tabuleiro para que o jogador adversário não possa
%voltar a jogar para o mesmo sítio antes de se passar um turno de jogo
%blockCoordinates(Board, X,Y, Jogador, Board2): -

/****************************************************************************************/
