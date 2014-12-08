//
//  ViewController.h
//  TBTGestureLock
//
//  Created by 李永强 on 14/12/8.
//  Copyright (c) 2014年 tongbaotu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KKGestureLockView.h"
@interface ViewController : UIViewController<KKGestureLockViewDelegate>

@property (strong,nonatomic) UILabel * customView  ;
@property (assign,nonatomic) CGFloat top ;
@property (assign,nonatomic) CGFloat left ;
@property (assign,nonatomic) CGFloat bottom;
@property (assign,nonatomic) CGFloat right ;
@property (strong,nonatomic)  UIButton * forgetButton ;

@property (strong,nonatomic)  UIButton * otherUserButton;

@property (strong,nonatomic) KKGestureLockView * lockView ;

@end

