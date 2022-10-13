//
//  FindController.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#import "FindController.h"

static NSString *FindNormalCellId = @"FindNormalCellId";

@interface FindController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation FindController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)initUI {
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviHeight + StatusH, ScreenWidth, ScreenHeight - TabbarHeight) style:UITableViewStylePlain];
    [_tableView registerClass:FindNormalCell.class forCellReuseIdentifier:FindNormalCellId];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    if (@available(iOS 11.0, *)){
        _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        _tableView.estimatedRowHeight = 0;
        _tableView.estimatedSectionHeaderHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0;
    }

    [self.view addSubview:_tableView];
}

#pragma mark --------------------UITableViewDataSource--------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FindNormalCell *cell = (FindNormalCell *)[tableView dequeueReusableCellWithIdentifier:FindNormalCellId];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0 ||
        section == 4 ||
        section == 6) {
        return 1;
    }
    return 2;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 7;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 54;
}

@end
