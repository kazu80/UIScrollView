//
//  ViewController.m
//  UIScrollView
//
//  Created by kazuyoshi kawakami on 13/06/14.
//  Copyright (c) 2013年 kazuyoshi kawakami. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;
@synthesize imageScrollView;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imageView = [[ContentView alloc] initWithFrame:CGRectMake(0, 0, 1024, 1024)];
    [imageScrollView addSubview:imageView];
    
    // スクロールビューのコンテンツサイズを設定する
    imageScrollView.contentSize = self.imageView.frame.size;
    
    // ズームの最大値、最小値を設定する
    imageScrollView.maximumZoomScale = 10.0;
    imageScrollView.minimumZoomScale = 0.3125;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openButton:(id)sender {
    
    // ハンドルから画像ファイルを読み込んでUIImageのオブジェクトを作成
    UIImage * image = [UIImage imageNamed:@"shibasaki.jpg"];
    
    // プロパティに設定
    imageView.image = image;
    
}

- (UIView *) viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return imageView;
}

@end
