//
//  Map.m
//  ChineseChess
//
//  Created by Mr.Vu on 5/22/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Map.h"
#import "BoardConfig.h"



@implementation Map

static id _instance = nil;
int board[BOARD_ROW][BOARD_COLUMN];

+ (Map *)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if(_instance == nil) {
            _instance = [[Map alloc]init];
        }
    });
    
    return _instance;
}

-(instancetype)init {
    self = [super init];
    
    if (self) {
        for(int i = 0; i < BOARD_ROW; i++) {
            for(int j = 0; j < BOARD_COLUMN; j++) {
                board[i][j] = PIECE_EMPTY;
            }
        }
    }
    
    return self;
}

- (void)addPiece:(Piece *)piece; {
    /*  if piece is WHITE add 1 to board, if piece is BLACK add 2 to board  */
    if(piece) {
        if(piece.playerColor == WHITE) {
            board[piece.row][piece.column] = PIECE_WHITE;
        }
        else if(piece.playerColor == BLACK) {
            board[piece.row][piece.column] = PIECE_BLACK;
        }
    }
}

- (void)removePiece:(Piece *)piece; {
    if(piece) {
        board[piece.row][piece.column] = PIECE_EMPTY;
    }
}

- (int)getCellWithRow:(NSInteger)row Column:(NSInteger)column;{
   
    return board[row][column];
  
}


@end
