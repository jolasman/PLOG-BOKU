
/* Empty board generation */
generateEmptyBoard(X) :- 
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
        emptyBoardAux(L12, 12),
        append([], [L1], X1),
        append(X1, [L2], X2),
        append(X2, [L3], X3),
        append(X3, [L4], X4),
        append(X4, [L5], X5),
        append(X5, [L6], X6),
        append(X6, [L7], X7),
        append(X7, [L8], X8),
        append(X8, [L9], X9),
        append(X9, [L10], X10),
        append(X10, [L11], X11),
        append(X11, [L12], X).



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
        append([],[' ',' ',' ',' ',' ',' ',' ',' ',' ','E'],L).
emptyBoardAux(L, N) :-
        N == 8,
        append([],[' ',' ',' ',' ',' ',' ',' ',' ','E','E'],L).
emptyBoardAux(L, N) :-
        N == 9,
        append([],[' ',' ',' ',' ',' ',' ',' ', 'E','E','E'],L).
emptyBoardAux(L, N) :-
        N == 10,
        append([],[' ',' ',' ',' ',' ',' ','E','E','E','E'],L).
emptyBoardAux(L, N) :-
        N == 11,
        append([],[' ',' ',' ',' ',' ','E','E','E','E','E'],L).
emptyBoardAux(L, N) :-
        N == 12,
        append([],['1','2','3','4','5','6','7','8','9','10'],L).


/*********************************** verificação das jogadas  ***************************/


%Para verificar se o jogador pode realmente realizar a jogada e realiza se tal for possivel
verifyCoordenates(Board1, Xpos, Ypos, Player, Board2) :- returnPieceAt(Board1,Xpos, Ypos, Piece), %retorna qual a peça que está no tab
        Piece == ' ',
        write('\nPredicate verifyCoordenates/5 say that is an empty spot.'),
        write('\nYou can play to this position.'),
        write('\n'),
        write('\n'),
        setPieceAt(Board1, Xpos,Ypos, Board2, Player).



verifyCoordenates(Board1, Xpos, Ypos, Piece, Board2) :- returnPieceAt(Board1,Xpos, Ypos, Pieceat), %retorna qual a peça que está no tab
        Pieceat \= ' ',
        write('\nPredicate verifyCoordenates/5 say that there is a piece in that position: '),
        write(Pieceat),
        write('\n You can not play to this position and you lose your turn!!!!!'),
        write('\n'),
        write('\n'),
        setPieceAt(Board1, Xpos,Ypos, Board2, Piece).



/**********************************************************************************************/
        

/********************************mudar peça no tabuleiro**************************************/


%Para efectuar a jogada que o jogador indicou, após verificação da mesma
setPieceAt(Board1, Xpos, Ypos, Board2, Piece) :- changePiece(Board1, 1, Xpos, Ypos, Piece, Board2).


%recebe o tabuleiro de jogo e isola a coluna pretendida.
changePiece([B|Bs], N, X, Y, Piece, Board2) :-
        N == Y,
        changeLinePiece(B, 1, X, Piece, BoardAux),% chama o changeline com a cabeça da lista que e' a coluna selected
        append([BoardAux], Bs, Board2). % board 2 e' Bs (colunas para a frente) com a cabeça vazia.

changePiece([B|Bs], N, X, Y, Piece, Board2) :-
        N < Y,
        N2 is N + 1,
        changePiece(Bs, N2, X, Y, Piece, BoardAux), %chamo com as restantes listas da lista (colunas) com o aux vazio
        append([B], BoardAux, Board2). % guardo a lista nao alterada em Board2.


%percorre a linha e coloca a peça na posicao X tendo em conta a coluna (lista) escolhida em change piece
changeLinePiece([_|Ls], N, X, Piece, L2) :-
        N == X,
        append([Piece], Ls, L2). %coloca a peça na cabeça da lista, que corresponde à posição X pretendida

changeLinePiece([L|Ls], N, X, Piece, L2) :-
        N < X,
        N2 is N + 1,
        changeLinePiece(Ls, N2, X, Piece, Laux),%chama com os restantes elementos da linha
        append([L], Laux, L2). %guarda o elemento da posição n em L2. (guarda os que nao sao alterados)

/**************************************************************************************************/

/************************************saber peça no tabuleiro *************************************/
%Para saber qual a peça que está numa determinada coordenada 
%codigo de outra pessoa. adaptar estes predicados. contudo parece que isto funciona assim
returnPieceAt(Board, X, Y, Piece) :- boardLine(Board, 1, Y, Line), % começa no 1 por causa da linha dos numeros
        linePiece(Line, 1, X, Piece). %tem de ser com 1 para dar certo na linha. devido ao changelinepice ser 1 tambem
       

%recebe o tabuleira e isola a lista que é referente à coluna do tabuleiro
boardLine([B|_], N, Y, Line) :-
        N == Y,
        append([], B, Line). % se for a cabeça da lista de listas (primeira lista) guarda a lista em line
%seleciona a lista que queremos basicamente

boardLine([_|Bs], N, Y, Line) :-
        N < Y,
        N2 is N + 1,
        boardLine(Bs, N2, Y, Line). %percorre a lista de listas ate que a lista que queremos esteja À cabeça

%recebe a linha ja escolhida em boardline e retorna a peça que está na posição X.
linePiece([L|_], N, X, Piece) :-
        N == X,
        Piece = L. %se a posição x for a cabeça da lista a peça e' a cabeça da lista

linePiece([_|Ls], N, X, Piece) :-
        N < X,
        N2 is N + 1,
        linePiece(Ls, N2, X, Piece). %percorre a lista até que a posição X seja a cabeça da lista

/*******************************************************************************************************/



