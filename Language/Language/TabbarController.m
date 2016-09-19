//
//  TabbarController.m
//  国际化
//
//  Created by Seraphic on 16/6/22.
//  Copyright © 2016年 . All rights reserved.
//

#import "TabbarController.h"
#import"OneController.h"
#import "TwoViewController.h"
@interface TabbarController ()

@end

@implementation TabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSubController];
}






-(void)addSubController{

     OneController * one = [[OneController alloc] init];
     TwoViewController * two = [[TwoViewController alloc] init];

    
    one.tabBarItem.title = NSLocalizedString(@"main", nil);
    two.tabBarItem.title = NSLocalizedString(@"me", nil);
    
    [self addChildViewController:one];
    [self addChildViewController:two];
    
    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
