//
//  UIBarButtonItem+MainBar.h
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (MainBar)
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage andTitle:(NSString *)title;
@end

NS_ASSUME_NONNULL_END
