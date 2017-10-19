
/*************************************** captura **************************************/
%Para verificar se a jogada é uma jogada em que pode ser feita uma captura
isCapturePlay(Board,X,Y,Board2) :- verifyCaptureDiagonals(Board, X,Y,Board2).
%verifyCaptureHorizontal(Board, X,Y,Board2).


%%Para alterar a peça (para vazio) quando é feita a captura
changePieceAtCapture(Board1,X1,Y1,X2,Y2,Board2, Piece) :- 
        pieceAtcaptureAux(Board1,X1,Y1,X2,Y2,Board2, Piece).

pieceAtcaptureAux(Board1,X1,Y1,X2,Y2,Board2, Piece):- Piece == 'W',
        write('\n[Player 1]\n'),
        write('\nCoordenates to remove\n'),
        write(X1),write(Y1),write('\n'),
        write(X2),write(Y2),write('\n'),
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
%        Pieceat \= ' ',
        Piece \= Pieceat,
        setPieceAt(Board1,Xpos,Ypos,Board2,' ').


changePieceAtCaptureAux(Board1,_,_,X2,Y2,Board2, Piece,Xpos, Ypos) :- returnPieceAt(Board1,X2,Y2,Pieceat),
        X2 == Xpos,
        Y2 == Ypos,
%        Pieceat \= ' ',
        Piece \= Pieceat,
        setPieceAt(Board1, Xpos, Ypos, Board2, ' ').

changePieceAtCaptureAux(Board1,X1,_,_,_,Board2,_,Xpos,_) :-  
        X1 \= Xpos,
        append([],Board1, Board2),
        write('Wrong coordenates. You lost your turn.  X1 diferente\n'),
        write('\n').

changePieceAtCaptureAux(Board1,_,_,X2,_,Board2,_,Xpos,_) :-  
        X2 \= Xpos,
        append([],Board1, Board2),
        write('Wrong coordenate. You lost your turn.  X2 diferente\n'),
        write('\n').

changePieceAtCaptureAux(Board1,X1,Y1,_,_,Board2,_,Xpos,Ypos) :-  
        X1 == Xpos,
        Y1 \= Ypos,
        append([],Board1, Board2),
        write('Wrong coordenate. You lost your turn.  y1 diferente\n'),
        write('\n').

changePieceAtCaptureAux(Board1,_,_,X2,Y2,Board2,_,Xpos,Ypos) :-  
        X2 == Xpos,
        Y2 \= Ypos,
        append([],Board1, Board2),
        write('Wrong coordenate. You lost your turn.  y2 diferente\n'),
        write('\n').


/******************** parte de cima do tabuleiro**********************/

%linha1 ate linha 3
verifyCaptureDiagonals(Board,X,Y,Board2):- Y < 4,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        append([],Board1,Board2).
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
        append([],Board1,Board2).
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
        append([],Board2,BoardR).

%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 1,
        X < 4,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        append([],Board1,BoardR).
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
        append([],Board3,BoardR).
%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board \= Board2,
        append([],Board2,BoardR).
%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 3,
        X < 6,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        append([],Board1,BoardR).
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
        append([],Board2,BoardR).
%%linha4
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 4,
        X > 5,
        X < 8,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        append([],Board1,BoardR).
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
        append([],Board1,BoardR).
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
        append([],Board1,BoardR).
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
        append([],Board2,BoardR).
%%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X == 3,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        append([],Board1,BoardR).
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
        append([],Board3,BoardR).
%%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board \= Board2,
        append([],Board2,BoardR).
%%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X > 3,
        X < 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        append([],Board1,BoardR).
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
        append([],Board2,BoardR).
%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X == 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board \= Board1,
        append([],Board1,BoardR).
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
        append([],Board1,BoardR).
%linha5
verifyCaptureDiagonals(Board,X,Y,BoardR):- Y == 5,
        X == 7,
        verifyCaptureDiagonal1(Board,X,Y,Board1),
        Board == Board1,
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        Board == Board2,
        verifyCaptureDiagonal4(Board,X,Y,BoardR).





%%linha 6
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 6,
        X < 4, 
        verifyCaptureDiagonal3(Board,X,Y,Board2),
        verifyCaptureDiagonal2(Board,X,Y,Board2).
%%linha 6
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 6,
        X > 3, 
        X < 7, 
        verifyCaptureDiagonal1(Board,X,Y,Board2),
        verifyCaptureDiagonal2(Board,X,Y,Board2),
        verifyCaptureDiagonal3(Board,X,Y,Board2),
        verifyCaptureDiagonal4(Board,X,Y,Board2).
%%linha 6
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 6,
        X > 6, 
        verifyCaptureDiagonal1(Board,X,Y,Board2),
        verifyCaptureDiagonal4(Board,X,Y,Board2).

/*************************************************************/
/******************** parte de baixo do tabuleiro**********************/

%linha11
verifyCaptureDiagonals(Board,X,Y,Board2):- Y > 8,
        Y < 12,
        X > 0,
        verifyCaptureDiagonal41(Board,X,Y,Board2),
        verifyCaptureDiagonal21(Board,X,Y,Board2).
%linha8
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 8,
        X == 1,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        verifyCaptureDiagonal31(Board,X,Y,Board2).
%linha8
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 8,
        X > 1,
        X < 4,
        verifyCaptureDiagonal41(Board,X,Y,Board2),
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        verifyCaptureDiagonal31(Board,X,Y,Board2).
%linha8
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 8,
        X > 3,
        X < 6,
        verifyCaptureDiagonal11(Board,X,Y,Board2),
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        verifyCaptureDiagonal31(Board,X,Y,Board2),
        verifyCaptureDiagonal41(Board,X,Y,Board2).
%linha8
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 8,
        X > 5,
        X < 8,
        verifyCaptureDiagonal11(Board,X,Y,Board2),
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        verifyCaptureDiagonal41(Board,X,Y,Board2).
%linha8
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 8,
        X == 8,
        verifyCaptureDiagonal11(Board,X,Y,Board2),
        verifyCaptureDiagonal41(Board,X,Y,Board2).
%linha7
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 7,
        X < 3,
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        verifyCaptureDiagonal31(Board,X,Y,Board2).
%linha7
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 7,
        X == 3,
        verifyCaptureDiagonal41(Board,X,Y,Board2),
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        verifyCaptureDiagonal31(Board,X,Y,Board2).
%linha7
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 7,
        X > 3,
        X < 7,
        verifyCaptureDiagonal11(Board,X,Y,Board2),
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        verifyCaptureDiagonal31(Board,X,Y,Board2),
        verifyCaptureDiagonal41(Board,X,Y,Board2).
%linha7
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 7,
        X == 7,
        verifyCaptureDiagonal11(Board,X,Y,Board2),
        verifyCaptureDiagonal21(Board,X,Y,Board2),
        verifyCaptureDiagonal41(Board,X,Y,Board2).
%linha7
verifyCaptureDiagonals(Board,X,Y,Board2):- Y == 7,
        X > 7,
        verifyCaptureDiagonal11(Board,X,Y,Board2),
        verifyCaptureDiagonal41(Board,X,Y,Board2).


/******************************************************************************************/

/******************************** verifical captura na horizontal ************************/
%linha1
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 1,
        X < 3,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha1
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 1,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2).
%linha1
verifyCaptureHorizontal(_,X,Y):- Y == 1,
        X == 3.
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
        X > 4,
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
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y,Board2). 
%linha6
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 6,
        X < 8,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha6  
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 6,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y,Board2). 
%linha7
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 7,
        X < 7,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha7  
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 7,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y,Board2). 
%linha8
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 8,
        X < 6,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha8 
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 8,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y,Board2). 
%linha9
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 9,
        X < 5,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha9
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 9,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y,Board2).
%linha10
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 10,
        X < 4,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha10
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 10,
        X > 4,
        verifyCaptureHorizontal2(Board,X,Y,Board2).
%linha10
verifyCaptureHorizontal(_,X,Y,_):- Y == 10,
        X == 4.
%linha11
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 11,
        %        X < 3,
        verifyCaptureHorizontal1(Board,X,Y,Board2).
%linha11
verifyCaptureHorizontal(Board,X,Y,Board2):- Y == 11,
        X > 3,
        verifyCaptureHorizontal2(Board,X,Y,Board2).
%linha11
verifyCaptureHorizontal(_,X,Y,_):- Y == 11,
        X == 3.

/*************************************************************/


%bloqueia a posição X,Y do tabuleiro para que o jogador adversário não possa
%voltar a jogar para o mesmo sítio antes de se passar um turno de jogo
%blockCoordinates(Board, X,Y, Jogador, Board2): -

/****************************************************************************************/
