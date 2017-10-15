/*************************************** win conditions **************************************/

        
%Para verificar se a jogada é uma jogada em que pode ser feita uma captura
isWinCondition(Board,X,Y) :- %verifyWinDiagonals(Board, X,Y),
        verifyWinHorizontal(Board, X,Y).

verifyWinDiagonals(Board,X,Y):- Y < 7,
        verifyWinDiagonal1(Board, X, Y).
%        verifyWinDiagonal2(Board, X, Y),
%        verifyWinDiagonal3(Board, X, Y),
%        verifyWinDiagonal4(Board, X, Y).
%
%verifyWinDiagonals(Board,X,Y):- Y > 6,
%        verifyWinDiagonal11(Board, X, Y),
%        verifyWinDiagonal21(Board, X, Y),
%        verifyWinDiagonal31(Board, X, Y),
%        verifyWinDiagonal41(Board, X, Y).

verifyWinHorizontal(Board,X,Y):- verifyWinHorizontal1(Board,X,Y),
        verifyWinHorizontal2(Board,X,Y).



/******************************** verifical captura na horizontal ************************/

%horizontal esq to dir
verifyWinHorizontal1(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinHorizontal1aux(Board, X1, Y, Pieceat).

verifyWinHorizontal1(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), 
        PieceAtD1 \= Pieceat.

verifyWinHorizontal1(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), 
        PieceAtD1 == ' '.
       
/**********/
verifyWinHorizontal1aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        verifyWinHorizontal1aux2(Board, X1, Y, Pieceat). 

verifyWinHorizontal1aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.
        
verifyWinHorizontal1aux(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/**********/
verifyWinHorizontal1aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        verifyWinHorizontal1aux3(Board, X1, Y, Pieceat). 

verifyWinHorizontal1aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyWinHorizontal1aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/**********/
verifyWinHorizontal1aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        verifyWinHorizontal1aux4(Board, X1, Y, Pieceat). 

verifyWinHorizontal1aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyWinHorizontal1aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/***********/
verifyWinHorizontal1aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game, left to right\n').

verifyWinHorizontal1aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game, left to right\n').

verifyWinHorizontal1aux4(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyWinHorizontal1aux4(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/





/******************************** *************** ************************/

%horizontal dir to esq
verifyWinHorizontal2(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinHorizontal2aux(Board, X1, Y, Pieceat).

verifyWinHorizontal2(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), 
        PieceAtD1 \= Pieceat.

verifyWinHorizontal2(Board, X,Y):- returnPieceAt(Board, X, Y, _), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), 
        PieceAtD1 == ' '.
       
/**********/
verifyWinHorizontal2aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        verifyWinHorizontal2aux2(Board, X1, Y, Pieceat). 

verifyWinHorizontal2aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.
        
verifyWinHorizontal2aux(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/**********/
verifyWinHorizontal2aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        verifyWinHorizontal2aux3(Board, X1, Y, Pieceat). 

verifyWinHorizontal2aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyWinHorizontal2aux2(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/**********/
verifyWinHorizontal2aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        verifyWinHorizontal2aux4(Board, X1, Y, Pieceat). 

verifyWinHorizontal2aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyWinHorizontal2aux3(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/***********/
verifyWinHorizontal2aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game, right to left\n').

verifyWinHorizontal2aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game, right to left\n').

verifyWinHorizontal2aux4(Board, X, Y,PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior \= Pieceat.

verifyWinHorizontal2aux4(Board, X, Y, _):- returnPieceAt(Board, X, Y, Pieceat), 
        Pieceat == ' '.

/*****************************************************************************************************/
