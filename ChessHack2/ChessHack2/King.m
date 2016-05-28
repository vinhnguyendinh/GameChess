//
//  Vua.m
//  ChineseChess
//
//  Created by Mr.Vu on 5/22/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "King.h"
#import "BoardConfig.h"

@implementation King

- (id) initAdvisorWithX:(NSInteger)x Y:(NSInteger)y MinY:(NSInteger)minY MaxY:(NSInteger)maxY Color:(PlayerColor)color; {
    self = [super initWithX:x Y:y Color:color];
    if(self) {
        self.maxY = maxY;
        self.minY = minY;
        self.minX = MIN_X;
        self.maxY = MAX_X;
    }
    
    return self;
}




@end
