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

@interface ProFileDataManager : BasePlistManager
+ (instancetype)shareInstance;
- (NSMutableArray *)parseInformationDatas;
@end

NS_ASSUME_NONNULL_END
