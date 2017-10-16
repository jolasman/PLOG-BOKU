/*************************************** captura **************************************/
%Para alterar a peça (para vazio) quando é feita a captura
changePieceAtCapture(Board1, Xpos, Ypos, Board2) :- returnPieceAt(Board1,Xpos,Ypos,Pieceat),
        Pieceat \= ' ',
        setPieceAt(Board1, Xpos, Ypos, Board2, ' ').
        
        
%Para verificar se a jogada é uma jogada em que pode ser feita uma captura
isCapturePlay(Board,X,Y) :- verifyCaptureDiagonals(Board, X,Y).
       % verifyCaptureHorizontal(Board, X,Y).



/******************** parte de cima do tabuleiro**********************/

%linha1 ate linha 3
verifyCaptureDiagonals(Board,X,Y):- Y < 4,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y).
%linha4
verifyCaptureDiagonals(Board,X,Y):- Y == 4,
        X == 1,
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y).

%linha4
verifyCaptureDiagonals(Board,X,Y):- Y == 4,
        X > 1,
        X < 4,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y).
%linha4
verifyCaptureDiagonals(Board,X,Y):- Y == 4,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).

%linha4
verifyCaptureDiagonals(Board,X,Y):- Y == 4,
        X > 5,
        X < 8,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).

%linha4
verifyCaptureDiagonals(Board,X,Y):- Y == 4,
        X == 8,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).


%linha5
verifyCaptureDiagonals(Board,X,Y):- Y == 5,
        X < 3,
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y).

%linha5
verifyCaptureDiagonals(Board,X,Y):- Y == 5,
        X == 3,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y).

%linha5
verifyCaptureDiagonals(Board,X,Y):- Y == 5,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).

%linha5
verifyCaptureDiagonals(Board,X,Y):- Y == 5,
        X == 7,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).

%linha5
verifyCaptureDiagonals(Board,X,Y):- Y == 5,
        X > 7,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).

%linha 6
verifyCaptureDiagonals(Board,X,Y):- Y == 6,
        X < 4, 
        verifyCaptureDiagonal3(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y).
%linha 6
verifyCaptureDiagonals(Board,X,Y):- Y == 6,
        X > 3, 
        X < 7, 
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).
%linha 6
verifyCaptureDiagonals(Board,X,Y):- Y == 6,
        X > 7, 
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).

/*************************************************************/
/******************** parte de baixo do tabuleiro**********************/

%linha11
verifyCaptureDiagonals(Board,X,Y):- Y == 11,
        X == 1,
        verifyCaptureDiagonal2(Board, X, Y).

%linha11
verifyCaptureDiagonals(Board,X,Y):- Y == 11,
        X > 1,
        verifyCaptureDiagonal4(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y).

%linha10
verifyCaptureDiagonals(Board,X,Y):- Y == 10,
        X == 1,
        verifyCaptureDiagonal2(Board, X, Y).

%linha10
verifyCaptureDiagonals(Board,X,Y):- Y == 10,
        X > 1,
        verifyCaptureDiagonal4(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y).

%linha9
verifyCaptureDiagonals(Board,X,Y):- Y == 9,
        X == 1,
        verifyCaptureDiagonal2(Board, X, Y).

%linha9
verifyCaptureDiagonals(Board,X,Y):- Y == 9,
        X > 1,
        verifyCaptureDiagonal4(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y).


%linha8
verifyCaptureDiagonals(Board,X,Y):- Y == 8,
        X == 1,
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y).

%linha8
verifyCaptureDiagonals(Board,X,Y):- Y == 8,
        X > 1,
        X < 4,
        verifyCaptureDiagonal4(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y).
%linha8
verifyCaptureDiagonals(Board,X,Y):- Y == 8,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).

%linha8
verifyCaptureDiagonals(Board,X,Y):- Y == 8,
        X > 5,
        X < 8,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).

%linha8
verifyCaptureDiagonals(Board,X,Y):- Y == 8,
        X == 8,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).


%linha7
verifyCaptureDiagonals(Board,X,Y):- Y == 7,
        X < 3,
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y).

%linha7
verifyCaptureDiagonals(Board,X,Y):- Y == 7,
        X == 3,
        verifyCaptureDiagonal4(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y).

%linha7
verifyCaptureDiagonals(Board,X,Y):- Y == 7,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal3(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).

%linha7
verifyCaptureDiagonals(Board,X,Y):- Y == 7,
        X == 7,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal2(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).

%linha7
verifyCaptureDiagonals(Board,X,Y):- Y == 7,
        X > 7,
        verifyCaptureDiagonal1(Board, X, Y),
        verifyCaptureDiagonal4(Board, X, Y).


/******************************************************************************************/

/******************************** verifical captura na horizontal ************************/
%linha1
verifyCaptureHorizontal(Board,X,Y):- Y == 1,
        X == 1,
        verifyCaptureHorizontal1(Board,X,Y).
%linha1
verifyCaptureHorizontal(Board,X,Y):- Y == 1,
        X == 5,
        verifyCaptureHorizontal2(Board,X,Y).
%linha2
verifyCaptureHorizontal(Board,X,Y):- Y == 2,
        X < 3,
        verifyCaptureHorizontal1(Board,X,Y).
%linha2  
verifyCaptureHorizontal(Board,X,Y):- Y == 2,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y).
%linha3
verifyCaptureHorizontal(Board,X,Y):- Y == 3,
        X < 4,
        verifyCaptureHorizontal1(Board,X,Y).
%linha3  
verifyCaptureHorizontal(Board,X,Y):- Y == 3,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y).  
%linha4
verifyCaptureHorizontal(Board,X,Y):- Y == 4,
        X < 5,
        verifyCaptureHorizontal1(Board,X,Y).
%linha4  
verifyCaptureHorizontal(Board,X,Y):- Y == 4,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y).  
%linha5
verifyCaptureHorizontal(Board,X,Y):- Y == 5,
        X < 6,
        verifyCaptureHorizontal1(Board,X,Y).
%linha5  
verifyCaptureHorizontal(Board,X,Y):- Y == 5,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y). 
%linha6
verifyCaptureHorizontal(Board,X,Y):- Y == 6,
        X < 7,
        verifyCaptureHorizontal1(Board,X,Y).
%linha6  
verifyCaptureHorizontal(Board,X,Y):- Y == 6,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y). 
%linha7
verifyCaptureHorizontal(Board,X,Y):- Y == 7,
        X < 6,
        verifyCaptureHorizontal1(Board,X,Y).
%linha7  
verifyCaptureHorizontal(Board,X,Y):- Y == 7,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y). 
%linha8
verifyCaptureHorizontal(Board,X,Y):- Y == 8,
        X < 5,
        verifyCaptureHorizontal1(Board,X,Y).
%linha8 
verifyCaptureHorizontal(Board,X,Y):- Y == 8,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y).
%linha9
verifyCaptureHorizontal(Board,X,Y):- Y == 9,
        X < 4,
        verifyCaptureHorizontal1(Board,X,Y).
%linha9
verifyCaptureHorizontal(Board,X,Y):- Y == 9,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y).
%linha10
verifyCaptureHorizontal(Board,X,Y):- Y == 10,
        X < 3,
        verifyCaptureHorizontal1(Board,X,Y).
%linha10
verifyCaptureHorizontal(Board,X,Y):- Y == 10,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y).
%linha11
verifyCaptureHorizontal(Board,X,Y):- Y == 11,
        X == 1,
        verifyCaptureHorizontal1(Board,X,Y).
%linha11
verifyCaptureHorizontal(Board,X,Y):- Y == 11,
        X == 5,
        verifyCaptureHorizontal2(Board,X,Y).


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

%Para que o jogador escolha qual das duas peças do adversário quer retirar  
%choosePiece(Board, X,Y,Board2) :- 
        
  
%bloqueia a posição X,Y do tabuleiro para que o jogador adversário não possa
%voltar a jogar para o mesmo sítio antes de se passar um turno de jogo
%blockCoordinates(Board, X,Y, Jogador, Board2): -

/****************************************************************************************/
