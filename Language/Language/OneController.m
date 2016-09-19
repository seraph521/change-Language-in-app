//
//  OneController.m
//  国际化
//
//  Created by Seraphic on 16/6/22.
//  Copyright © 2016年 . All rights reserved.
//

#import "OneController.h"
#import "NSBundle+Language.h"
#import "AppDelegate.h"
#import "TabbarController.h"
@interface OneController ()

@end

@implementation OneController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    
    UILabel * label = [[UILabel alloc]init];
    label.frame = CGRectMake(150, 100, 200, 50);
    label.text = NSLocalizedString(@"main", nil);
    
    [self.view addSubview:label];
    
    
    
    
    UIButton * btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 150, 200, 50);
    [btn setTitle:NSLocalizedString(@"changeLanguage", nil) forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(changeLanguage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
}



-(void)changeLanguage{

    
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    
    NSString *language = [def valueForKey:@"userLanguage"];
    NSLog(@"-=---------%@",language);
    
    if([language isEqualToString:@"zh-Hans"]){
    
        [NSBundle setLanguage:@"en"];
        [def setObject:@"en" forKey:@"userLanguage"];

    }else if([language isEqualToString:@"en"])
    {
        [NSBundle setLanguage:@"zh-Hans"];
        [def setObject:@"zh-Hans" forKey:@"userLanguage"];

    }else{
        [def setObject:@"zh-Hans" forKey:@"userLanguage"];
        
    }
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    AppDelegate * delegate = [UIApplication sharedApplication].delegate;
    TabbarController * tabbar = [[TabbarController alloc] init];
    delegate.window.rootViewController = tabbar;
    [delegate.window makeKeyAndVisible];
    
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
