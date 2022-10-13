//
//  BaseViewController.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#import "BaseViewController.h"
#import "PushCtrManager.h"
@interface BaseViewController ()

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

@end
