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
    imageScrollView.contentSize = self.imageView.frame.size;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openButton:(id)sender {
    
    // ハンドルから画像ファイルを読み込んでUIImageのオブジェクトを作成
    UIImage * image = [UIImage imageNamed:@"image"];
    
    // プロパティに設定
    imageView.image = image;
    
}
@end
