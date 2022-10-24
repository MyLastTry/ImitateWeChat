//
//  ContactViewController.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#import "ContactController.h"

static NSString *FindNormalCellId = @"FindNormalCellId";

@interface ContactController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UISearchBar *searchBar;
@property (nonatomic, strong) NSMutableArray *firstSectionDatas;
/** 字母*/
@property (strong, nonatomic) NSMutableArray *A_ZArray;
/** 字母A_Z 之后*/
@property (strong, nonatomic) NSMutableArray *sub_A_ZArray;
@end

@implementation ContactController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)initData {
    
}

- (void)initUI {
    self.searchBar.frame = CGRectMake(0, 0, ScreenWidth, 60);
    UIView *backView = [[UIView alloc]initWithFrame:CGRectMake(0, NaviHeight, ScreenWidth, 60)];
    [backView setBackgroundColor:NavGray];
    [backView addSubview:self.searchBar];
    _searchBar.translucent = YES;
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0,
                                                              NaviHeight,
                                                              ScreenWidth,
                                                              ScreenHeight - TabbarHeight - NaviHeight - StatusH)
                                             style:UITableViewStyleGrouped];
    _tableView.tableHeaderView = backView;
    [_tableView registerClass:FindNormalCell.class forCellReuseIdentifier:FindNormalCellId];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    if (@available(iOS 11.0, *)){
        _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        _tableView.estimatedRowHeight = 0;
        _tableView.estimatedSectionHeaderHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0;
    }
    _tableView.backgroundColor = NavGray;
    [self.view addSubview:_tableView];
}

#pragma mark --------------------UITableViewDataSource--------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FindNormalCell *cell = (FindNormalCell *)[tableView dequeueReusableCellWithIdentifier:FindNormalCellId];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    if (indexPath.section == 0) {
        cell.title.text = self.firstSectionDatas[indexPath.row];
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 5;
    }
    return 2;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 7;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0.001;
    }
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 54;
}

- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return self.A_ZArray;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"";
    }
    return self.A_ZArray[section - 1];
}

#pragma mark --------------------Construction Properties--------------------
-(UISearchBar *)searchBar {
    if (_searchBar == nil) {
        _searchBar = [[UISearchBar alloc]init];
//        _searchBar.delegate = self;
        _searchBar.searchBarStyle = UISearchBarStyleMinimal;
        _searchBar.barStyle = UIBarStyleDefault;
        _searchBar.placeholder = @"请输入搜索的内容";
        _searchBar.showsCancelButton = NO;
    }
    return _searchBar;
}

-(NSMutableArray *)A_ZArray {
    if (_A_ZArray == nil) {
        _A_ZArray = [NSMutableArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z",@"#", nil];
    }
    return _A_ZArray;
}

-(NSMutableArray *)sub_A_ZArray {
    if (_sub_A_ZArray == nil) {
        _sub_A_ZArray = [NSMutableArray array];
    }
    return _sub_A_ZArray;
}

- (NSMutableArray *)firstSectionDatas {
    if (_firstSectionDatas == nil) {
        _firstSectionDatas = [NSMutableArray arrayWithObjects:NSLocalizedString(@"New Friends", nil), NSLocalizedString(@"Chats Only Friends", nil), NSLocalizedString(@"Group Chats", nil), NSLocalizedString(@"Tags", nil), NSLocalizedString(@"Official Accounts", nil),nil];
    }
    return _firstSectionDatas;
}

@end
