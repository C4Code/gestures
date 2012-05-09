//
//  C4WorkSpace.m
//  gestures
//
//  Created by Travis Kirton on 12-05-09.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4WorkSpace.h"
#import "GestureShape.h"
@implementation C4WorkSpace

-(void)setup {
    GestureShape *g = [GestureShape new];
    [g ellipse:CGRectMake(284, 412, 200, 200)];
    [self.canvas addShape:g];
}

@end
