//
//  ViewController.m
//  TBTGestureLock
//
//  Created by 李永强 on 14/12/8.
//  Copyright (c) 2014年 tongbaotu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self autoLayoutDevice];
    UIImageView  * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [imageView setImage:[UIImage imageNamed:@"gesture_background.png"]];
    [self.view addSubview:imageView];
    self.lockView = [[KKGestureLockView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:self.lockView];
    self.view.backgroundColor = [UIColor whiteColor];
    self.lockView.normalGestureNodeImage = [UIImage imageNamed:@"gesture_node_normal.png"];
    self.lockView.selectedGestureNodeImage = [UIImage imageNamed:@"gesture_node_selected.png"];
    self.lockView.lineColor = [[UIColor redColor] colorWithAlphaComponent:0.3];
    self.lockView.lineWidth = 10;
    self.lockView.delegate = self;
    self.lockView.contentInsets = UIEdgeInsetsMake(self.top, self.left, self.bottom, self.right);
    self.forgetButton = [[UIButton alloc]initWithFrame:CGRectMake(self.left , self.view.frame.size.height -  60, (self.view.frame.size.width - self.left * 2) /  2 ,44)];
    self.forgetButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft ;
    [self.forgetButton setTitle:@"忘记密码" forState:UIControlStateNormal];
    self.customView = [[UILabel alloc]initWithFrame:CGRectMake(self.left, 80, 240 , 44)];
    self.customView.textAlignment = NSTextAlignmentCenter ;
    self.customView.textColor = [UIColor whiteColor];
    self.customView.text = @"1347847874867";
    [self.view addSubview:self.customView];
        self.otherUserButton = [[UIButton alloc]initWithFrame:CGRectMake(self.left  + (self.view.frame.size.width - self.left * 2) /  2 , self.view.frame.size.height -  60, (self.view.frame.size.width - self.left * 2) /  2 ,44)];
      [self.otherUserButton setTitle:@"其他用户登录" forState:UIControlStateNormal];
     self.otherUserButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight ;
    [self.view addSubview:self.forgetButton];
    [self.view addSubview:self.otherUserButton];
    // Do any additional setup after loading the view, typically from a nib.
}
 -(void)autoLayoutDevice
{
    CGFloat screenWithd =  [[UIScreen mainScreen]bounds].size.width ;
    CGFloat screenHeight =  [[UIScreen mainScreen]bounds].size.height ;
    if (screenWithd == 414.0f) {
        self.top = 230;
        self.left = 50 ;
        self.bottom = 150 ;
        self.right = 50 ;
    } else if (screenWithd == 375.0f)
    {
        self.top = 230 ;
        self.left = 40 ;
        self.bottom = 140 ;
        self.right = 40 ;
    } else {
        self.top = 170 ;
        self.left = 30 ;
        self.bottom = 130 ;
        self.right = 30 ;
        if (screenHeight == 480) {
            self.bottom = 80 ;
                self.top = 130 ;
        }
    }
}

#pragma mark -- getureLockView delegate
- (void)gestureLockView:(KKGestureLockView *)gestureLockView didBeginWithPasscode:(NSString *)passcode{
    NSLog(@"%@",passcode);
}

- (void)gestureLockView:(KKGestureLockView *)gestureLockView didEndWithPasscode:(NSString *)passcode{
    NSLog(@"%@",passcode);
}

@end
