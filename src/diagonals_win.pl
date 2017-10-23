


%/***********************************diagonal 1 -> esq peça em cima para baixo *********************************************/

verifyWinDiagonal1(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        Y1 is Y + 1,
        returnPieceAt(Board, X, Y1, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinDiagonal1aux(Board, X, Y1, Pieceat).
       
/**********/
verifyWinDiagonal1aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y + 1,
        verifyWinDiagonal1aux2(Board, X, Y1, Pieceat). 

/**********/
verifyWinDiagonal1aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y + 1,
        verifyWinDiagonal1aux3(Board, X, Y1, Pieceat). 

/**********/
verifyWinDiagonal1aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y + 1,
        verifyWinDiagonal1aux4(Board, X, Y1, Pieceat). 

/***********/
verifyWinDiagonal1aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game!\n'),nl,nl.

verifyWinDiagonal1aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game!\n'),nl,nl.


/*****************************************************************************************************/


%/***********************************diagonal 2 -> direita baixo para cima *********************************************/

verifyWinDiagonal2(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        Y1 is Y - 1,
        returnPieceAt(Board, X, Y1, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinDiagonal2aux(Board, X, Y1, Pieceat).

/**********/
verifyWinDiagonal2aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y - 1,
        verifyWinDiagonal2aux2(Board, X, Y1, Pieceat). 

/**********/
verifyWinDiagonal2aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y - 1,
        verifyWinDiagonal2aux3(Board, X, Y1, Pieceat). 
/**********/
verifyWinDiagonal2aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y - 1,
        verifyWinDiagonal2aux4(Board, X, Y1, Pieceat). 

/***********/
verifyWinDiagonal2aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game!\n'),nl,nl.

verifyWinDiagonal2aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game!\n'),nl,nl.

/*****************************************************************************************************/


/***********************************diagonal 3 -> direita cima para baixo *********************************************/

verifyWinDiagonal3(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinDiagonal3aux(Board, X1, Y1, Pieceat).

/**********/
verifyWinDiagonal3aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y + 1,
        verifyWinDiagonal3aux2(Board, X1, Y1, Pieceat). 

/**********/
verifyWinDiagonal3aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y + 1,
        verifyWinDiagonal3aux3(Board, X1, Y1, Pieceat). 

/**********/
verifyWinDiagonal3aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y + 1,
        verifyWinDiagonal3aux4(Board, X1, Y1, Pieceat). 

/***********/
verifyWinDiagonal3aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game!\n'),nl,nl.

verifyWinDiagonal3aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game!\n'),nl,nl.

/*****************************************************************************************************/


/***********************************diagonal 4 -> esquerda baixo para cima *********************************************/
verifyWinDiagonal4(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinDiagonal4aux(Board, X1, Y1, Pieceat).
       
/**********/
verifyWinDiagonal4aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y - 1,
        verifyWinDiagonal4aux2(Board, X1, Y1, Pieceat). 

/**********/
verifyWinDiagonal4aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y - 1,
        verifyWinDiagonal4aux3(Board, X1, Y1, Pieceat). 

/**********/
verifyWinDiagonal4aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y - 1,
        verifyWinDiagonal4aux4(Board, X1, Y1, Pieceat). 

/***********/
verifyWinDiagonal4aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game!\n'),nl,nl.

verifyWinDiagonal4aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game!\n'),nl,nl.

/*****************************************************************************************************/
/****************************************************************************************************/
/**************************                                        ************************************/
/************************** diagonais parte de baixo do tabuleiro  *********************************/
/**************************                                        ************************************/
/******************************************************************************************************/
/******************************************************************************************************/


%/***********************************diagonal 1 -> esq peça em cima para baixo *********************************************/

verifyWinDiagonal11(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        Y1 is Y + 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinDiagonal11aux(Board, X1, Y1, Pieceat).

/**********/
verifyWinDiagonal11aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y + 1,
        verifyWinDiagonal11aux2(Board, X1, Y1, Pieceat). 

/**********/
verifyWinDiagonal11aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y + 1,
        verifyWinDiagonal11aux3(Board, X1, Y1, Pieceat). 

/**********/
verifyWinDiagonal11aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        Y1 is Y + 1,
        verifyWinDiagonal11aux4(Board, X1, Y1, Pieceat). 

/***********/
verifyWinDiagonal11aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game!\n'),nl,nl.

verifyWinDiagonal11aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game!\n'),nl,nl.

/*****************************************************************************************************/


%/***********************************diagonal 2 -> direita baixo para cima *********************************************/

verifyWinDiagonal22(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        Y1 is Y - 1,
        returnPieceAt(Board, X1, Y1, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinDiagonal22aux(Board, X1, Y1, Pieceat).
/**********/
verifyWinDiagonal22aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y - 1,
        verifyWinDiagonal22aux2(Board, X1, Y1, Pieceat). 

/**********/
verifyWinDiagonal22aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y - 1,
        verifyWinDiagonal22aux3(Board, X1, Y1, Pieceat). 


/**********/
verifyWinDiagonal22aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        Y1 is Y - 1,
        verifyWinDiagonal22aux4(Board, X1, Y1, Pieceat). 

/***********/
verifyWinDiagonal22aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game!\n',nl,nl).

verifyWinDiagonal22aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game!\n',nl,nl).

/*****************************************************************************************************/

/*****************************************************************************************************/



/***********************************diagonal 3 -> direita cima para baixo *********************************************/

verifyWinDiagonal33(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        Y1 is Y - 1,
        returnPieceAt(Board, X, Y1, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinDiagonal33aux(Board, X, Y1, Pieceat).
       
/**********/
verifyWinDiagonal33aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y - 1,
        verifyWinDiagonal33aux2(Board, X, Y1, Pieceat). 

/**********/
verifyWinDiagonal33aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y - 1,
        verifyWinDiagonal33aux3(Board, X, Y1, Pieceat). 

/**********/
verifyWinDiagonal33aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y - 1,
        verifyWinDiagonal33aux4(Board, X, Y1, Pieceat). 

/***********/
verifyWinDiagonal33aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game!\n',nl,nl).

verifyWinDiagonal33aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game!\n',nl,nl).

/*****************************************************************************************************/


/***********************************diagonal 4 -> esquerda baixo para cima *********************************************/

verifyWinDiagonal44(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        Y1 is Y - 1,
        returnPieceAt(Board, X, Y1, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinDiagonal44aux(Board, X, Y1, Pieceat).
       
/**********/
verifyWinDiagonal44aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y - 1,
        verifyWinDiagonal44aux2(Board, X, Y1, Pieceat). 

/**********/
verifyWinDiagonal44aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y - 1,
        verifyWinDiagonal44aux3(Board, X, Y1, Pieceat). 

/**********/
verifyWinDiagonal44aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Y1 is Y - 1,
        verifyWinDiagonal44aux4(Board, X, Y1, Pieceat). 

/***********/
verifyWinDiagonal44aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game!\n',nl,nl).

verifyWinDiagonal44aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game!\n'),nl,nl.


/*****************************************************************************************/
/*****************************************************************************************/
/********************************                             ****************************/
/********************************                             ****************************/
/******************************** verifical win na horizontal ****************************/
/********************************                             ****************************/
/********************************                             ****************************/
/*****************************************************************************************/
/*****************************************************************************************/

%horizontal esq to dir
verifyWinHorizontal1(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X + 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinHorizontal1aux(Board, X1, Y, Pieceat).

/**********/
verifyWinHorizontal1aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        verifyWinHorizontal1aux2(Board, X1, Y, Pieceat). 

/**********/
verifyWinHorizontal1aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        verifyWinHorizontal1aux3(Board, X1, Y, Pieceat). 

/**********/
verifyWinHorizontal1aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X + 1,
        verifyWinHorizontal1aux4(Board, X1, Y, Pieceat). 

/***********/
verifyWinHorizontal1aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game, left to right\n'),nl,nl.

verifyWinHorizontal1aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game, left to right\n'),nl,nl.


/*****************************************************************************************************/


/******************************** *************** ************************/

%horizontal dir to esq
verifyWinHorizontal2(Board, X,Y):- returnPieceAt(Board, X, Y, Pieceat), 
        X1 is X - 1,
        returnPieceAt(Board, X1, Y, PieceAtD1), 
        PieceAtD1 == Pieceat,
        PieceAtD1 \= ' ',
        verifyWinHorizontal2aux(Board, X1, Y, Pieceat).
       
/**********/
verifyWinHorizontal2aux(Board, X, Y, PieceAnterior):-  returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        verifyWinHorizontal2aux2(Board, X1, Y, Pieceat). 

/**********/
verifyWinHorizontal2aux2(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        verifyWinHorizontal2aux3(Board, X1, Y, Pieceat). 

/**********/
verifyWinHorizontal2aux3(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        X1 is X - 1,
        verifyWinHorizontal2aux4(Board, X1, Y, Pieceat). 

/***********/
verifyWinHorizontal2aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'W',
        write('\nPlayer 1 win the game, right to left\n'),nl,nl.

verifyWinHorizontal2aux4(Board, X, Y, PieceAnterior):- returnPieceAt(Board, X, Y, Pieceat), 
        PieceAnterior == Pieceat,
        Pieceat == 'B',
        write('\nPlayer 2 win the game, right to left\n'),nl,nl.



/*****************************************************************************************************/