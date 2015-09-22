//
//  Util.h
//
//  Created by Rubens Machion on 6/22/15.
//  Copyright (c) 2015 Rubens Machion. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Util : NSObject

/** This method return a UIView First Responder of recursive form */
+ (UIView *) findFirstResponder:(UIView *) _view;

@end
