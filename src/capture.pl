/*************************************** captura **************************************/
%Para alterar a peça (para vazio) quando é feita a captura
changePieceAtCapture(Board1, Xpos, Ypos, Board2) :- returnPieceAt(Board1,Xpos,Ypos,Pieceat),
        Pieceat \= ' ',
        setPieceAt(Board1, Xpos, Ypos, Board2, ' ').
        
        
%Para verificar se a jogada é uma jogada em que pode ser feita uma captura
isCapturePlay(Board,X,Y) :- verifyCaptureDiagonals(Board, X,Y).
%        verifyCaptureHorizontal(Board, X,Y, Piece).

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












%verifyCaptureHorizontal(Board, X,Y, Piece).



%Para que o jogador escolha qual das duas peças do adversário quer retirar  
%choosePiece(Board, X,Y,Board2) :- 
        
  
%bloqueia a posição X,Y do tabuleiro para que o jogador adversário não possa
%voltar a jogar para o mesmo sítio antes de se passar um turno de jogo
%blockCoordinates(Board, X,Y, Jogador, Board2): -

/****************************************************************************************/
