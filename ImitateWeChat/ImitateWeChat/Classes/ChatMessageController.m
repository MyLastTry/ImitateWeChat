//
//  ChatMessageController.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/24.
//

#import "ChatMessageController.h"

@interface ChatMessageController () 
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ChatMessageController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)initUI {
    [self creatTableView];
}

- (void)creatTableView {
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviHeight, ScreenWidth, ScreenHeight - NaviHeight - 100) style:UITableViewStyleGrouped];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:_tableView];
    if (@available(iOS 11.0, *)){
        _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        self.tableView.estimatedRowHeight = 0;
        self.tableView.estimatedSectionHeaderHeight = 0;
        self.tableView.estimatedSectionFooterHeight = 0;
    }
}


@end
