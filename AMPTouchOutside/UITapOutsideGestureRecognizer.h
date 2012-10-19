//
//  UITapOutsideGestureRecognizer.h
//  AMPTouchOutside
//
//  Created by Alejandro Martinez on 05/07/12.
//  Copyright (c) 2012 Alejandro Martinez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITapOutsideGestureRecognizer : UIGestureRecognizer

- (id)initWithTarget:(id)target action:(SEL)action view:(UIView *)view;

@end
