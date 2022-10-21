//
//  FindManager.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/21.
//

#import "FindManager.h"
static FindManager *mFindManager = nil;
@implementation FindManager
+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mFindManager = [FindManager new];
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
