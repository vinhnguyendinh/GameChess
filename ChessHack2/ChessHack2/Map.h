//
//  Map.h
//  ChineseChess
//
//  Created by Mr.Vu on 5/22/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Piece.h"

@interface Map : NSObject

+ (Map *)shareInstance;
- (void)addPiece:(Piece *)piece;
- (void)removePiece:(Piece *)piece;
- (int)getCellWithRow:(NSInteger)row Column:(NSInteger)column;
@end
