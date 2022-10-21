//
//  ProfileController.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#import "ProfileController.h"
#import "ProFileNormalManager.h"
static NSString *ProfileHeaderCellId = @"ProfileHeaderCellId";
static NSString *ProfileNormalCellId = @"ProfileNormalCellId";

@interface ProfileController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *normalCellDatas;
@end

@implementation ProfileController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)initUI {
    self.view.backgroundColor = BlackgroundColorWhite;
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 57, ScreenWidth, ScreenHeight) style:UITableViewStyleGrouped];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [_tableView registerClass:ProfileHeaderCell.class forCellReuseIdentifier:ProfileHeaderCellId];
    [_tableView registerClass:ProfieNormalCell.class forCellReuseIdentifier:ProfileNormalCellId];
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
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        ProfileHeaderCell *cell = (ProfileHeaderCell *)[tableView dequeueReusableCellWithIdentifier:ProfileHeaderCellId];
        cell.iconImageView.image = [UIImage imageNamed:@"homepage_selected"];
        return [self getAttributedCell:cell];
    }
    ProfieNormalCell *cell = (ProfieNormalCell *)[tableView dequeueReusableCellWithIdentifier:ProfileNormalCellId];
    if (indexPath.row == [tableView numberOfRowsInSection:indexPath.section] - 1) {
        [cell.separator setHidden:YES];
    }
    ProFileNormalModel *model = self.normalCellDatas[indexPath.section][indexPath.row];
    cell.title.text = model.title;
    cell.titleIcon.image = [UIImage imageNamed:model.titleIcon];
    return [self getAttributedCell:cell];
}

- (nonnull UITableViewCell *)getAttributedCell:(UITableViewCell *)cell {
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    cell.backgroundColor = BlackgroundColorWhite;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0.0001;
    }
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 2)];
    headerView.backgroundColor = NavGray;
    return headerView;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *footView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 10)];
    footView.backgroundColor = NavGray;
    return footView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return ScreenHeight / 4;
    }
    return 54;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 2) {
        return 4;
    }
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

#pragma mark --------------------UITableViewDelegate--------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.section == 0) {
        InformationController *vc = [[InformationController alloc]init];
        [self.navigationController pushViewController:vc animated:true];
    }
}

#pragma mark --------------------getset--------------------
- (NSMutableArray *)normalCellDatas {
    if (_normalCellDatas == nil) {
        _normalCellDatas = [[ProFileNormalManager shareInstance] parseDatas];
    }
    return _normalCellDatas;
}
@end
