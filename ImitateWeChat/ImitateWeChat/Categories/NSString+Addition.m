//
//  NSString+Addition.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/24.
//

#import "NSString+Addition.h"

@implementation NSString (Addition)
- (CGSize)sizeWithText:(UIFont *)font maxW:(CGFloat)maxW{
    NSMutableDictionary * dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = font;
    CGSize maxsize = CGSizeMake(maxW, MAXFLOAT);
    return  [self boundingRectWithSize:maxsize options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
}

#pragma mark 计算字符串大小
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *dict = @{NSFontAttributeName: font};
    CGSize textSize = [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
    return textSize;
}
@end
