/*************************************** captura **************************************/
%Para alterar a peça (para vazio) quando é feita a captura
changePieceAtCapture(Board1, Xpos, Ypos, Board2) :- returnPieceAt(Board1,Xpos,Ypos,Pieceat),
        Pieceat \= ' ',
        setPieceAt(Board1, Xpos, Ypos, Board2, ' ').
        
        
%Para verificar se a jogada é uma jogada em que pode ser feita uma captura
isCapturePlay(Board,X,Y) :- verifyCaptureDiagonal1(Board, X,Y).
%        verifyCaptureHorizontal(Board, X,Y, Piece).



verifyCaptureDiagonal1(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 \= Pieceat,
        PieceAtD1 \= ' ',
        write('\n1 aux 1 1º\n'),
        verifyCaptureDiagonal1aux(Board, X1, Y1, Pieceat).

verifyCaptureDiagonal1(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == Pieceat,
        write('\n1 aux 1 2º\n').

verifyCaptureDiagonal1(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), /* diagonal esq baixo */
        PieceAtD1 == ' ',
        write('\n1 aux 1 3º\n').
       
        
verifyCaptureDiagonal1aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        Pieceat \= ' ',
        write('\n1 aux2 1 1º\n'),
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
         write('\n1 aux3 1 1º\n'),
        verifyCaptureDiagonal1aux3(Board, X1, Y1, Pieceat). 

verifyCaptureDiagonal1aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyCaptureDiagonal1aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.


verifyCaptureDiagonal1aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat,
        write('\nPosition of capture\n').

verifyCaptureDiagonal1aux3(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat.

verifyCaptureDiagonal1aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

%        
%       X2 is X - 1,
%        Y2 is Y + 1,
%        checkAt(Board, X2, Y2, PieceAtD2), /* diagonal esq cima */
%        X3 is X + 1,
%        Y3 is Y - 1,
%        checkAt(Board, X3, Y3, PieceAtD3), /* diagonal dir baixo */
%        X4 is X + 1,
%        Y4 is Y + 1,
%        checkAt(Board, X4, Y4, PieceAtD4), /* diagonal dir cima */
        

        
%verifyCaptureHorizontal(Board, X,Y, Piece).



%Para que o jogador escolha qual das duas peças do adversário quer retirar  
%choosePiece(Board, X,Y,Board2) :- 
        
  
%bloqueia a posição X,Y do tabuleiro para que o jogador adversário não possa
%voltar a jogar para o mesmo sítio antes de se passar um turno de jogo
%blockCoordinates(Board, X,Y, Jogador, Board2): -

/****************************************************************************************/
