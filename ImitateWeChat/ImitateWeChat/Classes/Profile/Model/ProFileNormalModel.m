//
//  ProFileNormalModel.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/20.
//

#import "ProFileNormalModel.h"

@implementation ProFileNormalModel
- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.titleIcon forKey:@"titleIcon"];
    [coder encodeObject:self.title forKey:@"title"];
}
- (nullable instancetype)initWithCoder:(NSCoder *)coder {
    self.titleIcon = [coder decodeObjectForKey:@"titleIcon"];
    self.title = [coder decodeObjectForKey:@"title"];
    return self;
}
@end
