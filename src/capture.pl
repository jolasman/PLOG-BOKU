
/*************************************** captura **************************************/
%Para verificar se a jogada � uma jogada em que pode ser feita uma captura
isCapturePlay(Board,X,Y,Board2) :- verifyCaptureDiagonals(Board, X,Y,Board1),
        Board \= Board1,
        Board1 = Board2.
%Para verificar se a jogada � uma jogada em que pode ser feita uma captura
isCapturePlay(Board,X,Y,BoardR) :- verifyCaptureDiagonals(Board, X,Y,Board1),
        Board == Board1,
        verifyCaptureHorizontal(Board,X,Y,BoardR).

/*****/
%%Para alterar a pe�a (para vazio) quando � feita a captura
changePieceAtCapture(Board1,X1,Y1,X2,Y2,Board2, Piece) :- 
        pieceAtcaptureAux(Board1,X1,Y1,X2,Y2,Board2, Piece).

pieceAtcaptureAux(Board1,X1,Y1,X2,Y2,Board2, Piece):- Piece == 'W',
        write('\n[Player 1]\n'),
        write('\nCoordenates of the pieces that you can remove:\n'),
        write('X: '),write(X1),write(' - Y: '),write(Y1),nl,
        write('X: '),write(X2),write(' - Y: '),write(Y2),nl,
        write('\n[Player 1]\n'),
        write('Choose the piece of your opponent you want to remove\n'),
        write('X: '),
        read(Xpos),
        write('\n'),
        write('Y: '),
        read(Ypos),
        write('\n'),
        changePieceAtCaptureAux(Board1,X1,Y1,X2,Y2,Board2,Piece,Xpos,Ypos).

pieceAtcaptureAux(Board1,X1,Y1,X2,Y2,Board2, Piece) :- Piece == 'B',
        write('\n[Player 2]\n'),
        write('Coordenates of the pieces that you can remove:\n'),
        write('X: '),write(X1),write(' - Y: '),write(Y1),nl,
        write('X: '),write(X2),write(' - Y: '),write(Y2),nl,
        write('\n[Player 2]\n'),
        write('Choose the piece of your opponent you want to remove\n'),
        write('X: '),
        read(Xpos),
        write('\n'),
        write('Y: '),
        read(Ypos),
        write('\n'),
        changePieceAtCaptureAux(Board1,X1,Y1,X2,Y2,Board2,Piece,Xpos, Ypos).

changePieceAtCaptureAux(Board1,X1,Y1,_,_,Board2, Piece,Xpos,Ypos) :- returnPieceAt(Board1,X1,Y1,Pieceat), 
        X1 == Xpos,
        Y1 == Ypos,
        Piece \= Pieceat,
        setPieceAt(Board1,Xpos,Ypos,Board2,' ').

changePieceAtCaptureAux(Board1,_,_,X2,Y2,Board2, Piece,Xpos, Ypos) :- returnPieceAt(Board1,X2,Y2,Pieceat),
        X2 == Xpos,
        Y2 == Ypos,
        Piece \= Pieceat,
        setPieceAt(Board1, Xpos, Ypos, Board2, ' ').

changePieceAtCaptureAux(Board1,X1,_,_,_,Board2,_,Xpos,_) :-  
        X1 \= Xpos,
        Board1 = Board2,
        write('Wrong coordenates. You lost your turn.  X1 diferente\n'),
        write('\n').

changePieceAtCaptureAux(Board1,_,_,X2,_,Board2,_,Xpos,_) :-  
        X2 \= Xpos,
        Board1 = Board2,
        write('Wrong coordenate. You lost your turn.  X2 diferente\n'),
        write('\n').

changePieceAtCaptureAux(Board1,X1,Y1,_,_,Board2,_,Xpos,Ypos) :-  
        X1 == Xpos,
        Y1 \= Ypos,
        Board1 = Board2,
        write('Wrong coordenate. You lost your turn.  y1 diferente\n'),
        write('\n').

changePieceAtCaptureAux(Board1,_,_,X2,Y2,Board2,_,Xpos,Ypos) :-  
        X2 == Xpos,
        Y2 \= Ypos,
        Board1 = Board2,
        write('Wrong coordenate. You lost your turn.  y2 diferente\n'),
        write('\n').

/********************/

%%Para alterar a pe�a (para vazio) quando � feita a captura na horizontal
changePieceAtCaptureHorizontal(Board1,X1,X2,Y,Board3, Piece) :-
        pieceAtcaptureHorizontalAux(Board1,X1,X2,Y,Board3, Piece).

pieceAtcaptureHorizontalAux(Board1,X1,X2,Y,Board3, Piece):- Piece == 'W',
        write('\n[Player 1]\n'),
        write('\nCoordenates to remove\n'),
        write(X1),write(Y),write('\n'),
        write(X2),write(Y),write('\n'),
        write('\n[Player 1]\n'),
        write('Choose the piece of your opponent you want to remove\n'),
        write('X: '),
        read(Xpos),
        write('\n'),
        write('Y: '),
        read(Ypos),
        write('\n'),
        changePieceAtCaptureHorizontalAux(Board1,X1,X2,Y,Board3,Piece,Xpos,Ypos).

pieceAtcaptureHorizontalAux(Board1,X1,X2,Y,Board3, Piece) :- Piece == 'B',
        write('\n[Player 2]\n'),
        write('Choose the piece of your opponent you want to remove\n'),
        write('X: '),
        read(Xpos),
        write('\n'),
        write('Y: '),
        read(Ypos),
        write('\n'),
        changePieceAtCaptureHorizontalAux(Board1,X1,X2,Y,Board3,Piece,Xpos, Ypos).

changePieceAtCaptureHorizontalAux(Board1,X1,_,Y,Board3, Piece,Xpos,Ypos) :- returnPieceAt(Board1,X1,Y,Pieceat), 
        X1 == Xpos,
        Y == Ypos,
        Piece \= Pieceat,
        setPieceAt(Board1,Xpos,Ypos,Board3,' ').


changePieceAtCaptureHorizontalAux(Board1,_,X2,Y,Board3, Piece,Xpos, Ypos) :- returnPieceAt(Board1,X2,Y,Pieceat),
        X2 == Xpos,
        Y == Ypos,
        Piece \= Pieceat,
        setPieceAt(Board1,Xpos,Ypos,Board3,' ').

changePieceAtCaptureHorizontalAux(Board1,X1,_,_,Board2,_,Xpos,_) :-  
        X1 \= Xpos,
        Board1 = Board2,
        write('Wrong coordenates. You lost your turn.  X1 diferente\n'),
        write('\n').

changePieceAtCaptureHorizontalAux(Board1,_,X2,_,Board2,_,Xpos,_) :-  
        X2 \= Xpos,
        Board1 = Board2,
        write('Wrong coordenate. You lost your turn.  X2 diferente\n'),
        write('\n').

changePieceAtCaptureHorizontalAux(Board1,X1,_,Y,Board2,_,Xpos,Ypos) :-  
        X1 == Xpos,
        Y \= Ypos,
        Board1 = Board2,
        write('Wrong coordenate. You lost your turn.  y1 diferente\n'),
        write('\n').

changePieceAtCaptureHorizontalAux(Board1,_,X2,Y,Board2,_,Xpos,Ypos) :-  
        X2 == Xpos,
        Y \= Ypos,
        Board1 = Board2,
        write('Wrong coordenate. You lost your turn.  y2 diferente\n'),
        write('\n').


/****** pc mode *******/
/*************************************** captura **************************************/
%Para verificar se a jogada � uma jogada em que pode ser feita uma captura
isCapturePlayPC(Board,X,Y,Board2) :- verifyCaptureDiagonalsPC(Board, X,Y,Board1),
        Board \= Board1,
        Board1 = Board2.
%Para verificar se a jogada � uma jogada em que pode ser feita uma captura
isCapturePlayPC(Board,X,Y,BoardR) :- verifyCaptureDiagonalsPC(Board, X,Y,Board1),
        Board == Board1,
        verifyCaptureHorizontalPC(Board,X,Y,BoardR).


/*****pc mode******/

changePieceAtCapturePC(Board1,X1,Y1,X2,Y2,Board2, Piece) :- 
        pieceAtcapturePCAux(Board1,X1,Y1,X2,Y2,Board2, Piece).

pieceAtcapturePCAux(Board1,X1,Y1,X2,Y2,Board2, Piece):- Piece == 'W',
        write('\n[Player 1]\n'),
        write('\nCoordenates of the pieces that you can remove:(xy)\n'),
        write('X: '),write(X1),write(' - Y: '),write(Y1),nl,
        write('X: '),write(X2),write(' - Y: '),write(Y2),nl,
        sleep(2),
        write('Computer chose the part he wants to remove\n'), 
        write('X: '),write(X1),write(' - Y: '),write(Y1),nl,     
        write('\n'),
        setPieceAt(Board1,X1,Y1,Board2,' ').

pieceAtcapturePCAux(Board1,X1,Y1,X2,Y2,Board2, Piece) :- Piece == 'B',
        write('\n[Player 2]\n'),
        write('\nCoordenates of the pieces that you can remove:\n'),
        write('X: '),write(X1),write(' - Y: '),write(Y1),nl,
        write('X: '),write(X2),write(' - Y: '),write(Y2),nl,
        sleep(2),
        write('Computer chose the part he wants to remove\n'), 
        write('X: '),write(X1),write(' - Y: '),write(Y1),nl,     
        write('\n'),
        setPieceAt(Board1,X1,Y1,Board2,' ').

%%Para alterar a pe�a (para vazio) quando � feita a captura na horizontal
changePieceAtCaptureHorizontalPC(Board1,X1,X2,Y,Board3, Piece) :-
        pieceAtcaptureHorizontalPCAux(Board1,X1,X2,Y,Board3, Piece).

pieceAtcaptureHorizontalPCAux(Board1,X1,X2,Y,Board2, Piece):- Piece == 'W',
        write('\n[Player 1]\n'),
        write('\nCoordenates of the pieces that you can remove:\n'),
        write('X: '),write(X1),write(' - Y: '),write(Y),nl,
        write('X: '),write(X2),write(' - Y: '),write(Y),nl,
        sleep(2),
        write('Computer chose the piece he wants to remove\n'),
        write('X: '),write(X1),write(' - Y: '),write(Y),nl,      
        write('\n'),
        setPieceAt(Board1,X1,Y,Board2,' ').

pieceAtcaptureHorizontalPCAux(Board1,X1,X2,Y,Board2, Piece) :- Piece == 'B',
        write('\n[Player 2]\n'),
        write('\nCoordenates of the pieces that you can remove:\n'),
        write('X: '),write(X1),write(' - Y: '),write(Y),nl,
        write('X: '),write(X2),write(' - Y: '),write(Y),nl,
        sleep(2),
        write('Computer chose the piece he wants to remove\n'),   
        write('X: '),write(X1),write(' - Y: '),write(Y),nl,   
        write('\n'),
        setPieceAt(Board1,X1,Y,Board2,' ').


/******************** parte de cima do tabuleiro, VERIFICA QUE DIAGONAIS USAR**********************/

%linha1 ate linha 3
verifyCaptureDiagonals(Board,X,Y,Board2):- Y < 4,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = Board2.
%linha1 ate linha 3
verifyCaptureDiagonals(Board,X,Y,Board2):- Y < 4,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal3(Board,X,Y,Board2).
%linha4
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 4,
        X == 1,
        verifyCaptureDiagonal2(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = Board2.
%linha4
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 4,
        X == 1,
        verifyCaptureDiagonal2(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal3(Board,X,Y,Board2).
%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 1,
        X < 4,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.

%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 1,
        X < 4,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 1,
        X < 4,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3(Board,X,Y,BoardR).
%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3(Board,X,Y,Board3),
        Board \= Board3,
        Board3 = BoardR.
%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3(Board,X,Y,Board3),
        Board == Board3,
        verifyCaptureDiagonal4(Board,X,Y,BoardR).
%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 5,
        X < 8,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 5,
        X < 8,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 5,
        X < 8,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal4(Board,X,Y,BoardR).
%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X == 8,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X == 8,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal4(Board,X,Y,BoardR).
%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X < 3,
        verifyCaptureDiagonal2(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X < 3,
        verifyCaptureDiagonal2(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal3(Board,X,Y,BoardR).
%%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X == 3,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X == 3,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X == 3,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3(Board,X,Y,BoardR).
%%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3(Board,X,Y,Board3),
        Board \= Board3,
        Board3 = BoardR.
%%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3(Board,X,Y,Board3),
        Board == Board3,
        verifyCaptureDiagonal4(Board,X,Y,BoardR).
%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X == 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X == 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X > 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal4(Board,X,Y,BoardR).
%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X > 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X == 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal4(Board,X,Y,BoardR).
%%linha 6
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 6,
        X < 4, 
        verifyCaptureDiagonal3(Board,X,Y,Board1),
        board \= 1,
        Board1 = BoardR.
%%linha 6
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 6,
        X < 4, 
        verifyCaptureDiagonal3(Board,X,Y,Board1),
        board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,BoardR).
%%linha 6
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 6,
        X > 3, 
        X < 7, 
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%%linha 6
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 6,
        X > 3, 
        X < 7, 
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%%linha 6
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 6,
        X > 3, 
        X < 7, 
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3(Board,X,Y,Board3),
        Board \= Board3,
        Board3 = BoardR.
%%linha 6
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 6,
        X > 3, 
        X < 7, 
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal3(Board,X,Y,Board3),
        Board == Board3,
        verifyCaptureDiagonal4(Board,X,Y,BoardR).
%%linha 6
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 6,
        X > 6, 
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%%linha 6
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 6,
        X > 6, 
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal4(Board,X,Y,BoardR).

/*************************************************************/
/******************** parte de baixo do tabuleiro**********************/

%linha11
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y > 8,
        Y < 12,
        X > 0,
        verifyCaptureDiagonal41(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha11
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y > 8,
        Y < 12,
        X > 0,
        verifyCaptureDiagonal41(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,BoardR).
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X == 1,
        verifyCaptureDiagonal21(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X == 1,
        verifyCaptureDiagonal21(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal31(Board,X,Y,BoardR).
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X > 1,
        X < 4,
        verifyCaptureDiagonal41(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X > 1,
        X < 4,
        verifyCaptureDiagonal41(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board \= Board2,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X > 1,
        X < 4,
        verifyCaptureDiagonal41(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31(Board,X,Y,BoardR).
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X > 3,
        X < 6,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X > 3,
        X < 6,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X > 3,
        X < 6,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31(Board,X,Y,Board3),
        Board \= Board3,
        Board3 = BoardR.
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X > 3,
        X < 6,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31(Board,X,Y,Board3),
        Board == Board3,
        verifyCaptureDiagonal41(Board,X,Y,BoardR).
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X > 5,
        X < 8,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X > 5,
        X < 8,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X > 5,
        X < 8,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal41(Board,X,Y,BoardR).
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X == 8,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha8
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 8,
        X == 8,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal41(Board,X,Y,BoardR).
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X < 3,
        verifyCaptureDiagonal21(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X < 3,
        verifyCaptureDiagonal21(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal31(Board,X,Y,BoardR).
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X == 3,
        verifyCaptureDiagonal41(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X == 3,
        verifyCaptureDiagonal41(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X == 3,
        verifyCaptureDiagonal41(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31(Board,X,Y,BoardR).
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X > 3,
        X < 7,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X > 3,
        X < 7,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X > 3,
        X < 7,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31(Board,X,Y,Board3),
        Board \= Board3,
        Board3 = BoardR.
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X > 3,
        X < 7,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal31(Board,X,Y,Board3),
        Board == Board3,
        verifyCaptureDiagonal41(Board,X,Y,BoardR).
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X == 7,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X == 7,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board \= Board2,
        Board2 = BoardR.
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X == 7,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal41(Board,X,Y,BoardR).
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X > 7,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board \= Board1,
        Board1 = BoardR.
%linha7
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 7,
        X > 7,
        verifyCaptureDiagonal11(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal41(Board,X,Y,BoardR).


/******************************************************************************************/

/******************************** verifical captura na horizontal ************************/
%linha1
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 1,
        X == 3,
        append([],Board,Board2).
%linha1
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 1,
        X < 3,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha1
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 1,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2).
%linha2
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 2,
        X < 4,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha2  
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 2,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2).
%linha3
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 3,
        X < 5,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha3  
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 3,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2).  
%linha4
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 4,
        X < 6,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha4  
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 4,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2).  
%linha5
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 5,
        X < 7,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha5  
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 5,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2). 
%linha6
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 6,
        X < 8,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha6  
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 6,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2). 
%linha7
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 7,
        X < 7,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha7  
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 7,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2). 
%linha8
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 8,
        X < 6,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha8 
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 8,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2). 
%linha9
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 9,
        X < 5,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha9
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 9,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2).
%linha10
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 10,
        X == 4,
        append([],Board,Board2).
%linha10
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 10,
        X < 4,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha10
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 10,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2).
%linha11
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 11,
        X < 3,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha11
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 11,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2).
%linha11
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 11,
        X == 3,
        append([],Board,Board2).

/*************************************************************/


%bloqueia a posi��o X,Y do tabuleiro para que o jogador advers�rio n�o possa
%voltar a jogar para o mesmo s�tio antes de se passar um turno de jogo
%blockCoordinates(Board, X,Y, Jogador, Board2): -

/****************************************************************************************/
