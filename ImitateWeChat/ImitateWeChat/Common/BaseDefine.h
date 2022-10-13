//
//  BaseDefine.h
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/12.
//

#ifndef BaseDefine_h
#define BaseDefine_h

/**弱指针*/
#define WeakSelf(weakSelf)  __weak __typeof(&*self)weakSelf = self;
#endif /* BaseDefine_h */
