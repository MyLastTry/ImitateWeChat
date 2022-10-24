//
//  FindManager.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/21.
//

#import "FindDataManager.h"
static FindDataManager *mFindManager = nil;
@implementation FindDataManager
+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mFindManager = [FindDataManager new];
    });
    return mFindManager;
}

- (NSMutableArray *)parseDatas {
    self.path = @"FindData";
    for (NSMutableArray *arr in self.datas) {
        NSMutableArray<FindModel *> *findArr = [NSMutableArray new];
        for (NSMutableDictionary *dic in arr) {
            FindModel *model = [FindModel new];
            model.titleIcon = [dic objectForKey:@"titleIcon"];
            model.title = [dic objectForKey:@"title"];
            [findArr addObject:model];
        }
        [self.arrs addObject:findArr];
    }
    return self.arrs;
}
@end
