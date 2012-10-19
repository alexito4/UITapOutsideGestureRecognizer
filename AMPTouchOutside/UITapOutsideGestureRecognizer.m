//
//  UITapOutsideGestureRecognizer.m
//  AMPTouchOutside
//
//  Created by Alejandro Martinez on 05/07/12.
//  Copyright (c) 2012 Alejandro Martinez. All rights reserved.
//

#import "UITapOutsideGestureRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

@interface UITapOutsideGestureRecognizer ()
@property (nonatomic, strong) UIView *trueView;
@end

@implementation UITapOutsideGestureRecognizer

- (id)initWithTarget:(id)target action:(SEL)action view:(UIView *)view {
    self = [super initWithTarget:target action:action];
    if (self) {
        //[view.window addGestureRecognizer:self];
        self.trueView = view;
    }
    return self;
}

- (void)reset {
    [self setState:UIGestureRecognizerStateEnded];
    [super reset];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    CGPoint point = [[touches anyObject] locationInView:self.trueView];
    BOOL inView = [self.trueView pointInside:point withEvent:nil];
    if (!inView) {
        [self setState:UIGestureRecognizerStatePossible];
    }
    
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    CGPoint point = [[touches anyObject] locationInView:self.trueView];
    BOOL inView = [self.trueView pointInside:point withEvent:nil];
    if (!inView && self.state == UIGestureRecognizerStatePossible) {
        [self setState:UIGestureRecognizerStateRecognized];
    } else {
        [self setState:UIGestureRecognizerStateFailed];
    }
    
    [super touchesEnded:touches withEvent:event];
}

@end
