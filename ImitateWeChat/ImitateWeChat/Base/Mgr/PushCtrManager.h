//
//  PushCtrManager.h
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#import <Foundation/Foundation.h>
#import "BaseViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface PushCtrManager : NSObject
+ (instancetype)shared;

- (void)addCtr:(BaseViewController *)controller;

- (void)removeCtr:(BaseViewController *)controller;

- (void)deallocAll;
@end

NS_ASSUME_NONNULL_END
