//
//  Piece.h
//  ChineseChess
//
//  Created by Mr.Vu on 5/22/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerColor.h"
#import "BoardProvider.h"


@interface Piece : NSObject
@property NSInteger row;
@property NSInteger column;
/*
@property NSInteger minX;
@property NSInteger maxX;
@property NSInteger minY;
@property NSInteger maxY;
*/
@property (nonatomic, weak) id<BoardProvider> boardProvider;
@property PlayerColor playerColor;


- (instancetype)initWithX:(NSInteger)x Y:(NSInteger)y Color:(PlayerColor) color; 

- (BOOL)checkMoveWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn;

- (void)moveToRow:(NSInteger)row Column:(NSInteger)column;

- (void)addPieceToBoard;
- (void)removePieceFromBoard;
- (int)getCellFromBoard:(NSInteger)row Column:(NSInteger)column;

@end
