//
//  Horse.h
//  ChineseChess
//
//  Created by Mr.Vu on 5/23/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Piece.h"

@interface Horse : Piece

- (BOOL)checkMoveWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn;

@end
