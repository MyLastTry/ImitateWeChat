//
//  BaseDataManager.m
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/21.
//

#import "BasePlistManager.h"

@implementation BasePlistManager
- (NSMutableArray *)datas {
    if (_datas == nil) {
        NSString *filePath = [[NSBundle mainBundle] pathForResource:_path ofType:@"plist"];
        _datas = [NSMutableArray arrayWithContentsOfFile:filePath];
    }
    return _datas;
}

- (NSMutableArray *)arrs {
    if (_arrs == nil) {
        _arrs = [NSMutableArray new];
    }
    return _arrs;
}

- (NSMutableArray *)parseDatas {
    NSMutableArray<NSMutableArray *> *arrs = [NSMutableArray new];
    return arrs;
}
@end
