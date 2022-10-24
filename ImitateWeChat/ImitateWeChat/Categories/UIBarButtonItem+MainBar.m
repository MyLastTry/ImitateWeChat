//
//  UIBarButtonItem+MainBar.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/24.
//

#import "UIBarButtonItem+MainBar.h"

@implementation UIBarButtonItem (MainBar)


/**
 *  创建一个item
 *
 *  @param target    点击item后调用哪个对象的方法
 *  @param action    点击item后调用target的哪个方法
 *  @param image     图片
 *  @param highImage 高亮的图片
 *
 *  @return 创建完的item
 */
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage andTitle:(NSString *)title
{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    ///设置图片
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    
    if (title) {
        
        [button setTitle:title forState:UIControlStateNormal];
        
        ///设置tabbar文字的大小
        button.titleLabel.font = [UIFont systemFontOfSize:15];
        
        ///设置tabbar文字的不同状态颜色
        
    }
    
    ///设置按钮的尺寸为背景图片的尺寸+文字大小
    button.width = button.currentImage.size.width + [title sizeWithFont:button.titleLabel.font maxSize:CGSizeMake(MAXFLOAT, MAXFLOAT)].width;
    
    button.height = button.currentImage.size.height;
    
    return [[UIBarButtonItem alloc]initWithCustomView:button];
    
    
    
}
@end
