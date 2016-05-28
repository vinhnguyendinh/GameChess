//
//  Queen.h
//  ChessHack2
//
//  Created by Nguyen Duc Tai on 5/28/16.
//  Copyright © 2016 TechKid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Piece.h"

@interface Queen : Piece

- (BOOL)checkMoveWithRow:(NSInteger)nextRow Column:(NSInteger)nextColumn;

@end
