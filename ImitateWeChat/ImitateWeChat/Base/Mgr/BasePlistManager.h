//
//  BaseDataManager.h
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BasePlistManager : NSObject
@property (nonatomic, strong) NSString *path;
@property (nonatomic, strong) NSMutableArray *datas;
@property (nonatomic, strong) NSMutableArray *arrs;
- (NSMutableArray *)parseDatas;
@end

NS_ASSUME_NONNULL_END
