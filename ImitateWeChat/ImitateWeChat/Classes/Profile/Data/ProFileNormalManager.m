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
    NSMutableArray<NSMutableArray *> *arrs = [NSMutableArray new];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ProfileData" ofType:@"plist"];
    NSMutableArray *datas = [NSMutableArray arrayWithContentsOfFile:path];
    for (NSMutableArray *arr in datas) {
        NSMutableArray<ProFileNormalModel *> *proFileNormalArr = [NSMutableArray new];
        for (NSMutableDictionary *dic in arr) {
            ProFileNormalModel *model = [ProFileNormalModel new];
            model.titleIcon = [dic objectForKey:@"titleIcon"];
            model.title = [dic objectForKey:@"title"];
            [proFileNormalArr addObject:model];
        }
        [arrs addObject:proFileNormalArr];
    }
    return arrs;
}

@end
