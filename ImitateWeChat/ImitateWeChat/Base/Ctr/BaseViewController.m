//
//  BaseViewController.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#import "BaseViewController.h"
#import "PushCtrManager.h"
@interface BaseViewController ()
@property (nonatomic, strong) UIImageView *shadowImage;
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[PushCtrManager shared] addCtr:self];
    self.view.backgroundColor = NavGray;
    [self initUI];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [[PushCtrManager shared] removeCtr:self];
}

- (void)initUI {
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSArray *subViews = allSubviews(self.navigationController.navigationBar);
    for (UIView *view in subViews) {
        if ([view isKindOfClass:[UIImageView class]] && view.bounds.size.height<1){
            //实践后发现系统的横线高度为0.333
            self.shadowImage = (UIImageView *)view;
        }
    }
    self.shadowImage.hidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.shadowImage.hidden = NO;
}

NSArray *allSubviews(UIView *aView) {
    NSArray *results = [aView subviews];
    for (UIView *eachView in aView.subviews)
    {
        NSArray *subviews = allSubviews(eachView);
        if (subviews)
            results = [results arrayByAddingObjectsFromArray:subviews];
    }
    return results;
}

@end
