//
//  UIView+LayoutConstraint.h
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/13.
//

#import <UIKit/UIKit.h>
#import "make.h"
typedef void (^makeConstraints)(make * _Nullable make);

NS_ASSUME_NONNULL_BEGIN

@interface UIView (LayoutConstraint)
- (void)makeConstraints:(makeConstraints)make;
@end

NS_ASSUME_NONNULL_END
