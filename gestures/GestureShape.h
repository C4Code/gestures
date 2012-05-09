//
//  GestureShape.h
//  gestures
//
//  Created by Travis Kirton on 12-05-09.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4Shape.h"

@interface GestureShape : C4Shape
-(void)tap;
-(void)tapDouble;
-(void)tapTriple;
-(void)tapTwoFingers;
-(void)tapDoubleTwoFingers;
-(void)longPress;
@end
