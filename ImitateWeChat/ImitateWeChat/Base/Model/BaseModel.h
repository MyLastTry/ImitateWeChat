//
//  BaseModel.h
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseModel : NSObject <NSCoding>
@property (nonatomic, copy) NSString *titleIcon;
@property (nonatomic, copy) NSString *title;
@end

NS_ASSUME_NONNULL_END
