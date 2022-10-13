//
//  BaseDefine.h
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#ifndef BaseDefine_h
#define BaseDefine_h

/**循环引用*/
#define WEAK_SELF(weak)  __weak typeof(weak) weakSelf = weak
#define STRONG_SELF(weakSelf) __strong typeof(weakSelf) strongSelf = weakSelf
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;


#endif /* BaseDefine_h */
