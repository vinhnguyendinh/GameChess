//
//  Bishop.h
//  ChineseChess
//
//  Created by Vinh Nguyen Dinh on 5/28/16.
//  Copyright © 2016 Mr.Vu. All rights reserved.
//

#import "Piece.h"

@interface Bishop : Piece

- (BOOL)checkMoveWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn;

@end
