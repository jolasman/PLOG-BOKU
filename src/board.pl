
/* Empty board generation */
generateEmptyBoard(X) :- 
        emptyBoardAux(L0, 0),
        emptyBoardAux(L1, 1),
        emptyBoardAux(L2, 2),
        emptyBoardAux(L3, 3),
        emptyBoardAux(L4, 4),
        emptyBoardAux(L5, 5),
        emptyBoardAux(L6, 6),
        emptyBoardAux(L7, 7),
        emptyBoardAux(L8, 8),
        emptyBoardAux(L9, 9),
        emptyBoardAux(L10, 10),
        emptyBoardAux(L11, 11),
        append([], [L0], X0),
        append(X0, [L1], X1),
        append(X1, [L2], X2),
        append(X2, [L3], X3),
        append(X3, [L4], X4),
        append(X4, [L5], X5),
        append(X5, [L6], X6),
        append(X6, [L7], X7),
        append(X7, [L8], X8),
        append(X8, [L9], X9),
        append(X9, [L10], X10),
        append(X10, [L11], X).


emptyBoardAux(L, N) :-
        N == 0,
        append([],['0','1','2','3','4','5','6','7','8','9'],L).
emptyBoardAux(L, N) :-
        N == 1,
        append([],[' ',' ',' ',' ',' ','E','E','E','E','E'],L).
emptyBoardAux(L, N) :-
        N == 2,
        append([],[' ',' ',' ',' ',' ',' ','E','E','E','E'],L).
emptyBoardAux(L, N) :-
        N == 3,
        append([],[' ',' ',' ',' ',' ',' ',' ','E','E','E'],L).
emptyBoardAux(L, N) :-
        N == 4,
        append([],[' ',' ',' ',' ',' ',' ',' ',' ','E','E'],L).
emptyBoardAux(L, N) :-
        N == 5,
        append([],[' ',' ',' ',' ',' ',' ',' ',' ',' ','E'],L).
emptyBoardAux(L, N) :-
        N == 6,
        append([],[' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','E'],L).
emptyBoardAux(L, N) :-
        N == 7,
        append([],['E',' ',' ',' ',' ',' ',' ',' ',' ',' '],L).
emptyBoardAux(L, N) :-
        N == 8,
        append([],['E','E',' ',' ',' ',' ',' ',' ',' ',' '],L).
emptyBoardAux(L, N) :-
        N == 9,
        append([],['E','E','E',' ',' ',' ',' ',' ',' ',' '],L).
emptyBoardAux(L, N) :-
        N == 10,
        append([],['E','E','E','E',' ',' ',' ',' ',' ',' '],L).
emptyBoardAux(L, N) :-
        N == 11,
        append([],['E','E','E','E','E',' ',' ',' ',' ',' '],L).



%Para verificar se o jogador pode realmente realizar a jogada
verifyCoordenates(Board1, Xpos, Ypos, Player, Board2) :- returnPieceAt(Board1,Xpos, Ypos, Piece), %retorna qual a peça que está no tab
        Piece == ' ',
        write('\n verifyCoordenates say that is an empty spot.'),
        write('\n You can play to this position.'),
        write('\n'),
        write('\n'),
        setPieceAt(Board1, Xpos,Ypos, Board2, Player).
        
%Para efectuar a jogada que o jogador indicou, após verificação da mesma
setPieceAt(Board1, Xpos, Ypos, Board2, Piece) :- changePiece(Board1, 0, Xpos, Ypos, Piece, Board2).

/**********************************************************************/
changePiece([B|Bs], N, X, Y, Piece, Board2) :-
        N == Y,
        changeLinePiece(B, 0, X, Piece, BoardAux),
        append([BoardAux], Bs, Board2).

changePiece([B|Bs], N, X, Y, Piece, Board2) :-
        N < Y,
        N2 is N + 1,
        changePiece(Bs, N2, X, Y, Piece, BoardAux),
        append([B], BoardAux, Board2).

changeLinePiece([L|Ls], N, X, Piece, L2) :-
        N == X,
        append([Piece], Ls, L2).

changeLinePiece([L|Ls], N, X, Piece, L2) :-
        N < X,
        N2 is N + 1,
        changeLinePiece(Ls, N2, X, Piece, Laux),
        append([L], Laux, L2).

/**************************************************************************/
        
%Para saber qual a peça que está numa determinada coordenada 
%codigo de outra pessoa. adaptar estes predicados. contudo parece que isto funciona assim
returnPieceAt(Board, X, Y, Piece) :- boardLine(Board, 0, Y, Line),
        linePiece(Line, 0, X, Piece).

boardLine([B|Bs], N, Y, Line) :-
        N == Y,
        append([], B, Line).

boardLine([B|Bs], N, Y, Line) :-
        N < Y,
        N2 is N + 1,
        boardLine(Bs, N2, Y, Line).

linePiece([L|Ls], N, X, Piece) :-
        N == X,
        Piece = L.

linePiece([L|Ls], N, X, Piece) :-
        N < X,
        N2 is N + 1,
        linePiece(Ls, N2, X, Piece).

%alterar estes predicados boardLine e line Piece

/************************************************************************************/


%Para alterar a peça (para vazio)
%changePieceAt(Board1, X, Y, Piece, Board2) :-
        
        
%Para verificar se a jogada é uma jogada em que pode ser feita uma captura
%        isCapturePlay(Board, X,Y, Piece) :-

%Para que o jogador escolha qual das duas peças do adversário quer retirar  
%choosePiece(Board, X,Y,Board2) :- 
        
  
%bloqueia a posição X,Y do tabuleiro para que o jogador adversário não possa
%voltar a jogar para o mesmo sítio antes de se passar um turno de jogo
%blockCoordinates(Board, X,Y, Jogador, Board2): -



