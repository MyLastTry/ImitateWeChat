//
//  ProFileNormalManager.h
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/20.
//

#import <Foundation/Foundation.h>
#import "ProFileNormalModel.h"
#import "BasePlistManager.h"
NS_ASSUME_NONNULL_BEGIN

@interface ProFileNormalManager : BasePlistManager
+ (instancetype)shareInstance;
@end

NS_ASSUME_NONNULL_END
