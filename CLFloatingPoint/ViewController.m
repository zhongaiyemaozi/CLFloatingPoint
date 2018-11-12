//
//  ViewController.m
//  CLFloatingPoint
//
//  Created by bx_zhen on 2018/11/12.
//  Copyright © 2018 yemaozi. All rights reserved.
//

#import "ViewController.h"
#import "CLSpreadButton.h"

@interface ViewController ()

@property (nonatomic, strong) CLSpreadButton *spreadButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CLSpreadButton *spreadButton  = [[CLSpreadButton alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    spreadButton.itemsNum = 4;
    [self.view addSubview:spreadButton];
    self.spreadButton = spreadButton;
    self.spreadButton.spreadButtonOpenViscousity = YES;
    spreadButton.normalImage = [UIImage imageNamed:@"fload_1190"];
    spreadButton.selImage = [UIImage imageNamed:@"fload_1190"];
    spreadButton.images = @[@"float_user_bg",@"float_server_bg",@"float_gift_bg",@"float_ic_action_cancelball"];
    [spreadButton spreadButtonDidClickItemAtIndex:^(NSUInteger index) {
        NSLog(@"%ld",index);
        if (index==3) {
            spreadButton.hidden = YES;
        }
    }];
    
    
}


@end
