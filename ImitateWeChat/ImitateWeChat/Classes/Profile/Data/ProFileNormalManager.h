//
//  ProFileNormalManager.h
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/20.
//

#import <Foundation/Foundation.h>
#import "ProFileNormalModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface ProFileNormalManager : NSObject 
+ (instancetype)shareInstance;
- (NSMutableArray *)parseDatas;
@end

NS_ASSUME_NONNULL_END
