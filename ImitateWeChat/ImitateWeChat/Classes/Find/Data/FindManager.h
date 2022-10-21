//
//  FindManager.h
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/21.
//

#import <Foundation/Foundation.h>
#import "BasePlistManager.h"
#import "FindModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface FindManager : BasePlistManager
+ (instancetype)shareInstance;
@end

NS_ASSUME_NONNULL_END
