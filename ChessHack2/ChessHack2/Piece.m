//
//  Piece.m
//  ChineseChess
//
//  Created by Mr.Vu on 5/22/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Piece.h"
#import "BoardProvider.h"
#import "BoardConfig.h"
#import "Map.h"

@implementation Piece


- (instancetype)initWithX:(NSInteger)x Y:(NSInteger)y Color:(PlayerColor) color ; {
    
    self = [super init];
    if(self) {
        self.row = x;
        self.column = y;
        self.playerColor = color;
        self.minX = 0;
        self.maxX = BOARD_COLUMN - 1;
        self.minY = 0;
        self.maxY = BOARD_ROW - 1;
        
        [self addPieceToBoard];
    }
    
    return self;
}

- (void)addPieceToBoard; {
    [[Map shareInstance]addPiece:self];
}

- (void)removePieceFromBoard; {
    [[Map shareInstance]removePiece:self];
}
- (int)getCellFromBoard:(NSInteger)row Column:(NSInteger)column; {
    return [[Map shareInstance]getCellWithRow:row Column:column];
}


- (BOOL)checkMoveWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn; {
    
    /*  Check if next position is out of board */
    if(nextRow < self.minX  || nextRow > self.maxX) {
        return NO;
    }
    if(nextColumn < self.minY || nextColumn > self.maxY) {
        return NO;
    }
    if(nextRow == self.row && nextColumn == self.column) {
        return NO;
    }
    
    
    if(_playerColor == RED && [self getCellFromBoard:nextRow Column:nextColumn] == 1) {
        return NO;
    }
    
    if(_playerColor == BLACK && [self getCellFromBoard:nextRow Column:nextColumn] == 2) {
        return NO;
    }
    
    return YES;
}

- (void)moveToRow:(NSInteger)row Column:(NSInteger)column; {
    /* before move remove old position in board, after move add new position to board */
    if([self checkMoveWithRow:row Column:column]) {
        [self removePieceFromBoard];
        self.row = row;
        self.column = column;
        [self addPieceToBoard];
    }
}


@end
