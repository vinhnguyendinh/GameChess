//
//  Bishop.m
//  ChineseChess
//
//  Created by Vinh Nguyen Dinh on 5/28/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Bishop.h"
#import "BoardConfig.h"

@implementation Bishop

- (BOOL)checkMoveWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn
{
    [super checkMoveWithRow:nextRow Column:nextColumn];
    BOOL canMove = NO;
    
    if( labs(self.row - nextRow == self.column - nextColumn )) {
        /* Move diagonal up */
        if( nextRow < self.row ) {
            canMove = [self checkBarrierWithRow:nextRow Column:nextColumn Direction:DIRECTION_DIAGONAL_UP];
        }
        /* Move diagonal down */
        else if( nextColumn > self.column ) {
            canMove = [self checkBarrierWithRow:nextRow Column:nextColumn Direction:DIRECTION_DIAGONAL_DOWN];
        }
    }
    
    return canMove;
}

- (BOOL)checkBarrierWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn Direction:(NSString *)direction
{
    if([direction isEqualToString:DIRECTION_DIAGONAL_UP]) {
        
        int row = (int)self.row - 1;
        
        if(nextColumn > self.column) {
            for(int i = (int)self.column + 1; i < nextColumn; i++) {
                if([self getCellFromBoard:row-- Column:i] != PIECE_EMPTY) {
                    return NO;
                }
            }
        }
        
        else if(nextColumn < self.column) {
            for(int i = (int)self.column - 1; i > nextColumn; i--) {
                if([self getCellFromBoard:row-- Column:i] != PIECE_EMPTY) {
                    return NO;
                }
            }
        }
    }
    
    else if([direction isEqualToString:DIRECTION_DIAGONAL_DOWN]) {
        
        int row = (int)self.row + 1;
        
        if(nextColumn > self.column) {
            for(int i = (int)self.column + 1; i < nextColumn; i++) {
                if([self getCellFromBoard:row++ Column:i] != PIECE_EMPTY) {
                    return NO;
                }
            }
        }
        
        else if(nextColumn < self.column) {
            for(int i = (int)self.column - 1; i > nextColumn; i--) {
                if([self getCellFromBoard:row++ Column:i] != PIECE_EMPTY) {
                    return NO;
                }
            }
        }

    }
    
    return YES;
}

@end
