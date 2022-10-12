//
//  PushCtrManager.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#import "PushCtrManager.h"

static PushCtrManager *mCtrManager = nil;
@interface PushCtrManager ()
@property (nonatomic, strong) NSMutableArray *Ctrs;
@end

@implementation PushCtrManager
+ (instancetype)shared {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mCtrManager = [[PushCtrManager alloc] init];
    });
    return mCtrManager;
}

- (void)addCtr:(BaseViewController *)controller {
    if (controller) {
        [_Ctrs addObject:controller];
    }
}

- (void)removeCtr:(BaseViewController *)controller {
    if (controller) {
        [_Ctrs removeObject:controller];
    }
}

- (void)deallocAll {
    for (BaseViewController *ctr in _Ctrs) {
        [ctr.navigationController popViewControllerAnimated:YES];
    }
}
@end
