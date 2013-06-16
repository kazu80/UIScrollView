//
//  CustomScrollView.m
//  UIScrollView
//
//  Created by kazuyoshi kawakami on 13/06/17.
//  Copyright (c) 2013年 kazuyoshi kawakami. All rights reserved.
//

#import "CustomScrollView.h"

@implementation CustomScrollView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.delegate = self;
    }
    return self;
}

- (void) awakeFromNib
{
    self.delegate = self;
}

- (void)setDelegate:(id<UIScrollViewDelegate>)delegate
{
    if ( delegate == self ) super.delegate = delegate;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    // 最初のサブビューをズーム対象のビューとして返す
    return [[self subviews] objectAtIndex:0];
}

- (BOOL)touchesShouldBegin:(NSSet *)touches withEvent:(UIEvent *)event inContentView:(UIView *)view
{
    // タップ数をチェックする
    UITouch * touch = [touches anyObject];
    int taps = [touch tapCount];
    
    // ダブルタップの場合
    if ( taps == 2 ){
        // 現在のズームスケールを得る
        float scale = self.zoomScale;
        if ( scale > 1.0 ) {
            // 等倍よりも大きい場合、等倍に戻す
            [self setZoomScale: 1.0 animated:YES];
        }
        else {
            // タップされたポイントにズーム
            CGPoint touchPt = [touch locationInView:view];
            [self zoomToRect:CGRectMake(touchPt.x, touchPt.y, 1, 1) animated:YES];
        }
        return NO;
    }
    else {
        return YES;
    }
}


@end
