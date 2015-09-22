//
//  Util.m
//
//  Created by Rubens Machion on 6/22/15.
//  Copyright (c) 2015 Rubens Machion. All rights reserved.
//

#import "Util.h"

@implementation Util

/** Retorna a quantidade de linhas em um UITextView */
+ (int) qtdLinhasTextView:(UITextView *) _textView {
    
    NSLayoutManager *layoutManager = [_textView layoutManager];
    unsigned numberOfLines, index, numberOfGlyphs = (int)[layoutManager numberOfGlyphs];
    NSRange lineRange;
    for (numberOfLines = 0, index = 0; index < numberOfGlyphs; numberOfLines++){
        (void) [layoutManager lineFragmentRectForGlyphAtIndex:index
                                               effectiveRange:&lineRange];
        index = (int)NSMaxRange(lineRange);
    }
    
    return numberOfLines;
}

/** This method return a UIView First Responder of recursive form */
+ (UIView *) findFirstResponder:(UIView *) _view {
    
    UIView *retorno;
    
    for (id subView in _view.subviews) {
        
        if ([subView isFirstResponder])
            return subView;
        
        if ([subView isKindOfClass:[UIView class]]) {
            UIView *v = subView;
            
            if ([v.subviews count] > 0) {
                retorno = [self findFirstResponder:v];
                if ([retorno isFirstResponder]) {
                    return retorno;
                }
            }
        }
    }
    
    return retorno;
}

@end
