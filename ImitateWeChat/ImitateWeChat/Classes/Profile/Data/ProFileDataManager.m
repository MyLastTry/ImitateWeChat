//
//  ProFileNormalManager.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/20.
//

#import "ProFileDataManager.h"

static ProFileDataManager* mProFileNormalManager = nil;
@implementation ProFileDataManager

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mProFileNormalManager = [ProFileDataManager new];
    });
    return mProFileNormalManager;
}

- (NSMutableArray *)parseDatas {
    [self.arrs removeAllObjects];
    self.path = @"ProfileData";
    for (NSMutableArray *arr in self.datas) {
        NSMutableArray<ProFileNormalModel *> *proFileNormalArr = [NSMutableArray new];
        for (NSMutableDictionary *dic in arr) {
            ProFileNormalModel *model = [ProFileNormalModel new];
            model.titleIcon = [dic objectForKey:@"titleIcon"];
            model.title = [dic objectForKey:@"title"];
            [proFileNormalArr addObject:model];
        }
        [self.arrs addObject:proFileNormalArr];
    }
    return self.arrs;
}

- (NSMutableArray *)parseInformationDatas {
    [self.arrs removeAllObjects];
    self.path = @"ProInformationData";
    for (NSMutableArray *arr in self.datas) {
        NSMutableArray<ProFileNormalModel *> *proFileNormalArr = [NSMutableArray new];
        for (NSMutableDictionary *dic in arr) {
            ProFileNormalModel *model = [ProFileNormalModel new];
            model.titleIcon = [dic objectForKey:@"titleIcon"];
            model.title = [dic objectForKey:@"title"];
            [proFileNormalArr addObject:model];
        }
        [self.arrs addObject:proFileNormalArr];
    }
    return self.arrs;
}

@end
