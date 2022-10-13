//
//  UIDevice+Addition.h
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (Addition)
/// 顶部安全区高度
+ (CGFloat)safeDistanceTop;

/// 底部安全区高度
+ (CGFloat)safeDistanceBottom;

/// 顶部状态栏高度（包括安全区）
+ (CGFloat)statusBarHeight;

/// 导航栏高度
+ (CGFloat)navigationBarHeight;

/// 状态栏+导航栏的高度
+ (CGFloat)navigationFullHeight;

/// 底部导航栏高度
+ (CGFloat)tabBarHeight;

/// 底部导航栏高度（包括安全区）
+ (CGFloat)tabBarFullHeight;

@end

NS_ASSUME_NONNULL_END
