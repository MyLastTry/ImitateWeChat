//
//  BaseNavigationController.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#import "BaseNavigationController.h"

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
    [super pushViewController:viewController animated:animated];
    if (self.viewControllers.count > 1) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
}

@end
