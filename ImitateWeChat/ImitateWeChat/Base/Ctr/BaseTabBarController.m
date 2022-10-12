//
//  BaseTabBarController.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#import "BaseTabBarController.h"
#import "BaseNavigationController.h"
#import "WeChatController.h"
#import "ContactController.h"
#import "FindController.h"
#import "ProfileController.h"
@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addChildViewControllers];
    [self.tabBar setBackgroundColor:UIColorFromRGB(0xF6F6F7)];
}

/// 添加子控制器
- (void)addChildViewControllers {
    WeChatController *weChatVc = [[WeChatController alloc] init];
    weChatVc.title = @"微信";
    BaseNavigationController *weChatNavVc = [[BaseNavigationController alloc] initWithRootViewController:weChatVc];
    weChatNavVc.tabBarItem.image = [UIImage imageNamed:@"homepage"];
    weChatNavVc.tabBarItem.selectedImage = [UIImage imageNamed:@"homepage_selected"];
    
    ContactController *contactVc = [[ContactController alloc] init];
    contactVc.title = @"通讯录";
    BaseNavigationController *contactNavVc = [[BaseNavigationController alloc] initWithRootViewController:contactVc];
    contactNavVc.tabBarItem.image = [UIImage imageNamed:@"contacts"];
    contactNavVc.tabBarItem.selectedImage = [UIImage imageNamed:@"contacts_selected"];
    
    FindController *findVc = [[FindController alloc] init];
    findVc.title = @"发现";
    BaseNavigationController *findNavVc = [[BaseNavigationController alloc] initWithRootViewController:findVc];
    findNavVc.tabBarItem.image = [UIImage imageNamed:@"phone"];
    findNavVc.tabBarItem.selectedImage = [UIImage imageNamed:@"phone_selected"];
    
    ProfileController *profileVc = [[ProfileController alloc] init];
    profileVc.title = @"我的";
    BaseNavigationController *profileNavVc = [[BaseNavigationController alloc] initWithRootViewController:profileVc];
    profileNavVc.tabBarItem.image = [UIImage imageNamed:@"massage"];
    profileNavVc.tabBarItem.selectedImage = [UIImage imageNamed:@"massage_selected"];
    
    
    self.viewControllers = @[weChatNavVc,contactNavVc,findNavVc,profileNavVc];
}

@end
