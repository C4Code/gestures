//
//  GestureShape.m
//  gestures
//
//  Created by Travis Kirton on 12-05-09.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "GestureShape.h"

@implementation GestureShape {
    BOOL canMove;
}

-(id)init {
    self = [super init];
    if(self != nil) {
        [self setup];
        canMove = NO;
    }
    return self;
}

-(void)setup {
    [self addGesture:SWIPEUP name:@"swipeUpGesture" action:@"swipedUp"];
    [self addGesture:SWIPEDOWN name:@"swipeDownGesture" action:@"swipedDown"];
    [self addGesture:SWIPELEFT name:@"swipeLeftGesture" action:@"swipedLeft"];
    [self addGesture:SWIPERIGHT name:@"swipeRightGesture" action:@"swipedRight"];
    [self addGesture:PAN name:@"panGesture" action:@"move:"];
//    [self addGesture:TAP name:@"singleTapGesture" action:@"tap"];
//    [self addGesture:LONGPRESS name:@"longPressGesture" action:@"longPress"];
}

-(void)swipedUp {
    C4Log(@"swiped Up");
}
-(void)swipedDown {
    C4Log(@"swiped Down");
}
-(void)swipedLeft {
    C4Log(@"swiped Left");
}
-(void)swipedRight {
    C4Log(@"swiped Right");
}
-(void)move:(id)sender {
    if(canMove) {
        self.animationDuration = 0.05f;
        UIPanGestureRecognizer *pan = (UIPanGestureRecognizer *)sender;
        CGPoint panPoint = [pan translationInView:self];

        if(panPoint.x < 10) {
            self.center = CGPointMake(self.center.x+panPoint.x, self.center.y+panPoint.y);
        } else {
            canMove = NO;
            self.animationDuration = 1.0f;
            self.center = CGPointMake(384, 512);
        }
        [pan setTranslation:CGPointZero inView:self];
    }
}
-(void)tap {
    C4Log(@"single tap");
}

-(void)longPress {
    C4Log(@"long press");
    canMove = YES;
}
-(void)touchesEnded {
    canMove = YES;
    C4Log(@"ended");
}
@end
