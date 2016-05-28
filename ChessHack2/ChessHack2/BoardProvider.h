//
//  MapProvider.h
//  ChineseChess
//
//  Created by Mr.Vu on 5/23/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerColor.h"

typedef enum PositionState {
    POSITION_EMPTY,
    POSITION_BLACK,
    POSITION_RED
} PositionState;

@protocol BoardProvider <NSObject>

- (PositionState) getPieceColorAt: (NSInteger)x y:(NSInteger)y;

@end
