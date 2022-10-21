//
//  ProFileNormalManager.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/20.
//

#import "ProFileNormalManager.h"

static ProFileNormalManager* mProFileNormalManager = nil;
@implementation ProFileNormalManager

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mProFileNormalManager = [ProFileNormalManager new];
    });
    return mProFileNormalManager;
}

- (NSMutableArray *)parseDatas {
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

@end
