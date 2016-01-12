//
//  YKSDrugShuoMingViewController.m
//  YueKangSong
//
//  Created by 范 on 15/9/9.
//  Copyright (c) 2015年 YKS. All rights reserved.
//

#import "YKSDrugShuoMingViewController.h"

@interface YKSDrugShuoMingViewController ()<UITextViewDelegate>
@property (strong, nonatomic)  UITextView *shuoMingText;

@end

@implementation YKSDrugShuoMingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCRENN_HEIGHT);
    _shuoMingText=[[UITextView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCRENN_HEIGHT)];
   
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeSystem];
    
    
    btn.frame=_shuoMingText.frame;

    [_shuoMingText addSubview:btn];
    
    [self.view addSubview:_shuoMingText];
    
    self.shuoMingText.text =  _shuoMingDic[@"gmanual"];
//    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
//    paragraphStyle.lineSpacing = 10;// 字体的行间距
//    NSDictionary *attributes = @{
//                                 NSFontAttributeName:[UIFont systemFontOfSize:15],
//                                 NSParagraphStyleAttributeName:paragraphStyle
//                                 };
//    
   //设置偏移量
   _shuoMingText.layoutManager.allowsNonContiguousLayout = NO;
    //设置竖直滚动
    _shuoMingText.showsVerticalScrollIndicator=NO;
    _shuoMingText.bounces=NO;
    
}

#pragma mark UITextView  代理方法



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end