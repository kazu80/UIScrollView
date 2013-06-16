//
//  ContentView.m
//  UIScrollView
//
//  Created by kazuyoshi kawakami on 13/06/14.
//  Copyright (c) 2013年 kazuyoshi kawakami. All rights reserved.
//

#import "ContentView.h"

@implementation ContentView
@synthesize image;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) setImage: (UIImage*) img
{
    image = img;
    
    // 画像を設定すると同時に再描画を行う
    [self setNeedsDisplay];
}

- (void) drawRect:(CGRect)rect
{
    [image drawInRect:rect];
}


@end
