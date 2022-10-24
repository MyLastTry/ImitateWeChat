//
//  BaseNavigationController.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#import "BaseNavigationController.h"
#import "UIBarButtonItem+MainBar.h"
@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNavBar];
}

- (void)initNavBar {
    UINavigationBarAppearance *navBarAppearance = [[UINavigationBarAppearance alloc]init];
    [navBarAppearance configureWithOpaqueBackground];
    navBarAppearance.backgroundColor = NavGray;
    [navBarAppearance setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont systemFontOfSize:17.0f]}];
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[BaseNavigationController class]]];
    navBar.standardAppearance = navBarAppearance;
    navBar.scrollEdgeAppearance = navBarAppearance;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        
        UINavigationItem *vcBtnItem = [viewController navigationItem];
        vcBtnItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"user_icon_back" highImage:@"user_icon_back" andTitle:@""];
    }
    
    [super pushViewController:viewController animated:animated];
}

-(void)back
{
    [self popViewControllerAnimated:YES];
}

@end
