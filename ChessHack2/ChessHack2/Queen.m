//
//  Queen.m
//  ChessHack2
//
//  Created by Nguyen Duc Tai on 5/28/16.
//  Copyright © 2016 TechKid. All rights reserved.
//

#import "Queen.h"
#import "BoardConfig.h"

@implementation Queen

- (BOOL)checkMoveWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn; {
    [super checkMoveWithRow:nextRow Column:nextColumn];
    BOOL canMove = NO;
    /* Move vertical */
    if(nextColumn == self.column && nextRow != self.row) {
        canMove = [self checkBarrierWithPoint1:self.row Point2:nextRow Direction:DIRECTION_VERTICAL];
    }
    /* Move horizontal */
    else if(nextRow == self.row && nextColumn != self.self.column) {
        canMove = [self checkBarrierWithPoint1:self.column Point2:nextColumn Direction:DIRECTION_HORIZONTAL];
    }
    /* Move slash */
    else if(nextRow != self.row && nextColumn != self.self.column) {
        canMove = [self checkBarrierWithPoint1:self.column Point2:nextColumn Direction:DIRECTION_HORIZONTAL];
    }
    return canMove;
}

- (BOOL)checkBarrierWithPoint1:(NSInteger)point1 Point2:(NSInteger)point2 Direction:(NSString *)direction{
    int start = 0;
    int end = 0;
    if(point1 < point2){
        start = (int)point1;
        end = (int)point2;
    }else{
        start = (int)point2;
        end = (int)point1;
    }
    
    
    for(int i = start + 1; i < end; i++){
        if([self getCellFromBoard:i Column:self.column] != PIECE_EMPTY && [direction isEqualToString:DIRECTION_VERTICAL]) {
            return NO;
        }
        else if([self getCellFromBoard:self.row Column:i] != PIECE_EMPTY && [direction isEqualToString:DIRECTION_HORIZONTAL]){
            return NO;
        }
        else if([self getCellFromBoard:i Column:i] != PIECE_EMPTY && [direction isEqualToString:DIRECTION_HORIZONTAL]){
            return NO;
        }
        
    }
    
    return YES;
}

@end
